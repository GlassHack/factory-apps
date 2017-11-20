.class public Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/SpeechLibFactory;


# static fields
.field private static final EMBEDDED_FALLBACK_TIMEOUT_DEFAULT:I

.field private static final EMBEDDED_FALLBACK_TIMEOUT_DISABLED:I = -0x1

.field private static final EMBEDDED_FALLBACK_TIMEOUT_VOICESEARCH:I

.field private static final LOCAL_ENGINE_THREAD:Ljava/lang/String; = "LocalEngine"

.field private static final NETWORK_ENGINE_THREAD:Ljava/lang/String; = "NetworkEngine"


# instance fields
.field private context:Landroid/content/Context;

.field private endpointerEventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private endpointerEventProcessor:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

.field private final engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

.field private final localExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final networkExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final networkInformation:Lcom/google/android/speech/utils/NetworkInformation;

.field shouldUseNetworkRecognitionEngine:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->EMBEDDED_FALLBACK_TIMEOUT_VOICESEARCH:I

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->EMBEDDED_FALLBACK_TIMEOUT_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/SpeechSettings;Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p1, "networkInformation"    # Lcom/google/android/speech/utils/NetworkInformation;
    .param p2, "engineParams"    # Lcom/google/android/speech/params/RecognitionEngineParams;
    .param p3, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/utils/NetworkInformation;",
            "Lcom/google/android/speech/params/RecognitionEngineParams;",
            "Lcom/google/android/speech/SpeechSettings;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "endpointerEventPreprocessors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;>;"
    const/4 v0, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 70
    iput-boolean v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseNetworkRecognitionEngine:Z

    .line 86
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->networkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 87
    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    .line 88
    iput-object p3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 89
    iput-object p4, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->endpointerEventPreprocessors:Ljava/util/List;

    .line 90
    iput-object p5, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->context:Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    .local v0, "enableExecutorServiceLogging":Z
    :goto_0
    const-string v1, "LocalEngine"

    invoke-static {v1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->localExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 98
    const-string v1, "NetworkEngine"

    invoke-static {v1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->networkExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 100
    return-void

    .line 94
    .end local v0    # "enableExecutorServiceLogging":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public buildEngineSelector(Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
    .locals 1
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    .line 140
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V

    return-object v0
.end method

.method public buildRecognitionEngineStore()Lcom/google/android/speech/RecognitionEngineStore;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;

    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->localExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->networkExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;-><init>(Lcom/google/android/speech/params/RecognitionEngineParams;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public buildResponseProcessor(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/ResponseProcessor;
    .locals 8
    .param p1, "audioCallback"    # Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .param p2, "recognitionEventListener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p3, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    .line 126
    new-instance v7, Lcom/google/android/speech/DefaultRecognizerEventListener;

    .line 127
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->stopOnEndOfSpeech()Z

    move-result v0

    invoke-direct {v7, p2, p1, v0}, Lcom/google/android/speech/DefaultRecognizerEventListener;-><init>(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/ResponseProcessor$AudioCallback;Z)V

    .line 130
    .local v7, "loggingEventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    new-instance v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->endpointerEventPreprocessors:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 131
    invoke-virtual {p3, v3}, Lcom/google/android/speech/params/SessionParams;->getEndpointerParams(Lcom/google/android/speech/SpeechSettings;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v4

    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 132
    invoke-interface {v3}, Lcom/google/android/speech/SpeechSettings;->isClientEndpointerUiControlEnabled()Z

    move-result v6

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Lcom/google/android/speech/ResponseProcessor$AudioCallback;Z)V

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->endpointerEventProcessor:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    .line 134
    new-instance v0, Lcom/google/android/speech/ResponseProcessor;

    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->endpointerEventProcessor:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    new-instance v2, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;

    invoke-direct {v2}, Lcom/google/glass/voice/network/GlassS3ResponseProcessor;-><init>()V

    invoke-direct {v0, p1, v7, v1, v2}, Lcom/google/android/speech/ResponseProcessor;-><init>(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/endpointing/EndpointerEventProcessor;Lcom/google/android/speech/S3ResponseProcessor;)V

    return-object v0
.end method

.method public buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
    .locals 3
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;
    .param p2, "recognitionDispatcher"    # Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .param p3, "engineSelector"    # Lcom/google/android/speech/EngineSelector;
    .param p4, "recognitionEngineCallback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p5, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p1, v1}, Lcom/google/android/speech/params/SessionParams;->getEmbeddedFallbackTimeout(Lcom/google/android/speech/SpeechSettings;)I

    move-result v0

    .line 109
    .local v0, "embeddedFallbackTimeout":I
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v1, v2, :cond_1

    .line 112
    sget v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->EMBEDDED_FALLBACK_TIMEOUT_VOICESEARCH:I

    .line 120
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/glass/voice/network/GlassResultsMerger;

    invoke-direct {v1, p2, p4}, Lcom/google/glass/voice/network/GlassResultsMerger;-><init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    return-object v1

    .line 113
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    sget v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->EMBEDDED_FALLBACK_TIMEOUT_DEFAULT:I

    goto :goto_0
.end method

.method public createGpmAudioInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;Landroid/content/Context;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 1
    .param p1, "audioParams"    # Lcom/google/android/speech/params/AudioInputParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "soundManager"    # Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    .param p4, "audioRouter"    # Lcom/google/android/voicesearch/audio/AudioRouter;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->endpointerEventProcessor:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    return-object v0
.end method

.method public setUseNetworkRecognitionEngine(Z)V
    .locals 0
    .param p1, "shouldUseNetworkRecognitionEngine"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseNetworkRecognitionEngine:Z

    .line 188
    return-void
.end method
