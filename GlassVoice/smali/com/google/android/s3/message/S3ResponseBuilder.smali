.class public Lcom/google/android/s3/message/S3ResponseBuilder;
.super Ljava/lang/Object;
.source "S3ResponseBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDone()Lcom/google/speech/s3/S3$S3Response;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public static createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 3
    .param p0, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 21
    new-instance v1, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    .line 22
    .local v0, "s3response":Lcom/google/speech/s3/S3$S3Response;
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 23
    iget-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iput-object p0, v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 24
    return-object v0
.end method

.method public static createWithMajel(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Lcom/google/speech/s3/S3$S3Response;
    .locals 3
    .param p0, "response"    # Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .prologue
    .line 28
    new-instance v1, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    .line 29
    .local v0, "s3response":Lcom/google/speech/s3/S3$S3Response;
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 30
    iget-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    iput-object p0, v1, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 31
    return-object v0
.end method

.method public static createWithRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 3
    .param p0, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 35
    new-instance v1, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    .line 36
    .local v0, "s3response":Lcom/google/speech/s3/S3$S3Response;
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 37
    iget-object v1, v0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iput-object p0, v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 38
    return-object v0
.end method
