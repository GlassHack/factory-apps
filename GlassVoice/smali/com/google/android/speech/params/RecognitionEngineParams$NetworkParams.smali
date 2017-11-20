.class public Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkParams"
.end annotation


# instance fields
.field private final mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

.field private final mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V
    .locals 0
    .param p1, "primaryConnectionFactory"    # Lcom/google/android/s3/S3ConnectionFactory;
    .param p2, "retryPolicy"    # Lcom/google/android/speech/engine/RetryPolicy;
    .param p3, "networkRequestProducerParams"    # Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    .line 112
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 113
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 114
    return-void
.end method


# virtual methods
.method public getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/google/android/speech/engine/RetryPolicy;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    return-object v0
.end method

.method public getS3ConnectionFactory()Lcom/google/android/s3/S3ConnectionFactory;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    return-object v0
.end method
