.class final Lcom/google/glass/voice/BufferingStreamRecorder$1;
.super Ljava/lang/Object;
.source "BufferingStreamRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BufferingStreamRecorder;->createRecordThreadRunnable(Lcom/google/glass/logging/FormattingLogger;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Ljava/lang/Object;Lcom/google/glass/util/CircularByteBuffer;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final buffer:[B

.field private final recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic val$bytesPerRead:I

.field final synthetic val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field final synthetic val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic val$readMonitor:Ljava/lang/Object;

.field final synthetic val$recordExecutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$underlyingStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FormattingLogger;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Lcom/google/glass/util/CircularByteBuffer;Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$logger:Lcom/google/glass/logging/FormattingLogger;

    iput p2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    iput-object p3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$underlyingStream:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    iput-object p6, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$recordExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p7, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "recordThread"

    .line 64
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 66
    iget v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    return-void
.end method

.method private notifyReadMonitor()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$underlyingStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 74
    .local v2, "read":I
    if-gtz v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Stopping recording because read returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    .line 98
    .end local v2    # "read":I
    :goto_0
    return-void

    .line 80
    .restart local v2    # "read":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    iget-object v4, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    .line 81
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$recordExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .line 82
    .end local v2    # "read":I
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "IOException from underlying stream."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e2":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Read execute rejected while recording, this is unexpected."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .line 88
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Read execute rejected after end of recording, this is expected."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 92
    .end local v1    # "e2":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    throw v3

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stopped recording"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0
.end method
