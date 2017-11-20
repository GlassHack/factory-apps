.class public abstract Lcom/google/android/clockwork/proxy/ClockworkProxy;
.super Ljava/lang/Object;
.source "ClockworkProxy.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;
.implements Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;
.implements Lcom/google/android/wearable/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;,
        Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;
    }
.end annotation


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DEST_ADDR:Ljava/lang/String; = "dstaddr"

.field public static final KEY_DEST_PORT:Ljava/lang/String; = "dstport"

.field public static final KEY_SEQNUM:Ljava/lang/String; = "seqnum"

.field public static final KEY_SRC_ADDR:Ljava/lang/String; = "srcaddr"

.field public static final KEY_SRC_PORT:Ljava/lang/String; = "srcport"

.field public static final KEY_STREAMID:Ljava/lang/String; = "streamid"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final OTHER_NODE:Ljava/lang/String; = "othernode"

.field private static final TAG:Ljava/lang/String; = "ClockworkProxy"


# instance fields
.field private mActiveStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            "Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

.field protected final mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

.field private mIdToStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTcpPort:I

.field private mTcpServingThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/google/android/wearable/gmsclient/WearableClient;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/google/android/wearable/gmsclient/WearableClient;
    .param p3, "tcpPort"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mIdToStreams:Ljava/util/HashMap;

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    .line 69
    iput p3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpPort:I

    .line 70
    new-instance v1, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-direct {v1, p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;-><init>(Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;)V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ClockworkProxyController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v1, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;-><init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    .line 75
    return-void
.end method

.method protected static makeTcpDataMap(II[BJ)Lcom/google/android/gms/wearable/DataMap;
    .locals 2
    .param p0, "type"    # I
    .param p1, "streamId"    # I
    .param p2, "data"    # [B
    .param p3, "seqnum"    # J

    .prologue
    .line 197
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 198
    .local v0, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v1, "streamid"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v1, "seqnum"

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 201
    if-eqz p2, :cond_0

    .line 202
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    .line 204
    :cond_0
    return-object v0
.end method

.method public static makeUdpDataMap([B[BI[BI)Lcom/google/android/gms/wearable/DataMap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "srcAddress"    # [B
    .param p2, "srcPort"    # I
    .param p3, "dstAddress"    # [B
    .param p4, "dstPort"    # I

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 210
    .local v0, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v1, "srcaddr"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    .line 212
    const-string v1, "srcport"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "dstaddr"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    .line 214
    const-string v1, "dstport"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    .line 216
    return-object v0
.end method

.method private stopTcpRelayingThread()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->shutdown()V

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 142
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->cleanup()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :goto_0
    const-string v1, "ClockworkProxy"

    const-string v2, "Clockwork proxy TCP relaying thread stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    .line 151
    :cond_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ClockworkProxy"

    const-string v2, "Failed to join TCP relaying thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ClockworkProxy"

    const-string v2, "Failed to clean up status of TCP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addStream(Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;)V
    .locals 3
    .param p1, "stream"    # Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mIdToStreams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doAccept(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 389
    return-void
.end method

.method public doClose(Ljava/nio/channels/SocketChannel;)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->removeStream(Ljava/nio/channels/SocketChannel;)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    move-result-object v0

    .line 283
    .local v0, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getOtherNodeClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "ClockworkProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed TCP Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->sendCloseToOtherNode(I)Z

    .line 286
    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setOtherNodeClosed()V

    .line 288
    :cond_0
    return-void
.end method

.method public doRead(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x3

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->getStream(Ljava/nio/channels/SocketChannel;)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    move-result-object v6

    .line 252
    .local v6, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    if-eqz v6, :cond_3

    .line 253
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v3, v0, [B

    .line 254
    .local v3, "data":[B
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNextSentSeqNum()J

    move-result-wide v4

    .line 257
    .local v4, "seqNumOfThisPacket":J
    const/4 v1, 0x5

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->sendTcpDataToOtherNode(II[BJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    const-string v0, "ClockworkProxy"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "ClockworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRead: failed to forward TCP packets to other node.  Closing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closeChannel(Ljava/nio/channels/SocketChannel;)V

    .line 276
    .end local v3    # "data":[B
    .end local v4    # "seqNumOfThisPacket":J
    :cond_1
    :goto_0
    return-void

    .line 265
    .restart local v3    # "data":[B
    .restart local v4    # "seqNumOfThisPacket":J
    :cond_2
    invoke-virtual {v6, v4, v5}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setLastSentSeqNum(J)V

    .line 266
    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNumBytesSent()J

    move-result-wide v0

    array-length v2, v3

    int-to-long v7, v2

    add-long/2addr v0, v7

    invoke-virtual {v6, v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setNumBytesSent(J)V

    .line 267
    const-string v0, "ClockworkProxy"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "ClockworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRead: forwarded TCP packets to other node through stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNumBytesSent()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total, seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v3    # "data":[B
    .end local v4    # "seqNumOfThisPacket":J
    :cond_3
    const-string v0, "ClockworkProxy"

    const-string v1, "doRead: unexpected inactive stream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected doStartService()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->startTcpRelayingThread()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->startUdpRelayingThread()V

    .line 156
    return-void
.end method

.method protected doStopService()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->stopTcpRelayingThread()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->stopUdpRelayingThread()V

    .line 161
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 163
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mIdToStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doWrite(Ljava/nio/channels/SocketChannel;)I
    .locals 8
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->getStream(Ljava/nio/channels/SocketChannel;)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    move-result-object v2

    .line 364
    .local v2, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    const/4 v0, -0x1

    .line 365
    .local v0, "bytesWritten":I
    if-nez v2, :cond_1

    .line 366
    const-string v3, "ClockworkProxy"

    const-string v4, "Ignoring write for invalid stream id."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    :try_start_0
    const-string v3, "ClockworkProxy"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    const-string v3, "ClockworkProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing now to stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->writeNow()I

    move-result v0

    .line 373
    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->hasPendingWrites()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getOtherNodeClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "ClockworkProxy"

    const-string v4, "Closing Stream %d: the other node closed and all writes flushed."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v3, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closeChannel(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ClockworkProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write data to stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v3, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closeChannel(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 4
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 394
    const-string v2, "Looper"

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active Streams: count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 399
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    .line 401
    .local v0, "conduit":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    invoke-virtual {p1, v0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    .end local v0    # "conduit":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 406
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 407
    return-void
.end method

.method public ensureProxyStartedIfConnected()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;-><init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 411
    return-void
.end method

.method protected getStream(I)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mIdToStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getStream(Ljava/nio/channels/SocketChannel;)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    monitor-exit v1

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleCloseFromOtherNode(Lcom/google/android/gms/wearable/DataMap;)V
    .locals 8
    .param p1, "requestData"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 334
    const-string v2, "streamid"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, "streamId":I
    const-string v2, "ClockworkProxy"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "ClockworkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as requested by the other node"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->getStream(I)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    move-result-object v0

    .line 339
    .local v0, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    if-nez v0, :cond_2

    .line 340
    const-string v2, "ClockworkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring close for invalid stream id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getOtherNodeClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setOtherNodeClosed()V

    .line 346
    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->hasPendingWrites()Z

    move-result v2

    if-nez v2, :cond_4

    .line 347
    const-string v2, "ClockworkProxy"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const-string v2, "ClockworkProxy"

    const-string v3, "Stream %d has no pending writes. Close now."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closeChannel(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 353
    :cond_4
    const-string v2, "ClockworkProxy"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "ClockworkProxy"

    const-string v3, "Stream %d has pending writes. Close later."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleWriteFromOtherNode(Lcom/google/android/gms/wearable/DataMap;)V
    .locals 16
    .param p1, "requestData"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 291
    const-string v8, "streamid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 292
    .local v7, "streamId":I
    const-string v8, "seqnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 293
    .local v4, "incomingSeqNum":J
    const-string v8, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/wearable/DataMap;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 294
    .local v1, "data":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->getStream(I)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    move-result-object v6

    .line 295
    .local v6, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    if-nez v6, :cond_1

    .line 296
    const-string v8, "ClockworkProxy"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    const-string v8, "ClockworkProxy"

    const-string v9, "Stream %d received %d from other node, seqNum %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    array-length v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    const-string v8, "ClockworkProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring write for invalid stream id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->sendCloseToOtherNode(I)Z

    .line 331
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNextExpectedReceivedSeqNum()J

    move-result-wide v2

    .line 309
    .local v2, "expectedSeqNum":J
    cmp-long v8, v4, v2

    if-eqz v8, :cond_2

    .line 310
    const-string v8, "ClockworkProxy"

    const-string v9, "Stream %d received %d from other node, %d total, seqNum %d, expected %d MISMATCH!!! Closing stream %d"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    array-length v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNumBytesReceived()J

    move-result-wide v12

    array-length v14, v1

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->closeChannel(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v6, v4, v5}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setLastReceivedSeqNum(J)V

    .line 319
    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNumBytesReceived()J

    move-result-wide v8

    array-length v10, v1

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->setNumBytesReceived(J)V

    .line 320
    const-string v8, "ClockworkProxy"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 321
    const-string v8, "ClockworkProxy"

    const-string v9, "Stream %d received %d from other node, %d total, seqNum %d, expected %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    array-length v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getNumBytesReceived()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->appendWrite(Ljava/nio/ByteBuffer;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v6}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->reportWritingChannel(Ljava/nio/channels/SocketChannel;)V

    goto/16 :goto_0
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 0
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 87
    return-void
.end method

.method protected removeStream(Ljava/nio/channels/SocketChannel;)Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;

    .line 241
    .local v0, "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mActiveStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mIdToStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getStreamId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    monitor-exit v2

    return-object v0

    .line 246
    .end local v0    # "stream":Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected sendCloseToOtherNode(I)Z
    .locals 6
    .param p1, "streamId"    # I

    .prologue
    .line 190
    const-string v0, "ClockworkProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "ClockworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending close message to other node: stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->sendTcpDataToOtherNode(II[BJ)Z

    move-result v0

    return v0
.end method

.method public sendTcpDataToOtherNode(II[BJ)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "streamId"    # I
    .param p3, "data"    # [B
    .param p4, "seqNum"    # J

    .prologue
    .line 182
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->makeTcpDataMap(II[BJ)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->sendToOtherNode(Lcom/google/android/gms/wearable/DataMap;)Z

    move-result v0

    return v0
.end method

.method public sendToOtherNode(Lcom/google/android/gms/wearable/DataMap;)Z
    .locals 7
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    const/4 v2, 0x0

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/WearableClient;->getRpcManager()Lcom/google/android/wearable/gmsclient/MessageManager;

    move-result-object v3

    const-string v4, "othernode"

    sget-object v5, Lcom/google/android/clockwork/proxy/ClockworkProxyProtocol;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/wearable/gmsclient/MessageManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 171
    .local v1, "result":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    .line 177
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ClockworkProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception sendToOtherNode: type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v3, "ClockworkProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception sendToOtherNode: type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startProxyService()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "ClockworkProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "ClockworkProxy"

    const-string v1, "Send stop and then start request to handler thread by startProxyService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->sendEmptyMessage(I)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method protected startTcpRelayingThread()V
    .locals 3

    .prologue
    .line 110
    const-string v1, "ClockworkProxy"

    const-string v2, "Start clockwork proxy TCP serving thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TCP relaying thread has already been started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    iget v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpPort:I

    invoke-virtual {v1, v2}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->setup(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    new-instance v1, Lcom/google/android/clockwork/proxy/ClockworkProxy$1;

    const-string v2, "ClockworkProxyTcpRelayingThread"

    invoke-direct {v1, p0, v2}, Lcom/google/android/clockwork/proxy/ClockworkProxy$1;-><init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    .line 130
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mTcpServingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 131
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ClockworkProxy"

    const-string v2, "Failed to setup TCP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract startUdpRelayingThread()V
.end method

.method public stopProxyService()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "ClockworkProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ClockworkProxy"

    const-string v1, "Send stop request to handler thread by stopProxyService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mHandler:Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method

.method protected abstract stopUdpRelayingThread()V
.end method
