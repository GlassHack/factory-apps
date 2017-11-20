.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String;

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x7d0

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x200000000L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private authUtils:Lcom/google/glass/auth/AuthUtils;

.field private httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

.field protected userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "private-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using testing cache directory at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    goto :goto_0
.end method

.method private maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 240
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 241
    invoke-virtual {p1}, Lcom/google/glass/inject/InitializableProvider;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    if-nez v0, :cond_2

    .line 249
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 252
    :cond_2
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    const/4 v2, 0x1

    .line 255
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    .line 258
    new-instance v1, Lcom/google/glass/app/GlassApplication$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/glass/app/GlassApplication$5;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication$5;->start()V

    .line 262
    invoke-virtual {p1, v0}, Lcom/google/glass/inject/InitializableProvider;->init(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3, v0}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    return-object v1
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 69
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 70
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->setUserEventHelper(Lcom/google/glass/userevent/UserEventHelper;)V

    .line 74
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, p0}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManagerProvider;->init(Ljava/lang/Object;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Lcom/google/glass/app/GlassApplication$1;

    invoke-direct {v1, p0}, Lcom/google/glass/app/GlassApplication$1;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->init(Lcom/google/common/base/aw;)V

    .line 90
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Lcom/google/glass/app/GlassApplication$2;

    invoke-direct {v1, p0}, Lcom/google/glass/app/GlassApplication$2;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->init(Lcom/google/common/base/aw;)V

    .line 100
    :cond_2
    invoke-static {}, Lcom/google/glass/logging/PiiHasher$Provider;->getInstance()Lcom/google/glass/logging/PiiHasher$Provider;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/glass/logging/PiiHasher$Provider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    new-instance v1, Lcom/google/glass/app/GlassApplication$3;

    invoke-direct {v1, p0}, Lcom/google/glass/app/GlassApplication$3;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/PiiHasher$Provider;->init(Lcom/google/common/base/aw;)V

    .line 115
    :cond_3
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryProvider()Lcom/google/glass/inject/InitializableProvider;

    move-result-object v0

    .line 116
    const-string v1, "primary"

    invoke-direct {p0, v0, v1}, Lcom/google/glass/app/GlassApplication;->maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getSecondaryProvider()Lcom/google/glass/inject/InitializableProvider;

    move-result-object v0

    .line 121
    const-string v1, "secondary"

    invoke-direct {p0, v0, v1}, Lcom/google/glass/app/GlassApplication;->maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    new-instance v1, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    iget-object v2, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/net/ProtoRequestDispatcherPool;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->init(Ljava/lang/Object;)V

    .line 133
    :cond_4
    invoke-static {p0}, Lcom/google/glass/location/GlassLocationManager;->init(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-static {p0, v0}, Lcom/google/glass/mosaic/MosaicHelper;->initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 142
    new-instance v0, Lcom/google/glass/entity/EntityHelper;

    new-instance v1, Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-direct {v1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityHelper;-><init>(Lcom/google/glass/boutique/BoutiqueQueryHelper;)V

    .line 143
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V

    .line 146
    new-instance v0, Lcom/google/glass/entity/EntityCache;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->setSharedInstance(Lcom/google/glass/entity/EntityCache;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->shouldLoadEntityCache()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/app/GlassApplication$4;

    invoke-direct {v1, p0}, Lcom/google/glass/app/GlassApplication$4;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 158
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->registerSyncChanged()V

    .line 167
    :cond_5
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_6

    .line 168
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 169
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 172
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 173
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 177
    :cond_6
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 7

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "l"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 274
    return-void
.end method

.method public reinitForTest()V
    .locals 0

    .prologue
    .line 214
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 216
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 221
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    .line 222
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x200000000L

    const/16 v4, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    .line 221
    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 223
    return-void
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method
