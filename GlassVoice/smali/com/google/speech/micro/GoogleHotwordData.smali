.class public Lcom/google/speech/micro/GoogleHotwordData;
.super Ljava/lang/Object;
.source "GoogleHotwordData.java"


# instance fields
.field private nativeHotwordData:J


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "hotwordDataBytes"    # [B
    .param p2, "sampleRateHertz"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/speech/micro/GoogleHotwordData;-><init>([BIZ)V

    .line 21
    return-void
.end method

.method public constructor <init>([BIZ)V
    .locals 2
    .param p1, "hotwordDataBytes"    # [B
    .param p2, "sampleRateHertz"    # I
    .param p3, "disableLowPowerMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/speech/micro/GoogleHotwordData;->nativeNew([BIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    .line 38
    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeIdealBufferBytes(J)I
.end method

.method private static native nativeIsSpeakerModelCompatible(J[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method private static native nativeIsSpeakerVerificationEnabled(J)Z
.end method

.method private static native nativeNew([BIZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordData;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public idealBufferBytes()I
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordData;->nativeIdealBufferBytes(J)I

    move-result v0

    return v0
.end method

.method public isSpeakerModelCompatible([B)Z
    .locals 2
    .param p1, "speakerModel"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    invoke-static {v0, v1, p1}, Lcom/google/speech/micro/GoogleHotwordData;->nativeIsSpeakerModelCompatible(J[B)Z

    move-result v0

    return v0
.end method

.method public isSpeakerVerificationEnabled()Z
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordData;->nativeHotwordData:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordData;->nativeIsSpeakerVerificationEnabled(J)Z

    move-result v0

    return v0
.end method
