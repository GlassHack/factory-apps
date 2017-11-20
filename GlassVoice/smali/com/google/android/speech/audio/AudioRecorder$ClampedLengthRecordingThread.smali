.class Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;
.super Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedLengthRecordingThread"
.end annotation


# direct methods
.method constructor <init>(IILjava/io/InputStream;I)V
    .locals 6
    .param p1, "initialSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "readSize"    # I

    .prologue
    .line 289
    const-string v1, "ClampedLengthRecordingThread"

    move-object v0, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;-><init>(Ljava/lang/String;Ljava/io/InputStream;III)V

    .line 290
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x3

    const/4 v12, 0x2

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 294
    const-string v6, "AudioRecorder"

    const-string v9, "ClampedLengthRecordingThread.run()+"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 295
    const/4 v5, 0x0

    .line 296
    .local v5, "totalLength":I
    const/4 v2, 0x0

    .line 299
    .local v2, "lastBytesRead":I
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 301
    if-eq v2, v8, :cond_0

    :try_start_1
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    if-ne v6, v12, :cond_1

    .line 302
    :cond_0
    iput v5, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 303
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 304
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 338
    const-string v6, "AudioRecorder"

    const-string v7, "ClampedLengthRecordingThread.run()-"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 340
    :goto_1
    return-void

    .line 307
    :cond_1
    add-int v6, v5, v2

    :try_start_2
    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    if-le v6, v9, :cond_2

    .line 308
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 309
    const/4 v6, -0x2

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 310
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 338
    const-string v6, "AudioRecorder"

    const-string v7, "ClampedLengthRecordingThread.run()-"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 312
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    add-int/2addr v5, v2

    .line 315
    :try_start_4
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    if-ge v5, v6, :cond_4

    .line 317
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mReadSize:I

    add-int/2addr v6, v5

    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 318
    .local v0, "expectedTotalLength":I
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    array-length v6, v6

    if-le v0, v6, :cond_3

    .line 319
    mul-int/lit8 v6, v0, 0x2

    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v3, v6, [B

    .line 320
    .local v3, "newBuf":[B
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iput-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    .line 324
    .end local v3    # "newBuf":[B
    :cond_3
    sub-int v4, v0, v5

    .line 325
    .local v4, "readLength":I
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    invoke-virtual {v6, v9, v5, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    .line 326
    goto :goto_0

    .line 312
    .end local v0    # "expectedTotalLength":I
    .end local v4    # "readLength":I
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 333
    :try_start_8
    iput v5, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 334
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    if-ne v6, v12, :cond_5

    move v6, v7

    :goto_2
    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 335
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 337
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 338
    const-string v6, "AudioRecorder"

    const-string v7, "ClampedLengthRecordingThread.run()-"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 328
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_4
    :try_start_9
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    const/4 v9, 0x1

    new-array v9, v9, [B

    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v2

    goto/16 :goto_0

    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    move v6, v8

    .line 334
    goto :goto_2

    .line 335
    :catchall_1
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 337
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v7}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 338
    const-string v7, "AudioRecorder"

    const-string v8, "ClampedLengthRecordingThread.run()-"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v6
.end method
