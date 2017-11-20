.class public Lcom/google/android/speech/params/AudioInputParams;
.super Ljava/lang/Object;
.source "AudioInputParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/AudioInputParams$Builder;
    }
.end annotation


# instance fields
.field private final mEncoding:I

.field private final mNoiseSuppressionEnabled:Z

.field private final mPlayBeepEnabled:Z

.field private final mRecordedAudioUri:Landroid/net/Uri;

.field private final mReportSoundLevels:Z

.field private final mRequestAudioFocus:Z

.field private final mSamplingRateHz:I

.field private final mUseGpmAudio:Z

.field private final mUsePreemptibleAudioSource:Z


# direct methods
.method constructor <init>(ZZZIILandroid/net/Uri;ZZZ)V
    .locals 0
    .param p1, "noiseSuppressionEnabled"    # Z
    .param p2, "playBeepEnabled"    # Z
    .param p3, "reportSoundLevels"    # Z
    .param p4, "encoding"    # I
    .param p5, "samplingRateHz"    # I
    .param p6, "recordedAudioUri"    # Landroid/net/Uri;
    .param p7, "usePreemptibleAudioSource"    # Z
    .param p8, "requestAudioFocus"    # Z
    .param p9, "useGpmAudio"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams;->mNoiseSuppressionEnabled:Z

    .line 49
    iput-boolean p2, p0, Lcom/google/android/speech/params/AudioInputParams;->mPlayBeepEnabled:Z

    .line 50
    iput-boolean p3, p0, Lcom/google/android/speech/params/AudioInputParams;->mReportSoundLevels:Z

    .line 51
    iput p4, p0, Lcom/google/android/speech/params/AudioInputParams;->mEncoding:I

    .line 52
    iput p5, p0, Lcom/google/android/speech/params/AudioInputParams;->mSamplingRateHz:I

    .line 53
    iput-object p6, p0, Lcom/google/android/speech/params/AudioInputParams;->mRecordedAudioUri:Landroid/net/Uri;

    .line 54
    iput-boolean p7, p0, Lcom/google/android/speech/params/AudioInputParams;->mUsePreemptibleAudioSource:Z

    .line 55
    iput-boolean p8, p0, Lcom/google/android/speech/params/AudioInputParams;->mRequestAudioFocus:Z

    .line 56
    iput-boolean p9, p0, Lcom/google/android/speech/params/AudioInputParams;->mUseGpmAudio:Z

    .line 57
    return-void
.end method


# virtual methods
.method public getEncoding()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mEncoding:I

    return v0
.end method

.method public getRecordedAudioUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mRecordedAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mSamplingRateHz:I

    return v0
.end method

.method public isNoiseSuppressionEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mNoiseSuppressionEnabled:Z

    return v0
.end method

.method public isPlayBeepEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mPlayBeepEnabled:Z

    return v0
.end method

.method public shouldReportSoundLevels()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mReportSoundLevels:Z

    return v0
.end method

.method public shouldRequestAudioFocus()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mRequestAudioFocus:Z

    return v0
.end method

.method public useGpmAudio()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mUseGpmAudio:Z

    return v0
.end method

.method public usePreemptibleAudioSource()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mUsePreemptibleAudioSource:Z

    return v0
.end method
