.class public Lcom/google/glass/voice/VoiceEngine;
.super Ljava/lang/Object;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;,
        Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;
    }
.end annotation


# static fields
.field static final HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

.field private static final HOTWORD_REFEED_BYTES:I

.field static final NAVIGATION_LITERAL:Ljava/lang/String; = "get directions to"

.field public static final PER_RECOGNIZER_AUDIO_LOGGING:Z

.field static backgroundExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

.field private final activeRecognizerLock:Ljava/lang/Object;

.field private final audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private final audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private final configChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private volatile currentConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final currentVoiceConfigSession:Ljava/util/concurrent/atomic/AtomicLong;

.field private final httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

.field private interleaver:Lcom/google/glass/voice/InterleavingInputStream;

.field private lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

.field private volatile lastRecognizerUnprocessedBytes:I

.field private final listener:Lcom/google/glass/voice/VoiceServiceListener;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

.field private mockAudio:[B

.field private final networkHealthTracker:Lcom/google/glass/voice/network/NetworkHealthTracker;

.field powerHelper:Lcom/google/glass/util/PowerHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final publishingHotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

.field private final publishingHotwordLock:Ljava/lang/Object;

.field final pushToRecognizers:Ljava/lang/Runnable;

.field recognizerController:Lcom/google/glass/voice/network/RecognizerController;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

.field private final resampleInputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

.field private final savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field private volatile shouldDisallowVoice:Z

.field final shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private transcriptionDisabled:Z

.field private volatile wantAudioData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 232
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_REFEED_BYTES:I

    .line 375
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v2, -0x8

    const-string v3, "VoiceEngine/backgroundExecutor"

    invoke-direct {v1, v2, v3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 380
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 381
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 380
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 10
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "voiceServiceListener"    # Lcom/google/glass/voice/VoiceServiceListener;

    .prologue
    const-wide/16 v8, 0x3e80

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->publishingHotwordLock:Ljava/lang/Object;

    .line 88
    iput v5, p0, Lcom/google/glass/voice/VoiceEngine;->lastRecognizerUnprocessedBytes:I

    .line 92
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentVoiceConfigSession:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    iput-boolean v5, p0, Lcom/google/glass/voice/VoiceEngine;->shouldDisallowVoice:Z

    .line 116
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$1;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pushToRecognizers:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$2;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->publishingHotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .line 192
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$3;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->resampleInputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    .line 215
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizerLock:Ljava/lang/Object;

    .line 386
    invoke-static {v8, v9}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 390
    iput-object v7, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 398
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    .line 399
    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 401
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 402
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    .line 403
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getEndpointerEventPreprocessors()Ljava/util/List;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 405
    new-instance v1, Lcom/google/glass/voice/CommandRecognizerLoader;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;

    move-result-object v3

    .line 406
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    .line 407
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 408
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 409
    invoke-static {v1, v2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 410
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    sget-wide v1, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    mul-long/2addr v1, v8

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 412
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 413
    new-array v0, v6, [Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;

    invoke-direct {v1, p0, v7}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    .line 414
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    new-array v1, v6, [Lcom/google/glass/voice/VoiceConfig;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->loadAsync(Ljava/util/Collection;)V

    .line 416
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 418
    new-instance v0, Lcom/google/glass/voice/network/NetworkHealthTracker;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/NetworkHealthTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->networkHealthTracker:Lcom/google/glass/voice/network/NetworkHealthTracker;

    .line 420
    invoke-static {}, Lcom/google/android/shared/logger/EventLogger;->init()V

    .line 421
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->publishingHotwordLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/InterleavingInputStream;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # Lcom/google/glass/voice/InterleavingInputStream;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_REFEED_BYTES:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/CircularByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentVoiceConfigSession:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->blockingSetConfig(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->asRecognizerIntent(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/CommandRecognizerLoader;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceEngine;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/audio/AudioSaver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/HotwordResult;)Lcom/google/glass/voice/HotwordResult;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastRecognizerUnprocessedBytes:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/voice/VoiceEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/google/glass/voice/VoiceEngine;->lastRecognizerUnprocessedBytes:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p1, "x1"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method

.method private static asRecognizerIntent(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;
    .locals 2
    .param p0, "nextConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 609
    new-instance v0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private assertBackgroundThread()V
    .locals 1

    .prologue
    .line 945
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 946
    return-void
.end method

.method private blockingSetConfig(Landroid/content/Intent;)V
    .locals 9
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 668
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 669
    const-class v4, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 670
    const-string/jumbo v4, "voiceConfig"

    .line 671
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 672
    .local v1, "newConfig":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "allowScreenOff"

    .line 673
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v0, v3

    .line 675
    .local v0, "allowScreenOff":Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "setConfig called with %s. current config is %s."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v2

    iget-object v7, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    if-nez v0, :cond_1

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v4}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 681
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 687
    :cond_1
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/google/glass/util/Labs$Feature;->NO_AFFORD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 688
    invoke-virtual {v4}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/google/glass/voice/VoiceEngine;->shouldDisallowVoice:Z

    .line 689
    iget-boolean v4, p0, Lcom/google/glass/voice/VoiceEngine;->shouldDisallowVoice:Z

    if-eqz v4, :cond_2

    .line 690
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 693
    :cond_2
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 694
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 695
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Transition to %s requested, but already in that config."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    aput-object v6, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Resuming pushing to recognizers."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startPushingToRecognizers()V

    .line 702
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v2, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V

    .line 750
    :goto_2
    return-void

    .end local v0    # "allowScreenOff":Z
    :cond_4
    move v0, v2

    .line 673
    goto/16 :goto_0

    .restart local v0    # "allowScreenOff":Z
    :cond_5
    move v4, v2

    .line 688
    goto :goto_1

    .line 706
    :cond_6
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentVoiceConfigSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 707
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v4}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadReplacedRecognizers()V

    .line 709
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "VoiceConfig changing from %s to %s"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/VoiceEngine;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 711
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v3, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    .line 712
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 714
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 715
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopHotwordRecognition()V

    .line 716
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 717
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    .line 718
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 748
    :goto_3
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 749
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v2, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_2

    .line 720
    :cond_7
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 723
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 726
    :cond_8
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 727
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 730
    :cond_9
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 731
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopHotwordRecognition()V

    .line 735
    :cond_a
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startMicrophone()V

    .line 738
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v2, v3, :cond_b

    .line 739
    invoke-direct {p0, v1, p1}, Lcom/google/glass/voice/VoiceEngine;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;Landroid/content/Intent;)V

    .line 741
    :cond_b
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 742
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V

    .line 745
    :cond_c
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startPushingToRecognizers()V

    goto :goto_3
.end method

.method private final createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating MIS..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$7;

    invoke-static {}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    const/16 v2, 0x3e80

    invoke-direct {v1, p0, v0, v2}, Lcom/google/glass/voice/VoiceEngine$7;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/ConcurrentAudioInterface;I)V

    return-object v1
.end method

.method private createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 3

    .prologue
    .line 468
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$8;

    invoke-static {}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    const/16 v2, 0x3e80

    invoke-direct {v1, p0, v0, v2}, Lcom/google/glass/voice/VoiceEngine$8;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/ConcurrentAudioInterface;I)V

    return-object v1
.end method

.method private final createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->getInstance()Lcom/google/glass/voice/RecognizerFactory;

    move-result-object v0

    return-object v0
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 486
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 487
    .local v0, "exceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine$9;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 585
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 587
    :cond_0
    return-void
.end method

.method private getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;
    .locals 2

    .prologue
    .line 939
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    monitor-exit v1

    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final getEndpointerEventPreprocessors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private handleAudioData([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 547
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 553
    .local v0, "audioRecordingBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->writeAudio(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v1

    .line 565
    .local v1, "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    if-nez v1, :cond_3

    .line 566
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Ignoring audio due to null recognizer!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 572
    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v3

    int-to-long v3, v3

    .line 571
    invoke-interface {v1, v2, v3, v4}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)V

    .line 573
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    goto :goto_0

    .line 556
    .end local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 2
    .param p0, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkHealthTrackingEnabled()Z
    .locals 1

    .prologue
    .line 916
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->OEI_NHT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method

.method private isTranscriptionDisabled()Z
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->transcriptionDisabled:Z

    return v0
.end method

.method private onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .param p1, "from"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "to"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 793
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 794
    .local v0, "configChangeListener":Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 796
    .end local v0    # "configChangeListener":Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    return-void
.end method

.method private setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 923
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 925
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 926
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting active recognizer: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->publishingHotwordCallback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    invoke-interface {v0, v2}, Lcom/google/glass/voice/HotwordRecognizer;->activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V

    .line 928
    monitor-exit v1

    .line 929
    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 789
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 866
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting voice recognition with config: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 868
    return-void
.end method

.method private startMicrophone()V
    .locals 4

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 827
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 835
    :cond_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception starting microphone"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;Landroid/content/Intent;)V
    .locals 3
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 881
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isTranscriptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Transcription is disabled; not starting network recognizer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->resampleInputStreamListener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;)V

    .line 888
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isNetworkHealthTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->networkHealthTracker:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/NetworkHealthTracker;->startTrackingNetworkHealth()V

    goto :goto_0
.end method

.method private startPushingToRecognizers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting pushToRecognizers Runnable."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pushToRecognizers:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempted to start pushing to recognizers, but we\'re already pushing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopHotwordRecognition()V
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping hotword recognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 873
    return-void
.end method

.method private stopMicrophone()V
    .locals 1

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 843
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 844
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 4

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 903
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isTranscriptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Transcription is disabled; not stopping network recognizer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 909
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isNetworkHealthTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->networkHealthTracker:Lcom/google/glass/voice/network/NetworkHealthTracker;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/NetworkHealthTracker;->stopTrackingNetworkHealthDelayed(J)V

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .param p1, "voiceInputCallback"    # Lcom/google/glass/voice/network/VoiceInputCallback;

    .prologue
    .line 342
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$4;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/VoiceInputCallback;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method cleanupSynchronously()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Destroying VoiceEngine"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 529
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->unloadAllConfigs()V

    .line 531
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 533
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 538
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 539
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to shutdown background executor."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$5;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 958
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Active recognizer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const-string v1, "Config change listeners: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 961
    .local v0, "listener":Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    const-string v3, "  "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 963
    .end local v0    # "listener":Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 964
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Last hotword result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 967
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Should push audio to recognizers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    const-string v1, "Recognizer loader:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->dumpState(Ljava/io/PrintWriter;)V

    .line 970
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 3

    .prologue
    .line 363
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->currentVoiceConfigSession:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 364
    .local v0, "sessionWhenReceivingCall":J
    new-instance v2, Lcom/google/glass/voice/VoiceEngine$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/voice/VoiceEngine$6;-><init>(Lcom/google/glass/voice/VoiceEngine;J)V

    invoke-direct {p0, v2}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method public loadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->loadAsync(Ljava/util/Collection;)V

    .line 805
    return-void
.end method

.method onScreenOff()V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$11;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$11;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 773
    return-void
.end method

.method onScreenOn()V
    .locals 1

    .prologue
    .line 776
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$12;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$12;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 786
    return-void
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 8
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 591
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 592
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "publishCommand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 594
    iget-boolean v3, p0, Lcom/google/glass/voice/VoiceEngine;->shouldDisallowVoice:Z

    if-eqz v3, :cond_1

    .line 595
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    move v1, v2

    .line 605
    :cond_0
    :goto_0
    return v1

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v3, p1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 599
    .local v0, "nextConfig":Lcom/google/glass/voice/VoiceConfig;
    if-eqz v0, :cond_0

    .line 600
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "publishCommand returned new config. [config=%s]"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfig;)V

    move v1, v2

    .line 602
    goto :goto_0
.end method

.method setConfig(Landroid/content/Intent;)V
    .locals 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 659
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$10;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$10;-><init>(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method setConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    invoke-static {p1}, Lcom/google/glass/voice/VoiceEngine;->asRecognizerIntent(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Landroid/content/Intent;)V

    .line 654
    return-void
.end method

.method public setMockAudio([B)V
    .locals 4
    .param p1, "mockAudio"    # [B

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "setMockAudio"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    if-ne p1, v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 431
    if-eqz p1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-nez v1, :cond_2

    .line 433
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    .line 434
    .local v0, "mockmis":Lcom/google/glass/voice/MockMicrophoneInputStream;
    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 436
    .end local v0    # "mockmis":Lcom/google/glass/voice/MockMicrophoneInputStream;
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedCannedAudio(Ljava/io/InputStream;)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    goto :goto_0
.end method

.method public setTranscriptionDisabled(Z)V
    .locals 0
    .param p1, "transcriptionDisabled"    # Z

    .prologue
    .line 973
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceEngine;->transcriptionDisabled:Z

    .line 974
    return-void
.end method

.method public setWantAudioData(Z)V
    .locals 0
    .param p1, "wantAudioData"    # Z

    .prologue
    .line 953
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    .line 954
    return-void
.end method

.method startListening(Landroid/content/Intent;)V
    .locals 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 617
    .local v1, "extras":Landroid/os/Bundle;
    const-class v4, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 619
    const-string/jumbo v4, "voiceConfig"

    .line 620
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 621
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    if-nez v0, :cond_0

    .line 622
    const-string v4, "embeddedRecognition"

    .line 623
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 624
    .local v2, "isEmbeddedRecognition":Z
    const-string v4, "extraVoiceCommands"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "voiceCommands":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 627
    sget-object v4, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 635
    :goto_0
    const-string/jumbo v4, "voiceConfig"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    .end local v2    # "isEmbeddedRecognition":Z
    .end local v3    # "voiceCommands":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Landroid/content/Intent;)V

    .line 639
    return-void

    .line 628
    .restart local v2    # "isEmbeddedRecognition":Z
    .restart local v3    # "voiceCommands":[Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 630
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    .end local v0    # "config":Lcom/google/glass/voice/VoiceConfig;
    invoke-direct {v0, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    .restart local v0    # "config":Lcom/google/glass/voice/VoiceConfig;
    goto :goto_0

    .line 632
    :cond_2
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No config specified or implied by recognizerIntent, falling back to OFF"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method stopListening()V
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 646
    return-void
.end method

.method public unloadAllConfigs()V
    .locals 1

    .prologue
    .line 812
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$13;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$13;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method public unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 809
    return-void
.end method
