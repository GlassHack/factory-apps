.class public Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;
.super Lcom/google/android/speech/audio/MicrophoneInputStream;
.source "EmulatedMicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x6

.field private static final BUFFER_SIZE_BYTES:I = 0x1f400

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final FREQUENCY_HZ:D = 133.7

.field private static final SAMPLE_RATE_HZ:I = 0x1f40


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 24
    const/16 v1, 0x1f40

    const v2, 0x1f400

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected createAudioRecord()Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;

    invoke-direct {v0, p0}, Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream$EmulatedAudioRecord;-><init>(Lcom/google/android/speech/audio/EmulatedMicrophoneInputStream;)V

    return-object v0
.end method
