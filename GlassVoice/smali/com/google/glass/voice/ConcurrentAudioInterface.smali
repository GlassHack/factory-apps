.class public Lcom/google/glass/voice/ConcurrentAudioInterface;
.super Ljava/lang/Object;
.source "ConcurrentAudioInterface.java"


# instance fields
.field private errorLogged:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

.field private open:Z

.field private final referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/android/os/PowerManager$WakeLock;)V
    .locals 2
    .param p1, "nativeAudioInterface"    # Lcom/google/glass/voice/NativeAudioInterfaceWrapper;
    .param p2, "wakeLock"    # Lcom/google/glass/android/os/PowerManager$WakeLock;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    iput-object p1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    .line 41
    iput-object p2, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 42
    return-void
.end method

.method private checkReferenceCount(I)V
    .locals 0
    .param p1, "references"    # I

    .prologue
    .line 53
    if-lez p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->ensureOpen()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->ensureClosed()V

    goto :goto_0
.end method

.method private declared-synchronized close()V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Native audio interface already closed; ignoring close() call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeClose()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closed audio interface."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->setOpen(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureClosed()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->close()V

    .line 70
    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->open()V

    .line 64
    :cond_0
    return-void
.end method

.method private declared-synchronized open()V
    .locals 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Native audio interface already open; ignoring open() call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeOpen()V

    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Opened audio interface."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->setOpen(Z)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setOpen(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Duplicate setOpen call"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 118
    iput-boolean p1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 122
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_1
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 128
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method


# virtual methods
.method public declared-synchronized acquireLock()V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->checkReferenceCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-nez v1, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Native audio interface not open; ignoring read() call; no further warnings will be printed until the interface is reopened."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 94
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z

    .line 96
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeRead([B)I

    move-result v0

    .line 97
    .local v0, "bytesRead":I
    if-gtz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed read from native audio interface, assuming the interface is now closed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/voice/ConcurrentAudioInterface;->setOpen(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseLock()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->checkReferenceCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
