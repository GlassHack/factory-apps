.class public Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "RecognizerSessionParamsBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnableAlternates:Z

.field private final mEnablePartials:Z

.field private final mProfanityFilterEnabled:Z

.field private final mSampleRate:I

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechSettings;IZZZ)V
    .locals 1
    .param p1, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p2, "sampleRate"    # I
    .param p3, "enablePartials"    # Z
    .param p4, "enableAlternates"    # Z
    .param p5, "profanityFilterEnabled"    # Z

    .prologue
    .line 19
    const-string v0, "RecognizerSessionParamsBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 21
    iput p2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSampleRate:I

    .line 22
    iput-boolean p3, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnablePartials:Z

    .line 23
    iput-boolean p4, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnableAlternates:Z

    .line 24
    iput-boolean p5, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mProfanityFilterEnabled:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 29
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    .line 30
    .local v0, "builder":Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setType(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 31
    iget-boolean v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mProfanityFilterEnabled:Z

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setMaskOffensiveWords(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 32
    iget v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSampleRate:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 34
    iget-boolean v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnablePartials:Z

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 38
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnableAlternates:Z

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v2}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    .line 40
    .local v1, "configuration":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnableAlternates(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 41
    invoke-static {v1}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v2

    iput-object v2, v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 44
    .end local v1    # "configuration":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->build()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method
