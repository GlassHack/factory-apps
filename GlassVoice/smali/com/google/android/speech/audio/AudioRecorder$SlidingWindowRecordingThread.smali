.class Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;
.super Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlidingWindowRecordingThread"
.end annotation


# instance fields
.field private mSecondaryBuf:[B

.field private mSecondaryLength:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;II)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "readSize"    # I

    .prologue
    .line 357
    const-string v1, "SlidingWindowRecordingThread"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;-><init>(Ljava/lang/String;Ljava/io/InputStream;III)V

    .line 359
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryBuf:[B

    .line 360
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 415
    iget v1, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mMaxSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 416
    .local v0, "dest":[B
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryBuf:[B

    iget v2, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryLength:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mBuf:[B

    iget v2, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryLength:I

    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    return-object v0
.end method

.method public getTotalLength()I
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    iget v1, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 364
    const-string v3, "AudioRecorder"

    const-string v6, "SlidingWindowRecordingThread.run()+"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 366
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mReadSize:I

    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mMaxSize:I

    if-le v3, v6, :cond_0

    .line 369
    const/4 v3, -0x2

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mState:I

    .line 411
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v2, 0x0

    .line 376
    .local v2, "lastBytesRead":I
    :cond_1
    :goto_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    if-eq v2, v5, :cond_2

    :try_start_1
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mState:I

    if-ne v3, v10, :cond_3

    .line 379
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mState:I

    .line 380
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    const-string v3, "AudioRecorder"

    const-string v4, "SlidingWindowRecordingThread.run()-"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    :try_start_3
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mReadSize:I

    add-int/2addr v3, v6

    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mMaxSize:I

    if-le v3, v6, :cond_4

    .line 387
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mBuf:[B

    .line 388
    .local v0, "auxBuf":[B
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryBuf:[B

    iput-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mBuf:[B

    .line 389
    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryBuf:[B

    .line 392
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mSecondaryLength:I

    .line 393
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    .line 397
    .end local v0    # "auxBuf":[B
    :cond_4
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mInput:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mBuf:[B

    iget v7, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    iget v8, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mReadSize:I

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 398
    if-lez v2, :cond_1

    .line 400
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mTotalLength:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 405
    :try_start_5
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mState:I

    if-ne v3, v10, :cond_5

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mState:I

    .line 406
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 408
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    const-string v3, "AudioRecorder"

    const-string v4, "SlidingWindowRecordingThread.run()-"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 408
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    const-string v4, "AudioRecorder"

    const-string v5, "SlidingWindowRecordingThread.run()-"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v3

    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    move v3, v5

    .line 405
    goto :goto_2

    .line 406
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
