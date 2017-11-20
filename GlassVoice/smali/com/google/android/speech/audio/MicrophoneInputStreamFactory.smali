.class public Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;
.super Ljava/lang/Object;
.source "MicrophoneInputStreamFactory.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# static fields
.field private static final AUDIO_RECORD_BUFFER_SIZE_SECONDS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStreamFactory"


# instance fields
.field private final mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

.field private final mNoiseSuppression:Z

.field private final mPreemptible:Z

.field private final mSampleRateHz:I


# direct methods
.method public constructor <init>(IZLcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;Z)V
    .locals 1
    .param p1, "sampleRateHz"    # I
    .param p2, "noiseSuppression"    # Z
    .param p3, "soundPlayer"    # Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    .param p4, "audioRouter"    # Lcom/google/android/voicesearch/audio/AudioRouter;
    .param p5, "preemptible"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    .line 38
    iput-boolean p2, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mNoiseSuppression:Z

    .line 39
    new-instance v0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;

    invoke-direct {v0, p4, p3}, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;-><init>(Lcom/google/android/voicesearch/audio/AudioRouter;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    .line 40
    iput-boolean p5, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mPreemptible:Z

    .line 41
    return-void
.end method

.method private getAudioRecordBufferSizeBytes()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getBytesPerMsec(I)I
    .locals 1
    .param p0, "sampleRate"    # I

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getMicrophoneReadSize(I)I
    .locals 1
    .param p0, "sampleRate"    # I

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getBytesPerMsec(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 45
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;

    invoke-direct {v0}, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;-><init>()V

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget v0, Lcom/google/android/shared/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Lcom/google/android/speech/audio/FullMicrophoneInputStream;

    iget v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getAudioRecordBufferSizeBytes()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mNoiseSuppression:Z

    iget-object v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    iget-boolean v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mPreemptible:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/FullMicrophoneInputStream;-><init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/google/android/speech/audio/MicrophoneInputStream;

    iget v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getAudioRecordBufferSizeBytes()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mNoiseSuppression:Z

    iget-object v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    iget-boolean v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mPreemptible:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V

    goto :goto_0
.end method
