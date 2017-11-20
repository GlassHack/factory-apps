.class public Lcom/google/android/shared/speech/S3RecognitionResponse;
.super Lcom/google/android/shared/speech/RecognitionResponse;
.source "S3RecognitionResponse.java"


# instance fields
.field private final mS3Response:Lcom/google/speech/s3/S3$S3Response;


# direct methods
.method public constructor <init>(ILcom/google/speech/s3/S3$S3Response;)V
    .locals 0
    .param p1, "engine"    # I
    .param p2, "s3Response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/RecognitionResponse;-><init>(I)V

    .line 17
    iput-object p2, p0, Lcom/google/android/shared/speech/S3RecognitionResponse;->mS3Response:Lcom/google/speech/s3/S3$S3Response;

    .line 18
    return-void
.end method


# virtual methods
.method protected getPayloadString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/shared/speech/S3RecognitionResponse;->mS3Response:Lcom/google/speech/s3/S3$S3Response;

    invoke-static {v0}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getS3Response()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/shared/speech/S3RecognitionResponse;->mS3Response:Lcom/google/speech/s3/S3$S3Response;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
