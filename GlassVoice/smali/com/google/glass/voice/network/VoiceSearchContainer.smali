.class public Lcom/google/glass/voice/network/VoiceSearchContainer;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"


# static fields
.field public static final DEFAULT_ENDPOINTER_TIMEOUT_DICTATION_MILLIS:I = 0x2ee
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field public static final DEFAULT_LOCALE_BCP_47:Ljava/lang/String; = "en_US"

.field public static final DEFAULT_NO_SPEECH_DETECTED_TIMEOUT_MS:I = 0x1388

.field public static final LANGUAGE_PACK_FORMAT_VERSION:[I

.field private static final S3_SERVER_KEY:Ljava/lang/String; = "persist.voice.s3_server"

.field private static final S3_TCP_PORT_KEY:Ljava/lang/String; = "persist.voice.s3_tcp_port"

.field private static final SCHEDULED_EXECUTOR_THREADS:I = 0x5

.field static final SEARCH_PREFS:Ljava/lang/String; = "search_prefs"

.field static container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioController:Lcom/google/android/speech/audio/AudioController;

.field private final audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

.field private clock:Lcom/google/android/shared/util/Clock;

.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field private final context:Landroid/content/Context;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

.field private networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private recognizerController:Lcom/google/glass/voice/network/RecognizerController;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

.field private speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->LANGUAGE_PACK_FORMAT_VERSION:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    .line 167
    const-string v3, "location"

    .line 168
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 169
    .local v1, "locationManager":Landroid/location/LocationManager;
    new-instance v3, Lcom/google/glass/voice/network/SystemClockImpl;

    invoke-direct {v3, p1}, Lcom/google/glass/voice/network/SystemClockImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->clock:Lcom/google/android/shared/util/Clock;

    .line 170
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 171
    .local v2, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 172
    .local v0, "glassClock":Lcom/google/glass/time/Clock;
    new-instance v3, Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 174
    invoke-static {p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 176
    const-string v3, "BackgroundScheduledExecutor"

    const/4 v4, 0x5

    new-instance v5, Lcom/google/glass/async/PriorityThreadFactory;

    const-string v6, "ScheduledExecutorThread"

    invoke-direct {v5, v7, v6}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v4, v5, v7, v7}, Lcom/google/android/shared/util/GlassConcurrentUtils;->createSafeExecutor(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 181
    new-instance v3, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    invoke-direct {v3}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;-><init>()V

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    .line 182
    new-instance v3, Lcom/google/android/shared/util/SpeechLevelSource;

    invoke-direct {v3}, Lcom/google/android/shared/util/SpeechLevelSource;-><init>()V

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    .line 183
    new-instance v3, Lcom/google/glass/voice/network/GlassSpeechSettings;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v3, p1, v4}, Lcom/google/glass/voice/network/GlassSpeechSettings;-><init>(Landroid/content/Context;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 184
    invoke-static {p1}, Lcom/google/glass/voice/network/Cookies;->create(Landroid/content/Context;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/VoiceSearchContainer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/android/speech/SpeechSettings;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/VoiceSearchContainer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method

.method public static declared-synchronized createContainer(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v1

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .locals 8

    .prologue
    .line 285
    new-instance v3, Lcom/google/glass/voice/network/VoiceSearchContainer$2;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$2;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 296
    .local v3, "greco3SelectorMode":Lcom/google/android/speech/embedded/Greco3ModeSelector;
    new-instance v1, Lcom/google/android/speech/internal/DefaultCallbackFactory;

    invoke-direct {v1}, Lcom/google/android/speech/internal/DefaultCallbackFactory;-><init>()V

    .line 297
    .local v1, "callbackFactory":Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    .line 299
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/shared/util/SpeechLevelSource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    const/4 v6, 0x2

    const/16 v7, 0x1f40

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;-><init>(Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;II)V

    return-object v0
.end method

.method private createNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .locals 11

    .prologue
    .line 324
    new-instance v8, Lcom/google/glass/voice/network/VoiceSearchContainer$4;

    invoke-direct {v8, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$4;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 333
    .local v8, "pairHttpServerInfoSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    const/16 v9, 0xe

    .line 334
    .local v9, "trafficTag":I
    new-instance v3, Lcom/google/glass/voice/network/VoiceSearchContainer$5;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$5;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 342
    .local v3, "userAgentSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/glass/voice/network/VoiceSearchContainer$6;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$6;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 348
    .local v2, "noOpUrlRewriter":Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;
    new-instance v6, Lcom/google/android/s3/PairHttpConnectionFactory;

    new-instance v10, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;

    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper;

    .line 349
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConectionConfig()Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    move-result-object v1

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/search/core/util/JavaNetHttpHelper;-><init>(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;Lcom/google/common/base/Supplier;Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    const/16 v1, 0xe

    invoke-direct {v10, v0, v1}, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;-><init>(Lcom/google/android/search/core/util/HttpHelper;I)V

    invoke-direct {v6, v8, v10}, Lcom/google/android/s3/PairHttpConnectionFactory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/android/s3/ConnectionFactory;)V

    .line 353
    .local v6, "http":Lcom/google/android/s3/S3ConnectionFactory;
    new-instance v7, Lcom/google/glass/voice/network/VoiceSearchContainer$7;

    invoke-direct {v7, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$7;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 361
    .local v7, "networkRecognizerInfoSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;>;"
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    new-instance v1, Lcom/google/glass/voice/network/DefaultRetryPolicy;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->clock:Lcom/google/android/shared/util/Clock;

    invoke-direct {v1, v7, v4}, Lcom/google/glass/voice/network/DefaultRetryPolicy;-><init>(Lcom/google/common/base/Supplier;Lcom/google/android/shared/util/Clock;)V

    .line 363
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v4

    invoke-direct {v0, v6, v1, v4}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;-><init>(Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    return-object v0
.end method

.method private createRecognizer(Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    .locals 5
    .param p1, "speechLibFactory"    # Lcom/google/android/speech/SpeechLibFactory;

    .prologue
    const/4 v4, 0x0

    .line 239
    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating Recognizer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :try_start_0
    const-string v1, "GrecoExecutor"

    const/4 v2, 0x0

    .line 243
    invoke-static {v1, v2}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedBackgroundExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioController()Lcom/google/android/speech/audio/AudioController;

    move-result-object v2

    .line 242
    invoke-static {v1, v2, p1}, Lcom/google/android/speech/RecognizerImpl;->create(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "re":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error creating greco recognizer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized destroyContainer()V
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroy()V

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit v1

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getConectionConfig()Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/google/glass/voice/network/params/GlassConnectionConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/network/params/GlassConnectionConfig;-><init>()V

    return-object v0
.end method

.method public static getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/voice/R$raw;->greco_config:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 197
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 198
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    .line 201
    .local v1, "config":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    const/16 v8, 0x2ee

    invoke-static {v1, v8}, Lcom/google/glass/voice/network/VoiceSearchContainer;->setExtraSilenceAfterEndOfSpeechMsec(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;I)V

    .line 205
    const-string v8, "persist.voice.s3_server"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "customS3Server":Ljava/lang/String;
    const-string v8, "persist.voice.s3_tcp_port"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "customS3TcpPort":Ljava/lang/String;
    sget-object v8, Lcom/google/glass/util/Labs$Feature;->SPECIAL_S3_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 210
    .local v6, "useCustomS3":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 211
    iget-object v7, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v7, v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x3c

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/m/voice-search/up"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?sky=rad_b924-18a3-c08b-451c&pair="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 213
    iget-object v7, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v7, v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x3e

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/m/voice-search/down"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?sky=rad_b924-18a3-c08b-451c&pair="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 217
    iget-object v7, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 221
    :cond_0
    sget-object v7, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "S3 URL: %s | %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v11, v11, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {v11}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v11, v11, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 222
    invoke-virtual {v11}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 221
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-object v1

    .end local v6    # "useCustomS3":Z
    :cond_1
    move v6, v7

    .line 208
    goto/16 :goto_0

    .line 224
    .end local v0    # "bytes":[B
    .end local v1    # "config":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .end local v2    # "customS3Server":Ljava/lang/String;
    .end local v3    # "customS3TcpPort":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unable to load configuration"

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static declared-synchronized getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;
    .locals 3

    .prologue
    .line 157
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 160
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Voice Search Container not set."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 6

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 373
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/network/GlassLocationHelper;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v3, v4}, Lcom/google/glass/voice/network/GlassLocationHelper;-><init>(Lcom/google/glass/location/LocationManagerHelper;)V

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    invoke-static/range {v0 .. v5}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->create(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/Cookies;)Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    return-object v0
.end method

.method private getSpeechLibFactory(Lcom/google/android/speech/params/RecognitionEngineParams;Ljava/util/List;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
    .locals 6
    .param p1, "engineParams"    # Lcom/google/android/speech/params/RecognitionEngineParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/params/RecognitionEngineParams;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;)",
            "Lcom/google/glass/voice/network/SpeechLibFactoryImpl;"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "endpointerEventPreprocessors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;>;"
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;-><init>(Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/SpeechSettings;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    return-object v0
.end method

.method private static setExtraSilenceAfterEndOfSpeechMsec(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;I)V
    .locals 1
    .param p0, "config"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "silenceMs"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 189
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 190
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 391
    return-void
.end method

.method public getAudioController()Lcom/google/android/speech/audio/AudioController;
    .locals 8

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    if-nez v0, :cond_0

    .line 255
    new-instance v4, Lcom/google/glass/voice/network/VoiceSearchContainer$1;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$1;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 262
    .local v4, "dummySpeechSoundManager":Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    new-instance v5, Lcom/google/glass/voice/network/NoOpAudioRouter;

    invoke-direct {v5}, Lcom/google/glass/voice/network/NoOpAudioRouter;-><init>()V

    .line 264
    .local v5, "dummyAudioRouter":Lcom/google/android/voicesearch/audio/AudioRouter;
    new-instance v0, Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/shared/util/SpeechLevelSource;

    move-result-object v3

    new-instance v6, Lcom/google/android/voicesearch/LogExtras;

    .line 267
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/voicesearch/LogExtras;-><init>(Lcom/google/android/speech/utils/NetworkInformation;)V

    iget-object v7, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/audio/AudioController;-><init>(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;Lcom/google/android/voicesearch/LogExtras;Lcom/google/android/speech/SpeechLibFactory;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    .line 269
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioController;->setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V

    .line 272
    .end local v4    # "dummySpeechSoundManager":Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    .end local v5    # "dummyAudioRouter":Lcom/google/android/voicesearch/audio/AudioRouter;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    return-object v0
.end method

.method public getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    return-object v0
.end method

.method public getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    if-nez v1, :cond_0

    .line 307
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/glass/voice/network/VoiceSearchContainer;->LANGUAGE_PACK_FORMAT_VERSION:[I

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 309
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/embedded/Greco3DataManager;-><init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;[ILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 311
    .local v0, "dataManager":Lcom/google/android/speech/embedded/Greco3DataManager;
    new-instance v1, Lcom/google/glass/voice/network/VoiceSearchContainer$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$3;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->setPathDeleter(Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;)V

    .line 318
    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/android/speech/embedded/Greco3Preferences;Lcom/google/android/speech/embedded/EndpointerModelCopier;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 320
    .end local v0    # "dataManager":Lcom/google/android/speech/embedded/Greco3DataManager;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    return-object v1
.end method

.method public declared-synchronized getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 4

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    if-nez v0, :cond_0

    .line 381
    new-instance v2, Lcom/google/android/speech/utils/NetworkInformation;

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v1, "phone"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 383
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0, v1}, Lcom/google/android/speech/utils/NetworkInformation;-><init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;)",
            "Lcom/google/glass/voice/network/RecognizerController;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "endpointerEventPreprocessors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;>;"
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    move-result-object v8

    .line 412
    .local v8, "embeddedParams":Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    move-result-object v11

    .line 413
    .local v11, "networkParams":Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    new-instance v10, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-direct {v10, v0}, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;-><init>(Lcom/google/android/speech/SpeechSettings;)V

    .line 415
    .local v10, "musicParams":Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    new-instance v9, Lcom/google/android/speech/params/RecognitionEngineParams;

    const/4 v0, 0x0

    invoke-direct {v9, v8, v11, v10, v0}, Lcom/google/android/speech/params/RecognitionEngineParams;-><init>(Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;)V

    .line 418
    .local v9, "engineParams":Lcom/google/android/speech/params/RecognitionEngineParams;
    invoke-direct {p0, v9, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLibFactory(Lcom/google/android/speech/params/RecognitionEngineParams;Ljava/util/List;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    move-result-object v7

    .line 420
    .local v7, "speechLibFactory":Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController;

    .line 421
    invoke-direct {p0, v7}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createRecognizer(Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 424
    .end local v7    # "speechLibFactory":Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
    .end local v8    # "embeddedParams":Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .end local v9    # "engineParams":Lcom/google/android/speech/params/RecognitionEngineParams;
    .end local v10    # "musicParams":Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    .end local v11    # "networkParams":Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSpeechLevelSource()Lcom/google/android/shared/util/SpeechLevelSource;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method

.method public setNoSpeechDetectedTimeoutMsInConfig(I)V
    .locals 1
    .param p1, "timeoutMs"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 235
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 236
    return-void
.end method

.method public setSilenceAfterEndOfSpeechMsInConfig(I)V
    .locals 1
    .param p1, "silenceMs"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-static {v0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->setExtraSilenceAfterEndOfSpeechMsec(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;I)V

    .line 231
    return-void
.end method
