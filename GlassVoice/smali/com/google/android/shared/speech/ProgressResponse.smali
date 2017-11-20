.class public Lcom/google/android/shared/speech/ProgressResponse;
.super Lcom/google/android/shared/speech/RecognitionResponse;
.source "ProgressResponse.java"


# instance fields
.field private final mProgressMs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "engine"    # I
    .param p2, "progressMs"    # J

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/RecognitionResponse;-><init>(I)V

    .line 13
    iput-wide p2, p0, Lcom/google/android/shared/speech/ProgressResponse;->mProgressMs:J

    .line 14
    return-void
.end method


# virtual methods
.method protected getPayloadString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/shared/speech/ProgressResponse;->mProgressMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressMs()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/google/android/shared/speech/ProgressResponse;->mProgressMs:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    return v0
.end method
