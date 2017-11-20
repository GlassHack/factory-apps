.class public Lcom/google/glass/bluetooth/AsyncBluetoothSocket;
.super Ljava/lang/Object;
.source "AsyncBluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;,
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;,
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isClosed:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerThread:Ljava/lang/Thread;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private final writeQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final writerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    .line 46
    new-instance v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    .line 47
    new-instance v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    .line 48
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 50
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    .line 85
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 87
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "writerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 72
    new-array v0, p3, [B

    .line 73
    .local v0, "dataCopy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
