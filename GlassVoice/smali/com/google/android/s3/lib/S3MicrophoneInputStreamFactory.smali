.class public Lcom/google/android/s3/lib/S3MicrophoneInputStreamFactory;
.super Ljava/lang/Object;
.source "S3MicrophoneInputStreamFactory.java"


# annotations
.annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
.end annotation


# static fields
.field private static final AUDIO_RECORD_BUFFER_SIZE_SECONDS:I = 0x8

.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final DEFAULT_SAMPLING_RATE:I = 0x1f40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    const/16 v1, 0x1f40

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/google/android/speech/audio/MicrophoneInputStream;

    invoke-static {v1}, Lcom/google/android/s3/lib/S3MicrophoneInputStreamFactory;->getAudioRecordBufferSizeBytes(I)I

    move-result v2

    const/4 v4, 0x0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V

    return-object v0
.end method

.method private static getAudioRecordBufferSizeBytes(I)I
    .locals 1
    .param p0, "sampleRateHz"    # I

    .prologue
    .line 28
    mul-int/lit8 v0, p0, 0x2

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
