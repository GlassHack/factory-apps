.class public Lcom/google/glass/util/BytePipe;
.super Ljava/io/InputStream;
.source "BytePipe.java"


# instance fields
.field private final circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private isClosed:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/BytePipe;-><init>(ILcom/google/glass/logging/FormattingLogger;)V

    .line 26
    return-void
.end method

.method public constructor <init>(ILcom/google/glass/logging/FormattingLogger;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    .line 21
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Lcom/google/glass/util/CircularByteBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read into a buffer rather than one int at a time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 61
    .local v2, "wrapped":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 62
    .local v1, "read":I
    :goto_0
    iget-object v4, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v4, v2}, Lcom/google/glass/util/CircularByteBuffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-boolean v4, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    move v1, v3

    .line 75
    .end local v1    # "read":I
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .line 67
    .restart local v1    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 71
    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "read":I
    .end local v2    # "wrapped":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Lcom/google/glass/util/CircularByteBuffer;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Lcom/google/glass/util/CircularByteBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Writing to a closed BytePipe."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 41
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 43
    .local v0, "overwrote":Z
    iget-object v1, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v1}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_1
    monitor-exit p0

    return v0
.end method
