.class public Lcom/google/android/speech/audio/FullMicrophoneInputStream;
.super Lcom/google/android/speech/audio/MicrophoneInputStream;
.source "FullMicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FullMicrophoneInputStream"


# instance fields
.field private mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "minBufferSize"    # I
    .param p3, "noiseSuppressionEnabled"    # Z
    .param p4, "callbacks"    # Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "preemptible"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected createNoiseSuppressor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressionEnabled:Z

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-static {v1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 52
    iget-object v1, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "FullMicrophoneInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using noise suppression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v3}, Landroid/media/audiofx/NoiseSuppressor;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    goto :goto_0
.end method

.method protected releaseNoiseSuppressor()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 73
    :cond_0
    return-void
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    .line 32
    const-string v2, "FullMicrophoneInputStream"

    const-string v3, "startRecording()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "syncEvent":Landroid/media/MediaSyncEvent;
    iget-object v2, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;->playSpeakNowSound()I

    move-result v0

    .line 35
    .local v0, "sessionId":I
    if-lez v0, :cond_0

    .line 36
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/MediaSyncEvent;->createEvent(I)Landroid/media/MediaSyncEvent;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Landroid/media/MediaSyncEvent;->setAudioSessionId(I)Landroid/media/MediaSyncEvent;

    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2, v1}, Landroid/media/AudioRecord;->startRecording(Landroid/media/MediaSyncEvent;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_0
.end method
