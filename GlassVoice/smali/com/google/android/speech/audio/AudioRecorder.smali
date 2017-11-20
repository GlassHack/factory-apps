.class public Lcom/google/android/speech/audio/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;,
        Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;,
        Lcom/google/android/speech/audio/AudioRecorder$AbstractRecordingThread;,
        Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;
    }
.end annotation


# static fields
.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private mAudioStore:Lcom/google/android/speech/audio/AudioStore;

.field private mBytesPerMsec:I

.field private mEndPos:I

.field private mMaxFlattenedBufferSize:I

.field private mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

.field private mRequestId:Ljava/lang/String;

.field private mSampleRate:I

.field private mStartPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private doStopRecording(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    const-string v3, "AudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doStopRecording("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 147
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    .line 151
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->requestStop()V

    .line 155
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "lastAudio":[B
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->isGood()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->getBuffer()[B

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->getTotalLength()I

    move-result v3

    iget v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 171
    :cond_2
    :goto_1
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    iget v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    if-lt v3, v4, :cond_3

    .line 175
    const/4 v2, 0x0

    .line 178
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/speech/audio/AudioRecorder;->getLastValidAudioRange([B)[B

    move-result-object v2

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "audioRecording":Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    if-eqz v2, :cond_4

    .line 181
    new-instance v0, Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    .end local v0    # "audioRecording":Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mSampleRate:I

    invoke-direct {v0, v3, v2}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;-><init>(I[B)V

    .line 184
    .restart local v0    # "audioRecording":Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    :cond_4
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mAudioStore:Lcom/google/android/speech/audio/AudioStore;

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRequestId:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/google/android/speech/audio/AudioStore;->put(Ljava/lang/String;Lcom/google/android/speech/audio/AudioStore$AudioRecording;)V

    .line 185
    iput-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder;->mAudioStore:Lcom/google/android/speech/audio/AudioStore;

    .line 186
    iput-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRequestId:Ljava/lang/String;

    .line 187
    iput-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    .line 188
    const-string v3, "AudioRecorder"

    const-string v4, "doStopRecording-"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v0    # "audioRecording":Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    .end local v2    # "lastAudio":[B
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v3, "AudioRecorder"

    const-string v4, "Unexpected interrupt."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 158
    iput-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder;->mAudioStore:Lcom/google/android/speech/audio/AudioStore;

    .line 159
    iput-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRequestId:Ljava/lang/String;

    goto :goto_0

    .line 167
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local v2    # "lastAudio":[B
    :cond_5
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->isOverflown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    iget v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mMaxFlattenedBufferSize:I

    if-gt v3, v4, :cond_2

    .line 169
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->getBuffer()[B

    move-result-object v2

    goto :goto_1
.end method

.method private getLastValidAudioRange([B)[B
    .locals 2
    .param p1, "lastAudio"    # [B

    .prologue
    .line 192
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 195
    .end local p1    # "lastAudio":[B
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "lastAudio":[B
    :cond_1
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected createRecordingThread(IILjava/io/InputStream;IZ)Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;
    .locals 1
    .param p1, "initialSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "readSize"    # I
    .param p5, "useCircularRecorder"    # Z

    .prologue
    .line 201
    if-eqz p5, :cond_0

    .line 202
    new-instance v0, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;

    invoke-direct {v0, p3, p1, p4}, Lcom/google/android/speech/audio/AudioRecorder$SlidingWindowRecordingThread;-><init>(Ljava/io/InputStream;II)V

    .line 204
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;-><init>(IILjava/io/InputStream;I)V

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecordingEndTime(J)V
    .locals 5
    .param p1, "timeUsec"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 141
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 142
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mBytesPerMsec:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method

.method public setRecordingStartTime(J)V
    .locals 5
    .param p1, "timeUsec"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 128
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 129
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mBytesPerMsec:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    .line 130
    return-void

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0

    :cond_1
    move v1, v2

    .line 128
    goto :goto_1
.end method

.method public startRecording(Ljava/io/InputStream;IILcom/google/android/speech/audio/AudioStore;Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sampleRate"    # I
    .param p3, "readSize"    # I
    .param p4, "audioStore"    # Lcom/google/android/speech/audio/AudioStore;
    .param p5, "requestId"    # Ljava/lang/String;
    .param p6, "minRecordingBufferSizeMs"    # I
    .param p7, "maxRecordingBufferSizeMs"    # I
    .param p8, "useCircularBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "AudioRecorder"

    const-string v3, "startRecording"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 75
    iput-object p4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mAudioStore:Lcom/google/android/speech/audio/AudioStore;

    .line 76
    iput p2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mSampleRate:I

    .line 77
    invoke-static {p2}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getBytesPerMsec(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mBytesPerMsec:I

    .line 78
    iput-object p5, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRequestId:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    .line 80
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 81
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mBytesPerMsec:I

    mul-int v1, p6, v0

    .line 82
    .local v1, "minFlattenedBufferSize":I
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mBytesPerMsec:I

    mul-int/2addr v0, p7

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mMaxFlattenedBufferSize:I

    .line 83
    iget v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mMaxFlattenedBufferSize:I

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/speech/audio/AudioRecorder;->createRecordingThread(IILjava/io/InputStream;IZ)Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    .line 85
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;

    invoke-interface {v0}, Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;->start()V

    .line 86
    return-void

    .end local v1    # "minFlattenedBufferSize":I
    :cond_0
    move v0, v2

    .line 74
    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "AudioRecorder"

    const-string v1, "stopRecording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/speech/audio/AudioRecorder;->doStopRecording(Z)V

    .line 94
    return-void
.end method

.method public waitForRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    const-string v0, "AudioRecorder"

    const-string/jumbo v1, "waitForRecording"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, v3}, Lcom/google/android/speech/audio/AudioRecorder;->doStopRecording(Z)V

    .line 105
    return-void
.end method
