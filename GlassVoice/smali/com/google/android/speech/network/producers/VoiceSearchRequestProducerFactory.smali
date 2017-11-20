.class public Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;
.super Ljava/lang/Object;
.source "VoiceSearchRequestProducerFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/RequestProducerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceSearchRequestProducerFactory"


# instance fields
.field private mClockworkParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private mPinholeParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:Ljava/lang/String;

.field private mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private mS3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private mS3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/String;

.field private mSessionParams:Lcom/google/android/speech/params/SessionParams;

.field private mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

.field private final mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "nrpp"    # Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-object p2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 62
    new-instance v0, Lcom/google/android/s3/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/s3/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    .line 63
    return-void
.end method

.method private createClockworkParamsFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getClockworkParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRequestId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;->getVoiceSearchParamsCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMobileUserInfoFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;-><init>(Lcom/google/android/speech/utils/NetworkInformation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createPinholeParamsFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRequestId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;->getVoiceSearchParamsCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createRecognizerVocabularyContextFuture()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechContext()Lcom/google/android/speech/context/SpeechContext;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/speech/network/request/RecognizerVocabularyContextBuilderTask;->getBuilder(Lcom/google/android/speech/context/SpeechContext;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v0

    .line 187
    .local v0, "audioInputParams":Lcom/google/android/speech/params/AudioInputParams;
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    return-object v1
.end method

.method private createS3ClientInfoFuture()Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v7, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechContext()Lcom/google/android/speech/context/SpeechContext;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getDeviceParams()Lcom/google/android/speech/params/DeviceParams;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v6}, Lcom/google/android/speech/params/SessionParams;->getTriggerApplication()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;-><init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/context/SpeechContext;Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/params/DeviceParams;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 9

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams;->isPartialResultsEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->isCombinedNbestEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->isSuggestionsEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v6}, Lcom/google/android/speech/params/SessionParams;->getMaxNbest()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v7}, Lcom/google/android/speech/params/SessionParams;->isServerEndpointingEnabled()Z

    move-result v7

    iget-object v8, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v8}, Lcom/google/android/speech/params/SessionParams;->isProfanityFilterEnabled()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;-><init>(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/android/speech/SpeechSettings;ZZZIZZ)V

    invoke-virtual {v0}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method

.method private createS3UserInfoFuture()Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getSpokenBcp47Locale()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->getLocationOverride()Landroid/location/Location;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createStreamParsingInput()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->isStreamParsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-direct {v0}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;-><init>()V

    .line 180
    .local v0, "result":Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->setEnableStreamParsing(Z)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "VoiceSearchRequestProducerFactory"

    const-string v1, "Trying to close before init."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 148
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 149
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 150
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public getRequestProducers(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducers;
    .locals 16
    .param p1, "audioInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRequestId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mService:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v13}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/speech/s3/StreamParsing$StreamParsingInput;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/SpeechSettings;)V

    .line 97
    .local v1, "header":Lcom/google/android/s3/producers/S3RequestProducer;
    new-instance v15, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRequestId:Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Lcom/google/android/speech/network/producers/PinholeParamsUpdatesProducer;-><init>(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Ljava/lang/String;)V

    .line 99
    .local v15, "pinholeUpdates":Lcom/google/android/s3/producers/S3RequestProducer;
    new-instance v14, Lcom/google/android/speech/network/producers/AmrStreamProducer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/speech/params/AudioInputParams;->getEncoding()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/speech/params/AudioInputParams;->getEncoding()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/speech/audio/AudioUtils;->getMaxAmrBytesPerS3Request(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2, v3}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;II)V

    .line 103
    .local v14, "audio":Lcom/google/android/s3/producers/S3RequestProducer;
    new-instance v2, Lcom/google/android/speech/network/producers/S3RequestProducers;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/s3/producers/S3RequestProducer;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/speech/network/producers/S3RequestProducers;-><init>([Lcom/google/android/s3/producers/S3RequestProducer;)V

    return-object v2
.end method

.method public init(Lcom/google/android/speech/params/SessionParams;)V
    .locals 1
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    .line 68
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/SessionParams;->getService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mService:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRequestId:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createPinholeParamsFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 71
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createClockworkParamsFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    .line 72
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createMobileUserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 73
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 74
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createS3ClientInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 75
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 76
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 77
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createStreamParsingInput()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 78
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createRecognizerVocabularyContextFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    if-nez v2, :cond_0

    .line 109
    const-string v2, "VoiceSearchRequestProducerFactory"

    const-string v3, "Trying to refresh before init."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v1, "s3UserInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    :goto_1
    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 116
    .end local v1    # "s3UserInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "VoiceSearchRequestProducerFactory"

    const-string v3, "Could not get S3UserInfo for refresh."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 118
    const/4 v1, 0x0

    .restart local v1    # "s3UserInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mNrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getAuthTokenRefreshingBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/speech/s3/S3$S3UserInfo;Lcom/google/android/speech/SpeechSettings;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method
