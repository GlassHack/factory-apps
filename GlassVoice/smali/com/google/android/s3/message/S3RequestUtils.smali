.class public Lcom/google/android/s3/message/S3RequestUtils;
.super Ljava/lang/Object;
.source "S3RequestUtils.java"


# static fields
.field public static final TAG_FORCE_EMULATOR_SERVER_LOGS:Ljava/lang/String; = "forceEmulatorServerLogs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .param p0, "audioBytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 29
    .local v0, "request":Lcom/google/speech/s3/S3$S3Request;
    invoke-static {p0, p1}, Lcom/google/android/s3/message/S3RequestUtils;->createS3AudioData([BI)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 30
    return-object v0
.end method

.method public static createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "isRunningInTestHarness":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 48
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v1, "forceEmulatorServerLogs"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    goto :goto_0
.end method

.method public static createEndOfData()Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setEndOfData(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method private static createS3AudioData([BI)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 2
    .param p0, "audioBytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    .line 35
    .local v0, "data":Lcom/google/speech/s3/Audio$S3AudioData;
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioData;->setAudio([B)Lcom/google/speech/s3/Audio$S3AudioData;

    .line 36
    return-object v0
.end method
