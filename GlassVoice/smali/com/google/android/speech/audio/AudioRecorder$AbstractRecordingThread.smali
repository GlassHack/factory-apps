.class abstract Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRecordingThread"
.end annotation


# static fields
.field protected static final ERROR:I = -0x1

.field protected static final OVERFLOW:I = -0x2

.field protected static final RUNNING:I = 0x1

.field protected static final STOPPED:I = 0x3

.field protected static final STOPPING:I = 0x2


# instance fields
.field protected mBuf:[B

.field protected final mInput:Ljava/io/InputStream;

.field protected final mMaxSize:I

.field protected final mReadSize:I

.field protected mState:I

.field protected mTotalLength:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/io/InputStream;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "minSize"    # I
    .param p4, "maxSize"    # I
    .param p5, "readSize"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 245
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mInput:Ljava/io/InputStream;

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mState:I

    .line 247
    iput p4, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mMaxSize:I

    .line 248
    iput p5, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mReadSize:I

    .line 249
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mBuf:[B

    .line 251
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mBuf:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mTotalLength:I

    return v0
.end method

.method public isGood()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflown()Z
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mState:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 2

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->mState:I

    .line 260
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;->interrupt()V

    .line 262
    :cond_0
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
