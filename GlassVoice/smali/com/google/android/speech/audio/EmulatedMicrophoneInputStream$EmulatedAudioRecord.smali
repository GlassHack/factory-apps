.class Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;
.super Landroid/media/AudioRecord;
.source "EmulatedMicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatedAudioRecord"
.end annotation


# instance fields
.field private mAudioSample:[B

.field private mSamplesRead:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;)V
    .locals 12

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->this$0:Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;

    .line 34
    const/4 v1, 0x6

    const/16 v2, 0x1f40

    const/16 v3, 0x10

    const/4 v4, 0x2

    const v5, 0x1f400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 29
    const/16 v0, 0x3e80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mSamplesRead:I

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mStartTime:J

    .line 37
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x1f40

    if-ge v7, v0, :cond_0

    .line 38
    int-to-double v0, v7

    const-wide v2, 0x40bf400000000000L    # 8000.0

    div-double v8, v0, v2

    .line 39
    .local v8, "t":D
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v8

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4060b66666666666L    # 133.7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 40
    .local v10, "y":D
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v10, v0

    .line 42
    const-wide v0, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v10

    double-to-int v0, v0

    int-to-byte v6, v0

    .line 43
    .local v6, "amplitude":B
    iget-object v0, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-byte v6, v0, v1

    .line 44
    iget-object v0, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 46
    .end local v6    # "amplitude":B
    .end local v8    # "t":D
    .end local v10    # "y":D
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x3

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mStartTime:J

    sub-long v2, v4, v6

    .line 55
    .local v2, "timeSinceCreation":J
    const/4 v0, 0x0

    .line 56
    .local v0, "bytesRead":I
    :goto_0
    iget v4, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mSamplesRead:I

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    if-ge v0, p3, :cond_0

    .line 57
    iget v4, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mSamplesRead:I

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    array-length v5, v5

    rem-int v1, v4, v5

    .line 58
    .local v1, "inputIndex":I
    add-int v4, p2, v0

    iget-object v5, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    aget-byte v5, v5, v1

    aput-byte v5, p1, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    add-int v4, p2, v0

    iget-object v5, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mAudioSample:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, p1, v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    iget v4, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mSamplesRead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;->mSamplesRead:I

    goto :goto_0

    .line 65
    .end local v1    # "inputIndex":I
    :cond_0
    if-nez v0, :cond_1

    .line 68
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_1
    return v0

    .line 69
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/media/MediaSyncEvent;

    .prologue
    .line 85
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
