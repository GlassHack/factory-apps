.class public Lcom/google/glass/voice/embedded/MultiRecognizerController;
.super Ljava/lang/Object;
.source "MultiRecognizerController.java"


# static fields
.field private static final COMPILE_CONFIG:Ljava/lang/String; = "compile.config"

.field private static final HOTWORD_MAPPING_FILE:Ljava/lang/String; = "hotword_paths.config"

.field private static final MAX_DECODER_SLOTS:I = 0x32

.field private static final MULTI_RECOGNIZER_CONFIG:Ljava/lang/String; = "menus.config"

.field private static final PIPE_SIZE_BYTES:I

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioBuffer:Lcom/google/glass/util/BytePipe;

.field private audioLengthMillis:J

.field private final compileDir:Ljava/io/File;

.field private currentDecoderName:Ljava/lang/String;

.field private final decoderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private grecoDirectory:Ljava/io/File;

.field private hotwordAlignmentOffsetMillis:J

.field private hotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

.field private hotwordHandled:Z

.field private final locale:Ljava/util/Locale;

.field private modelsNeedReloading:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private nullDecoderWarningLogged:Z

.field private final pathParamCache:Lcom/google/glass/voice/embedded/PathParamsCache;

.field private recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

.field private final recognizerCallback:Lcom/google/speech/recognizer/RecognizerCallback;

.field private recognizerThread:Ljava/lang/Thread;

.field private resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 77
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->PIPE_SIZE_BYTES:I

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Lcom/google/glass/voice/embedded/PathParamsCache;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 6
    .param p1, "grecoDirectory"    # Ljava/io/File;
    .param p2, "compileDirectory"    # Ljava/io/File;
    .param p3, "currentLocale"    # Ljava/util/Locale;
    .param p4, "pathParamsCache"    # Lcom/google/glass/voice/embedded/PathParamsCache;
    .param p5, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x33

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    .line 91
    iput-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    .line 107
    iput-boolean v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordHandled:Z

    .line 110
    iput-boolean v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->modelsNeedReloading:Z

    .line 123
    iput-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->currentDecoderName:Ljava/lang/String;

    .line 129
    iput-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 131
    iput-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->grecoDirectory:Ljava/io/File;

    .line 420
    new-instance v0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;-><init>(Lcom/google/glass/voice/embedded/MultiRecognizerController;)V

    iput-object v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerCallback:Lcom/google/speech/recognizer/RecognizerCallback;

    .line 158
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->grecoDirectory:Ljava/io/File;

    .line 159
    iput-object p2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->compileDir:Ljava/io/File;

    .line 160
    iput-object p3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->locale:Ljava/util/Locale;

    .line 161
    iput-object p4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->pathParamCache:Lcom/google/glass/voice/embedded/PathParamsCache;

    .line 162
    iput-object p5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getHardcodedHotwordMapping()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/glass/voice/embedded/PathParamsCache;->initialize(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/speech/recognizer/MultiRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordHandled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/voice/embedded/MultiRecognizerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordHandled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/glass/util/BytePipe;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p0, "x0"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getHotwordResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/embedded/MultiRecognizerController;Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;
    .param p1, "x1"    # Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/embedded/MultiRecognizerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    return-wide v0
.end method

.method private declared-synchronized cancelRecognition()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 489
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->setDecoder(Ljava/lang/String;)Z

    .line 490
    iget-object v3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 491
    iget-object v3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v3}, Lcom/google/glass/util/BytePipe;->clear()V

    .line 492
    iget-object v3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    sget-object v4, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 513
    :goto_0
    monitor-exit p0

    return v2

    .line 496
    :cond_0
    :try_start_1
    sget-object v4, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Cancelling Recognition: "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v3}, Lcom/google/speech/recognizer/MultiRecognizer;->cancel()I

    move-result v0

    .line 498
    .local v0, "cancelStatus":I
    if-eqz v0, :cond_2

    .line 499
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "cancelRecognition error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    .end local v0    # "cancelStatus":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 496
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 504
    .restart local v0    # "cancelStatus":I
    :cond_2
    :try_start_3
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Joining recognition thread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 506
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Joined"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    .line 513
    .end local v0    # "cancelStatus":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 507
    .restart local v0    # "cancelStatus":I
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error joining recognizerThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized compileHotwordGraph(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)Z
    .locals 9
    .param p1, "params"    # Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 551
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "compile.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 553
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x19

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Cannot find config file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :goto_0
    monitor-exit p0

    return v4

    .line 557
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "compile.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 559
    .local v1, "configBytes":[B
    new-instance v0, Lcom/google/glass/voice/embedded/GlassHotwordGraphCompiler;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/GlassHotwordGraphCompiler;-><init>()V

    .line 560
    .local v0, "compiler":Lcom/google/speech/recognizer/HotwordGraphCompiler;
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->initFromProto([B[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 561
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Hotword compiler error in initFromProto."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 551
    .end local v0    # "compiler":Lcom/google/speech/recognizer/HotwordGraphCompiler;
    .end local v1    # "configBytes":[B
    .end local v2    # "configFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 565
    .restart local v0    # "compiler":Lcom/google/speech/recognizer/HotwordGraphCompiler;
    .restart local v1    # "configBytes":[B
    .restart local v2    # "configFile":Ljava/io/File;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->compileDir:Ljava/io/File;

    .line 566
    .local v3, "outputDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 567
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x25

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Failed to create output directory: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V

    goto :goto_0

    .line 572
    :cond_2
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->compile([BLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 573
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Native compilation error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V

    goto/16 :goto_0

    .line 578
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->modelsNeedReloading:Z

    .line 579
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 580
    goto/16 :goto_0
.end method

.method private getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "result"    # Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .param p2, "hotword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    .line 615
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordStartTimeUsec()J

    move-result-wide v12

    add-long/2addr v5, v12

    const-wide/16 v12, 0x3e8

    div-long v9, v5, v12

    .line 620
    .local v9, "hotwordStartAbsolute":J
    iget-wide v7, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    .line 622
    .local v7, "hotwordEndAbsolute":J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordAlignmentOffsetMillis:J

    sub-long v1, v9, v5

    .line 623
    .local v1, "relativeStart":J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordAlignmentOffsetMillis:J

    sub-long v3, v7, v5

    .line 625
    .local v3, "relativeEnd":J
    new-instance v0, Lcom/google/glass/voice/AlignmentInfo;

    .line 626
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 627
    .local v0, "info":Lcom/google/glass/voice/AlignmentInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-object v11
.end method

.method private static getConfigBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "configPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 310
    :try_start_0
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Loading config: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 316
    :goto_1
    return-object v0

    .line 310
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error reading "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    const/4 v0, 0x0

    goto :goto_1

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 199
    .local v6, "phrases":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 200
    new-instance v8, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-direct {v8}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;-><init>()V

    array-length v10, v6

    .line 201
    invoke-virtual {v8, v10}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setNumHotwords(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v8

    iget-object v10, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->locale:Ljava/util/Locale;

    .line 202
    invoke-static {v10}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setLocale(Ljava/lang/String;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v8

    .line 203
    invoke-virtual {v8, v12}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setPronDatabaseVersion(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v8

    .line 204
    invoke-virtual {v8, v12}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setClientproxyGetPronsVersion(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v0

    .line 206
    .local v0, "compilationLog":Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    new-instance v3, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v3}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    .line 208
    .local v3, "hotwordCompileParams":Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->pathParamCache:Lcom/google/glass/voice/embedded/PathParamsCache;

    invoke-virtual {v8, v6, v0}, Lcom/google/glass/voice/embedded/PathParamsCache;->getPathParams([Ljava/lang/String;Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;)Ljava/util/Map;

    move-result-object v5

    .line 209
    .local v5, "pathParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    new-array v10, v11, [Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/speech/recognizer/api/Network$PathParams;

    iput-object v8, v3, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 211
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "No PathParams to compile."

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v9

    .line 253
    :goto_0
    return-object v2

    .line 217
    :cond_0
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 218
    .local v4, "hotwordCompileParamsHash":Ljava/lang/Integer;
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, "decoderName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 221
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/16 v10, 0x32

    if-ge v8, v10, :cond_1

    .line 223
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "menu_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Creating decoder. [name=%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->setOutputFilenamePrefix(Ljava/lang/String;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 238
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Compiling recognizer. [name=%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0, v6, v5}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logVoiceConfigCompilation([Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "HotwordCompileParams [params=%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance v8, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v8}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    .line 243
    .local v1, "compilationTiming":Lcom/google/glass/time/Stopwatch;
    invoke-direct {p0, v3}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->compileHotwordGraph(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setCompilationTime(J)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 245
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 246
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setHotwordCompilation(Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v9

    .line 245
    invoke-virtual {v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 247
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->modelsNeedReloading:Z

    .line 249
    monitor-exit p0

    goto/16 :goto_0

    .line 254
    .end local v1    # "compilationTiming":Lcom/google/glass/time/Stopwatch;
    .end local v2    # "decoderName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 227
    .restart local v2    # "decoderName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 228
    .local v7, "staleParams":I
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decoderName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 229
    .restart local v2    # "decoderName":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->decoderCache:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Evicted decoder least recently used decoder."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 235
    .end local v7    # "staleParams":I
    :cond_2
    monitor-exit p0

    goto/16 :goto_0

    .line 252
    .restart local v1    # "compilationTiming":Lcom/google/glass/time/Stopwatch;
    :cond_3
    sget-object v8, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed to compile hotword graph. [decoder_name=%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v9

    goto/16 :goto_0
.end method

.method private static getHotwordResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 7
    .param p0, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 461
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 474
    :goto_0
    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 467
    .local v0, "partialResult":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    iget-object v2, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v2, v2, v4

    .line 468
    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordFired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x19

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Hotword "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 474
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/google/glass/voice/embedded/MultiRecognizerController;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grecoDirectory"    # Ljava/io/File;
    .param p3, "compileDirectory"    # Ljava/io/File;

    .prologue
    .line 145
    const-class v6, Lcom/google/glass/voice/embedded/MultiRecognizerController;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    iget-object v0, v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing MultiRecognizerController: START"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .line 148
    invoke-static {}, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;->getInstance()Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;->get(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/glass/voice/embedded/PathParamsCache;

    move-result-object v4

    .line 149
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/embedded/MultiRecognizerController;-><init>(Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Lcom/google/glass/voice/embedded/PathParamsCache;Lcom/google/glass/userevent/UserEventHelper;)V

    sput-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .line 150
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing MultiRecognizerController: END"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_1
    sget-object v0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->instance:Lcom/google/glass/voice/embedded/MultiRecognizerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pathComponents"    # [Ljava/lang/String;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->grecoDirectory:Ljava/io/File;

    .line 585
    .local v1, "file":Ljava/io/File;
    array-length v4, p1

    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 586
    .local v0, "component":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 588
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSearchPath()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 595
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->compileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->grecoDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private logVoiceConfigCompilation([Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "customPhrases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/speech/recognizer/api/Network$PathParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "pathParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 178
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/google/glass/logging/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    const-string v4, "Phrases: "

    const-string v2, ", "

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v6, v3, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "%-30s %-50s"

    .line 181
    .local v0, "columnFormat":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Phrase"

    aput-object v4, v3, v7

    const-string v4, "Symbol"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;>;"
    sget-object v4, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v6, v4, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    .end local v0    # "columnFormat":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;>;"
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private declared-synchronized reinitialize(Ljava/lang/String;)Z
    .locals 10
    .param p1, "decoderName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Initializing glass multi recognizer with search path: "

    .line 324
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 323
    invoke-interface {v7, v6, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->modelsNeedReloading:Z

    .line 328
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->cancelRecognition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 329
    .local v0, "cancelledSuccesfully":Z
    if-nez v0, :cond_2

    .line 366
    :cond_0
    :goto_1
    monitor-exit p0

    return v4

    .line 324
    .end local v0    # "cancelledSuccesfully":Z
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 333
    .restart local v0    # "cancelledSuccesfully":Z
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    if-eqz v6, :cond_3

    .line 334
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v6}, Lcom/google/speech/recognizer/MultiRecognizer;->delete()V

    .line 337
    :cond_3
    new-instance v6, Lcom/google/glass/voice/embedded/GlassMultiRecognizer;

    invoke-direct {v6}, Lcom/google/glass/voice/embedded/GlassMultiRecognizer;-><init>()V

    iput-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    .line 338
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    iget-object v7, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerCallback:Lcom/google/speech/recognizer/RecognizerCallback;

    invoke-virtual {v6, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I

    .line 340
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    if-eqz v6, :cond_4

    .line 341
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-virtual {v6}, Lcom/google/glass/voice/embedded/GlassResourceManager;->delete()V

    .line 344
    :cond_4
    new-instance v6, Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-direct {v6}, Lcom/google/glass/voice/embedded/GlassResourceManager;-><init>()V

    iput-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 345
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "menus.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 346
    .local v1, "configBytes":[B
    if-eqz v1, :cond_0

    .line 350
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 351
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->loadResourcesFromProto(Lcom/google/speech/recognizer/ResourceManager;[B[Ljava/lang/String;)I

    move-result v3

    .line 352
    .local v3, "resourceManagerStatus":I
    if-eqz v3, :cond_5

    .line 353
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "menus.config"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x35

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "resourceManager.initFromProto error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 358
    :cond_5
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    iget-object v7, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-virtual {v6, v1, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I

    move-result v2

    .line 359
    .local v2, "recognizerStatus":I
    if-eqz v2, :cond_6

    .line 360
    sget-object v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "menus.config"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x30

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "recognizer.initFromProto error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 365
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->startRecognition(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 366
    goto/16 :goto_1
.end method

.method private declared-synchronized setDecoder(Ljava/lang/String;)Z
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 294
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->currentDecoderName:Ljava/lang/String;

    .line 296
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "setDecoder to: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->currentDecoderName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v2, p1}, Lcom/google/speech/recognizer/MultiRecognizer;->setConfig(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, "status":I
    if-eqz v0, :cond_1

    .line 300
    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "setDecoder to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v0    # "status":I
    :goto_1
    monitor-exit p0

    return v1

    .line 296
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 304
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private startRecognition(Ljava/lang/String;)Z
    .locals 8
    .param p1, "decoderName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    iget-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 376
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting recognition that is already running."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    monitor-enter v4

    .line 380
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordHandled:Z

    .line 381
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iput-wide v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    .line 383
    iput-wide v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordAlignmentOffsetMillis:J

    .line 385
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    .line 386
    .local v0, "sessionParams":Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 387
    const/high16 v4, 0x467a0000    # 16000.0f

    invoke-virtual {v0, v4}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 389
    new-instance v4, Lcom/google/glass/util/BytePipe;

    sget v5, Lcom/google/glass/voice/embedded/MultiRecognizerController;->PIPE_SIZE_BYTES:I

    sget-object v6, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/util/BytePipe;-><init>(ILcom/google/glass/logging/FormattingLogger;)V

    iput-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    .line 390
    iget-object v4, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    iget-object v5, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v4, v5}, Lcom/google/speech/recognizer/MultiRecognizer;->setAudioReader(Ljava/io/InputStream;)I

    .line 392
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->setDecoder(Ljava/lang/String;)Z

    move-result v1

    .line 393
    .local v1, "setSuccessfully":Z
    if-nez v1, :cond_1

    .line 416
    :goto_0
    return v2

    .line 381
    .end local v0    # "sessionParams":Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .end local v1    # "setSuccessfully":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 397
    .restart local v0    # "sessionParams":Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .restart local v1    # "setSuccessfully":Z
    :cond_1
    new-instance v2, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;

    const-string v4, "MultiRecognizerThread"

    invoke-direct {v2, p0, v4, v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;-><init>(Lcom/google/glass/voice/embedded/MultiRecognizerController;Ljava/lang/String;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)V

    iput-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    .line 415
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move v2, v3

    .line 416
    goto :goto_0
.end method


# virtual methods
.method public getHardcodedHotwordMapping()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 168
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hotword_paths.config"

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, "cachedBytes":[B
    :try_start_0
    invoke-static {v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->parseFrom([B)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing HotwordCompileParams."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public preloadDecoder(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAlignment()V
    .locals 2

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    iput-wide v0, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordAlignmentOffsetMillis:J

    .line 604
    return-void
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 8
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->pathParamCache:Lcom/google/glass/voice/embedded/PathParamsCache;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/embedded/PathParamsCache;->getPhraseFromSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "phrase":Ljava/lang/String;
    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/voice/embedded/MultiRecognizerController;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Found command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for symbol "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getVoiceCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized switchDecoders(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)Z
    .locals 2
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "hotwordCallback"    # Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .prologue
    const/4 v1, 0x0

    .line 264
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->hotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .line 265
    if-nez p1, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->cancelRecognition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 284
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 270
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "decoderName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->nullDecoderWarningLogged:Z

    .line 276
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->modelsNeedReloading:Z

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->reinitialize(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->currentDecoderName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 281
    invoke-direct {p0, v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->startRecognition(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 284
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->setDecoder(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 264
    .end local v0    # "decoderName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)V
    .locals 7
    .param p1, "audio"    # Ljava/nio/ByteBuffer;
    .param p2, "sampleRate"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 521
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->currentDecoderName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 522
    iget-boolean v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->nullDecoderWarningLogged:Z

    if-nez v1, :cond_0

    .line 523
    sget-object v1, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Writing audio to a recognizer without a decoder."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iput-boolean v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->nullDecoderWarningLogged:Z

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-wide/16 v1, 0x3e80

    cmp-long v1, p2, v1

    if-eqz v1, :cond_2

    .line 530
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Must have sample rate of 16000"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_2
    iget-wide v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioLengthMillis:J

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/embedded/MultiRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error piping audio."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
