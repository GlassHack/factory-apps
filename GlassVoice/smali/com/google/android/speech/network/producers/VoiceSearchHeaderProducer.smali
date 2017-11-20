.class public Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;
.super Lcom/google/android/s3/producers/BaseS3HeaderProducer;
.source "VoiceSearchHeaderProducer.java"


# instance fields
.field private final mClockworkParamsFuture:Ljava/util/concurrent/Future;
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

.field private final mPinholeParamsFuture:Ljava/util/concurrent/Future;
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

.field private final mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private final mService:Ljava/lang/String;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/speech/s3/StreamParsing$StreamParsingInput;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/SpeechSettings;)V
    .locals 8
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "s3AudioInfo"    # Lcom/google/speech/s3/Audio$S3AudioInfo;
    .param p8, "s3RecognizerInfo"    # Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .param p9, "streamParsingInput"    # Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .param p10, "requestId"    # Ljava/lang/String;
    .param p11, "service"    # Ljava/lang/String;
    .param p12, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;",
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
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;",
            "Lcom/google/speech/s3/StreamParsing$StreamParsingInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/SpeechSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "pinholeParamsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    .local p2, "clockworkParamsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/Clockwork$ClockworkParams;>;"
    .local p3, "mobileUserInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/MobileUser$MobileUserInfo;>;"
    .local p4, "s3ClientInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    .local p5, "s3UserInfoFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3UserInfo;>;"
    .local p6, "recognizerVocabularyContextFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;>;"
    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/s3/producers/BaseS3HeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 59
    iput-object p2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    .line 60
    iput-object p6, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;

    .line 61
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 62
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 63
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mService:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 65
    return-void
.end method

.method private maybeCopyUserAgentToMajelExtension(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 3
    .param p1, "request"    # Lcom/google/speech/s3/S3$S3Request;

    .prologue
    .line 114
    const-string/jumbo v0, "voicesearch"

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    iput-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 117
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    iget-object v2, p1, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {v2}, Lcom/google/speech/s3/S3$S3ClientInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->setUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    .line 71
    invoke-super {p0}, Lcom/google/android/s3/producers/BaseS3HeaderProducer;->produceRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 73
    .local v1, "request":Lcom/google/speech/s3/S3$S3Request;
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    .line 83
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mClockworkParamsFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/s3/Clockwork$ClockworkParams;

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->maybeCopyUserAgentToMajelExtension(Lcom/google/speech/s3/S3$S3Request;)V

    .line 91
    :try_start_2
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/s3/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mRecognizerVocabularyContextFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/s3/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mStreamParsingInput:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v2}, Lcom/google/android/speech/SpeechSettings;->isS3DebugLoggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setDebuggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    .line 104
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    .line 106
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x20001

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x20007

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v3, 0x20002

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/Throwable;I)V

    throw v2
.end method
