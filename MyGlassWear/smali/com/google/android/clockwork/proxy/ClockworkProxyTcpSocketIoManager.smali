.class public Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;
.super Ljava/lang/Object;
.source "ClockworkProxyTcpSocketIoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;
    }
.end annotation


# static fields
.field private static final READER_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "ClockworkProxyTcp"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mConnectingChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

.field private mListenChannel:Ljava/nio/channels/ServerSocketChannel;

.field private final mPendingCloseChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private mSocketSelector:Ljava/nio/channels/Selector;

.field private final mWritingChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;)V
    .locals 1
    .param p1, "delegator"    # Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    .line 59
    return-void
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 346
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doClose(Ljava/nio/channels/SocketChannel;)V

    .line 347
    return-void
.end method

.method private closePendingChannels()Z
    .locals 5

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SocketChannel;>;"
    iget-object v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 205
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 208
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doClose(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 205
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 210
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doAccept(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 279
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    .line 281
    .local v0, "listenChannel":Ljava/nio/channels/ServerSocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 282
    .local v1, "socketChannel":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 284
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 286
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 288
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    invoke-interface {v2, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;->doAccept(Ljava/nio/channels/SocketChannel;)V

    .line 289
    const-string v2, "ClockworkProxyTcp"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "ClockworkProxyTcp"

    const-string v3, "Accepted connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void
.end method

.method private doClose(Ljava/nio/channels/SocketChannel;)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    invoke-interface {v1, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;->doClose(Ljava/nio/channels/SocketChannel;)V

    .line 335
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 336
    const-string v1, "ClockworkProxyTcp"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "ClockworkProxyTcp"

    const-string v2, "Closed channel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ClockworkProxyTcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doConnect(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 265
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->close(Ljava/nio/channels/SelectionKey;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 273
    const-string v1, "ClockworkProxyTcp"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "ClockworkProxyTcp"

    const-string v2, "Channel connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doRead(Ljava/nio/channels/SelectionKey;)I
    .locals 5
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 295
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 296
    .local v1, "socketChannel":Ljava/nio/channels/SocketChannel;
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 298
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 299
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 300
    const-string v2, "ClockworkProxyTcp"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v2, "ClockworkProxyTcp"

    const-string v3, "Channel has reached end-of-stream, closing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->close(Ljava/nio/channels/SelectionKey;)V

    .line 312
    :cond_1
    :goto_0
    return v0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 308
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v1, v3}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;->doRead(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    .line 309
    const-string v2, "ClockworkProxyTcp"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    const-string v2, "ClockworkProxyTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doWrite(Ljava/nio/channels/SelectionKey;)I
    .locals 5
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 318
    .local v1, "socketChannel":Ljava/nio/channels/SocketChannel;
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mDelegator:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;

    invoke-interface {v2, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;->doWrite(Ljava/nio/channels/SocketChannel;)I

    move-result v0

    .line 319
    .local v0, "bytesWritten":I
    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    and-int/lit8 v2, v2, -0x5

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 322
    :cond_0
    const-string v2, "ClockworkProxyTcp"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    if-eqz v0, :cond_2

    .line 324
    const-string v2, "ClockworkProxyTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    :goto_0
    return v0

    .line 326
    :cond_2
    const-string v2, "ClockworkProxyTcp"

    const-string v3, "No bytes written: losing interest in channel writeability"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerConnectingChannels()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SocketChannel;>;"
    iget-object v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 218
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 221
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 218
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 223
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    const-string v3, "ClockworkProxyTcp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const-string v3, "ClockworkProxyTcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connecting channels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private registerWritingChannels()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SocketChannel;>;"
    iget-object v5, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    monitor-enter v5

    .line 234
    :try_start_0
    iget-object v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 236
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 239
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    iget-object v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 240
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 236
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 244
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    const-string v4, "ClockworkProxyTcp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const-string v4, "ClockworkProxyTcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " writing channels"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 120
    return-void
.end method

.method public closeChannel(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mPendingCloseChannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 68
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disconnectAllPendingSockets(Ljava/nio/channels/SelectableChannel;)V
    .locals 3
    .param p1, "listenChannel"    # Ljava/nio/channels/SelectableChannel;

    .prologue
    .line 253
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 254
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 257
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    .line 261
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    return-void
.end method

.method public registerConnectingChannel(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mConnectingChannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 77
    :cond_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reportWritingChannel(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mWritingChannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 86
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public runSelectLoop()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 123
    const-string v8, "ClockworkProxyTcp"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    const-string v8, "ClockworkProxyTcp"

    const-string v9, "Tcp relaying thread started, entering into select loop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mRunning:Z

    if-eqz v8, :cond_d

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, "workPerformed":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 129
    .local v4, "selectStartTime":J
    iget-object v8, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v8}, Ljava/nio/channels/Selector;->select()I

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 132
    .local v2, "selectElapsedTime":J
    iget-object v8, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 133
    .local v6, "selectionKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 135
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    .line 136
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 141
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doConnect(Ljava/nio/channels/SelectionKey;)V

    .line 143
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 144
    const/4 v7, 0x1

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 146
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doAccept(Ljava/nio/channels/SelectionKey;)V

    .line 147
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 148
    const/4 v7, 0x1

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doRead(Ljava/nio/channels/SelectionKey;)I

    move-result v8

    if-nez v8, :cond_4

    .line 153
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 155
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->doWrite(Ljava/nio/channels/SelectionKey;)I

    move-result v8

    if-nez v8, :cond_6

    .line 160
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 162
    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    .line 164
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "ClockworkProxyTcp"

    const-string v9, "Error during operating socket channels"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_8
    invoke-direct {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->registerConnectingChannels()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 173
    const/4 v7, 0x1

    .line 175
    :cond_9
    invoke-direct {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->registerWritingChannels()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 176
    const/4 v7, 0x1

    .line 178
    :cond_a
    invoke-direct {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closePendingChannels()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 179
    const/4 v7, 0x1

    .line 182
    :cond_b
    const-string v8, "ClockworkProxyTcp"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 183
    if-eqz v7, :cond_c

    .line 184
    const-string v8, "ClockworkProxyTcp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select completed in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_c
    const-string v8, "ClockworkProxyTcp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select completed in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "resulted in no work performed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v10}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v2    # "selectElapsedTime":J
    .end local v4    # "selectStartTime":J
    .end local v6    # "selectionKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v7    # "workPerformed":Z
    :cond_d
    iget-object v8, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, v8}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->disconnectAllPendingSockets(Ljava/nio/channels/SelectableChannel;)V

    .line 194
    const-string v8, "ClockworkProxyTcp"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 195
    const-string v8, "ClockworkProxyTcp"

    const-string v9, "Loop exited"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_e
    return-void
.end method

.method public setup(I)V
    .locals 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mRunning:Z

    .line 100
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    .line 102
    if-lez p1, :cond_0

    .line 103
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 104
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 105
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 106
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mListenChannel:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 108
    const-string v1, "ClockworkProxyTcp"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "ClockworkProxyTcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening for TCP sockets at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "ClockworkProxyTcp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "ClockworkProxyTcp"

    const-string v1, "Shutdown requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mRunning:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->mSocketSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 96
    :cond_1
    return-void
.end method
