.class public Lcom/google/android/speech/params/AudioInputParams$Builder;
.super Ljava/lang/Object;
.source "AudioInputParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/AudioInputParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEncoding:I

.field private mNoiseSuppressionEnabled:Z

.field private mPlayBeepEnabled:Z

.field private mRecordedAudioUri:Landroid/net/Uri;

.field private mReportSoundLevels:Z

.field private mRequestAudioFocus:Z

.field private mSamplingRateHz:I

.field private mUseGpmAudio:Z

.field private mUsePreemptibleAudioSource:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    .line 99
    iput-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mReportSoundLevels:Z

    .line 100
    iput-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUsePreemptibleAudioSource:Z

    .line 101
    iput-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mRequestAudioFocus:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUseGpmAudio:Z

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    .line 104
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/speech/params/AudioInputParams;
    .locals 10

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams;

    iget-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    iget-boolean v2, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    iget-boolean v3, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mReportSoundLevels:Z

    iget v4, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    iget v5, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    iget-object v6, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mRecordedAudioUri:Landroid/net/Uri;

    iget-boolean v7, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUsePreemptibleAudioSource:Z

    iget-boolean v8, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mRequestAudioFocus:Z

    iget-boolean v9, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUseGpmAudio:Z

    invoke-direct/range {v0 .. v9}, Lcom/google/android/speech/params/AudioInputParams;-><init>(ZZZIILandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public setEncoding(I)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "encoding"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    .line 137
    return-object p0
.end method

.method public setNoiseSuppressionEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "noiseSuppressionEnabled"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    .line 122
    return-object p0
.end method

.method public setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "playBeepEnabled"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    .line 127
    return-object p0
.end method

.method public setRecordedAudioUri(Landroid/net/Uri;)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "recordedAudioUri"    # Landroid/net/Uri;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mRecordedAudioUri:Landroid/net/Uri;

    .line 147
    return-object p0
.end method

.method public setReportSoundLevels(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "reportSoundLevels"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mReportSoundLevels:Z

    .line 132
    return-object p0
.end method

.method public setRequestAudioFocus(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "requestAudioFocus"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mRequestAudioFocus:Z

    .line 157
    return-object p0
.end method

.method public setSamplingRate(I)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "samplingRateHz"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    .line 142
    return-object p0
.end method

.method public setUseGpmAudio(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "useGpmAudio"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUseGpmAudio:Z

    .line 162
    return-object p0
.end method

.method public setUsePreemptibleAudioSource(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .param p1, "usePreemptibleAudioSource"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mUsePreemptibleAudioSource:Z

    .line 152
    return-object p0
.end method
