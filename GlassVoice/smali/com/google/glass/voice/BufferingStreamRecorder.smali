.class public Lcom/google/glass/voice/BufferingStreamRecorder;
.super Ljava/io/InputStream;
.source "BufferingStreamRecorder.java"


# instance fields
.field private final circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final readMonitor:Ljava/lang/Object;

.field private final recordExecutor:Ljava/util/concurrent/ExecutorService;

.field private final recordRunnable:Ljava/lang/Runnable;

.field private final underlyingStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 7
    .param p1, "underlyingStream"    # Ljava/io/InputStream;
    .param p2, "bufferSizeBytes"    # I
    .param p3, "bytesPerRead"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, -0x8

    const-string v2, "recordThread"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    iput-object p1, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;

    .line 35
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    .line 36
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v1, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    move-object v3, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/glass/voice/BufferingStreamRecorder;->createRecordThreadRunnable(Lcom/google/glass/logging/FormattingLogger;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Ljava/lang/Object;Lcom/google/glass/util/CircularByteBuffer;I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method private static final createRecordThreadRunnable(Lcom/google/glass/logging/FormattingLogger;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Ljava/lang/Object;Lcom/google/glass/util/CircularByteBuffer;I)Ljava/lang/Runnable;
    .locals 8
    .param p0, "logger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p1, "recordExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "isRecording"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "underlyingStream"    # Ljava/io/InputStream;
    .param p4, "readMonitor"    # Ljava/lang/Object;
    .param p5, "circularBuffer"    # Lcom/google/glass/util/CircularByteBuffer;
    .param p6, "bytesPerRead"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/google/glass/voice/BufferingStreamRecorder$1;

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/BufferingStreamRecorder$1;-><init>(Lcom/google/glass/logging/FormattingLogger;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Lcom/google/glass/util/CircularByteBuffer;Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Recording has already been stopped."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 130
    monitor-enter p0

    const/4 v2, 0x0

    .line 131
    .local v2, "totalRead":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_1

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No longer recording from underlying input stream; returning -1."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    const/4 v2, -0x1

    .line 150
    .end local v2    # "totalRead":I
    :cond_1
    monitor-exit p0

    return v2

    .line 137
    .restart local v2    # "totalRead":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    add-int v4, p2, v2

    sub-int v5, p3, v2

    .line 138
    invoke-static {p1, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 139
    .local v1, "readOnThisPass":I
    add-int/2addr v2, v1

    .line 140
    if-ge v2, p3, :cond_0

    .line 142
    :try_start_2
    iget-object v4, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 144
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "readOnThisPass":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startRecording()V
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-void
.end method
