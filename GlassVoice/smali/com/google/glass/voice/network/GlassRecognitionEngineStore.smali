.class public Lcom/google/glass/voice/network/GlassRecognitionEngineStore;
.super Ljava/lang/Object;
.source "GlassRecognitionEngineStore.java"

# interfaces
.implements Lcom/google/android/speech/RecognitionEngineStore;


# static fields
.field static final MAX_REQUEST_PRODUCER_THREADS:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private embeddedRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

.field private final engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

.field private final localExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final networkExecutorService:Ljava/util/concurrent/ExecutorService;

.field private networkRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/params/RecognitionEngineParams;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "engineParams"    # Lcom/google/android/speech/params/RecognitionEngineParams;
    .param p2, "localExecutorService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "networkExecutorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    .line 56
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->localExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-object p3, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    return-void
.end method

.method private getEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;
    .locals 11

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->embeddedRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/RecognitionEngineParams;->getEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    move-result-object v8

    .line 130
    .local v8, "params":Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    new-instance v7, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;

    invoke-direct {v7, p0}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;-><init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore;)V

    .line 145
    .local v7, "factory":Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    iget-object v9, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->localExecutorService:Ljava/util/concurrent/ExecutorService;

    const-class v10, Lcom/google/android/speech/engine/RecognitionEngine;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;

    .line 147
    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getSamplingRate()I

    move-result v2

    .line 148
    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getBytesPerSample()I

    move-result v3

    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v4

    .line 149
    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getCallbackFactory()Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getModeSelector()Lcom/google/android/speech/embedded/Greco3ModeSelector;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;IILcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;)V

    .line 145
    invoke-static {v9, v10, v0}, Lcom/google/android/shared/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/engine/RecognitionEngine;

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->embeddedRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    .line 152
    .end local v7    # "factory":Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    .end local v8    # "params":Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->embeddedRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    return-object v0
.end method

.method private getNetworkEngine()Lcom/google/android/speech/engine/RecognitionEngine;
    .locals 8

    .prologue
    .line 85
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/RecognitionEngineParams;->getNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    move-result-object v1

    .line 87
    .local v1, "params":Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getVoiceSearchRequestProducerFactory(Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;)Lcom/google/android/speech/network/producers/RequestProducerFactory;

    move-result-object v0

    .line 88
    .local v0, "factory":Lcom/google/android/speech/network/producers/RequestProducerFactory;
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkExecutorService:Ljava/util/concurrent/ExecutorService;

    const-class v3, Lcom/google/android/speech/engine/RecognitionEngine;

    new-instance v4, Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    .line 90
    invoke-virtual {v1}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getS3ConnectionFactory()Lcom/google/android/s3/S3ConnectionFactory;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getRetryPolicy()Lcom/google/android/speech/engine/RetryPolicy;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;-><init>(Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/network/producers/RequestProducerFactory;)V

    .line 88
    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/speech/engine/RecognitionEngine;

    iput-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    .line 93
    .end local v0    # "factory":Lcom/google/android/speech/network/producers/RequestProducerFactory;
    .end local v1    # "params":Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->networkRecognitionEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    return-object v2
.end method

.method private static getRequestProducerExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v2, 0x1

    .line 120
    .local v2, "removeIdleThreads":Z
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 121
    .local v0, "enableLogging":Z
    :goto_0
    const-string v1, "VoiceSearchRequestProducerFactory"

    .line 122
    .local v1, "name":Ljava/lang/String;
    const/16 v4, 0xa

    new-instance v5, Lcom/google/glass/async/PriorityThreadFactory;

    invoke-direct {v5, v3, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v4, v5, v2, v0}, Lcom/google/android/shared/util/GlassConcurrentUtils;->createSafeExecutor(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;

    move-result-object v3

    return-object v3

    .end local v0    # "enableLogging":Z
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public getEngines(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/speech/engine/RecognitionEngine;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "engineIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 62
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "#getEngines"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 67
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 77
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "#getEngines: Unknown engine index"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Using embedded"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Using network"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getNetworkEngine()Lcom/google/android/speech/engine/RecognitionEngine;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "index":I
    :cond_0
    return-object v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getVoiceSearchRequestProducerFactory(Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;)Lcom/google/android/speech/network/producers/RequestProducerFactory;
    .locals 3
    .param p1, "params"    # Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$1;

    invoke-static {}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getRequestProducerExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$1;-><init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    return-object v0
.end method
