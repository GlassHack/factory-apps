.class public Lcom/google/android/s3/producers/BaseS3HeaderProducer;
.super Lcom/google/android/s3/producers/Producers$SingleRequestProducer;
.source "BaseS3HeaderProducer.java"


# static fields
.field private static final TIMEOUT_MS:I = 0x1388


# instance fields
.field private final mMobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;

.field private final mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mS3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mS3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mService:Ljava/lang/String;

.field protected final mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "s3AudioInfo"    # Lcom/google/speech/s3/Audio$S3AudioInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "requestId"    # Ljava/lang/String;
    .param p6, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mobileUserInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/MobileUser$MobileUserInfo;>;"
    .local p2, "s3ClientInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    .local p3, "s3UserInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3UserInfo;>;"
    invoke-direct {p0}, Lcom/google/android/s3/producers/Producers$SingleRequestProducer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 52
    iput-object p2, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 53
    iput-object p3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 54
    iput-object p4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 55
    iput-object p5, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mRequestId:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mService:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/google/android/s3/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/google/android/s3/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    .line 58
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/s3/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    .line 63
    .local v2, "request":Lcom/google/speech/s3/S3$S3Request;
    const/4 v1, 0x0

    .line 65
    .local v1, "errorCode":I
    :try_start_0
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_0

    .line 66
    const v1, 0x20003

    .line 67
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v3, v4}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    iput-object v3, v2, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    iput-object v3, v2, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_2

    .line 74
    const v1, 0x20004

    .line 75
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v3, v4}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/speech/s3/S3$S3UserInfo;

    iput-object v3, v2, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 77
    :cond_2
    new-instance v3, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v3}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    iget-object v4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 78
    const v1, 0x20005

    .line 79
    iget-object v3, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v4, p0, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v3, v4}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/speech/s3/S3$S3ClientInfo;

    iput-object v3, v2, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    invoke-direct {v3, v0, v1}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
.end method
