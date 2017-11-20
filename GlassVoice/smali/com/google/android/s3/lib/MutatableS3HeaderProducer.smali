.class public Lcom/google/android/s3/lib/MutatableS3HeaderProducer;
.super Lcom/google/android/s3/producers/BaseS3HeaderProducer;
.source "MutatableS3HeaderProducer.java"


# annotations
.annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;
    }
.end annotation


# instance fields
.field private final mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;)V
    .locals 7
    .param p2, "s3AudioInfo"    # Lcom/google/speech/s3/Audio$S3AudioInfo;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "service"    # Ljava/lang/String;
    .param p5, "mutator"    # Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "s3ClientInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    const/4 v1, 0x0

    .line 42
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/s3/producers/BaseS3HeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p5, p0, Lcom/google/android/s3/lib/MutatableS3HeaderProducer;->mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;

    .line 44
    return-void
.end method


# virtual methods
.method protected produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->produceRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 49
    .local v0, "request":Lcom/google/speech/s3/S3$S3Request;
    iget-object v1, p0, Lcom/google/android/s3/lib/MutatableS3HeaderProducer;->mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;

    invoke-interface {v1, v0}, Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;->mutateHeaderS3Request(Lcom/google/speech/s3/S3$S3Request;)V

    .line 50
    return-object v0
.end method
