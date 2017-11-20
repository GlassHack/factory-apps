.class public Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3RecognizerInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMaxNbest:I

.field private final mNeedsAlternates:Z

.field private final mNeedsCombinedNbest:Z

.field private final mNeedsPartialResults:Z

.field private final mProfanityFilterEnabled:Z

.field private final mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

.field private final mServerEndpointingEnabled:Z

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/android/speech/SpeechSettings;ZZZIZZ)V
    .locals 1
    .param p1, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .param p2, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "needsPartialResults"    # Z
    .param p4, "needsCombinedNbest"    # Z
    .param p5, "needsAlternates"    # Z
    .param p6, "maxNbest"    # I
    .param p7, "serverEndpointingEnabled"    # Z
    .param p8, "profanityFilterEnabled"    # Z

    .prologue
    .line 28
    const-string v0, "S3RecognizerInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 30
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsPartialResults:Z

    .line 32
    iput-boolean p4, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    .line 33
    iput-boolean p5, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    .line 34
    iput p6, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mMaxNbest:I

    .line 35
    iput-boolean p7, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mServerEndpointingEnabled:Z

    .line 36
    iput-boolean p8, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mProfanityFilterEnabled:Z

    .line 37
    return-void
.end method

.method static getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 2
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .prologue
    .line 71
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxSpanLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxTotalSpanLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected build()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    .line 43
    .local v0, "builder":Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    iput-object v1, v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 47
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsPartialResults:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 48
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 49
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    if-eqz v1, :cond_1

    .line 50
    iget v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mMaxNbest:I

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 53
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 55
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 59
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mProfanityFilterEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 63
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->isPersonalizationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePersonalization(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 64
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mServerEndpointingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableEndpointerEvents(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 66
    return-object v0

    .line 59
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->build()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method
