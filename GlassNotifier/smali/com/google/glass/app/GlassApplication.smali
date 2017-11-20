.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "GlassApplication.java"


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
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "private-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassApplication;)Lcom/google/glass/net/AndroidHttpRequestDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassApplication;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassApplication;)Lcom/google/glass/auth/AuthUtils;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassApplication;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "testCacheFilesDirectory":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using testing cache directory at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .end local v0    # "testCacheFilesDirectory":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    goto :goto_0
.end method

.method private maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/inject/InitializableProvider",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "provider":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<Lcom/google/glass/net/ProtoRequestDispatcher;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 233
    invoke-virtual {p1}, Lcom/google/glass/inject/InitializableProvider;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-nez v1, :cond_1

    .line 238
    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 241
    :cond_1
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    const/4 v2, 0x1

    .line 244
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    .line 247
    .local v0, "requestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v1, Lcom/google/glass/app/GlassApplication$7;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/glass/app/GlassApplication$7;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication$7;->start()V

    .line 251
    invoke-virtual {p1, v0}, Lcom/google/glass/inject/InitializableProvider;->init(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 5

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 182
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    return-object v1
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 68
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    .line 69
    .local v0, "authUtilsProvider":Lcom/google/glass/auth/AuthUtilsProvider;
    invoke-static {p0}, Lcom/google/glass/auth/GlassAuthUtils$Provider;->getSupplier(Landroid/content/Context;)Lcom/google/common/base/Supplier;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/glass/auth/AuthUtilsProvider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 70
    invoke-virtual {v0}, Lcom/google/glass/auth/AuthUtilsProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/auth/AuthUtils;

    iput-object v4, p0, Lcom/google/glass/app/GlassApplication;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 72
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 73
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/async/AsyncThreadExecutorManager;

    iget-object v5, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v4, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->setUserEventHelper(Lcom/google/glass/userevent/UserEventHelper;)V

    .line 75
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$1;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$1;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManagerProvider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 82
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$2;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$2;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 89
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$3;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$3;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 96
    invoke-static {}, Lcom/google/glass/logging/PiiHasher$Provider;->getInstance()Lcom/google/glass/logging/PiiHasher$Provider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$4;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$4;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/logging/PiiHasher$Provider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 103
    invoke-static {}, Lcom/google/glass/note/NoteManager$Provider;->getInstance()Lcom/google/glass/note/NoteManager$Provider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$5;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$5;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/note/NoteManager$Provider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 115
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryProvider()Lcom/google/glass/inject/InitializableProvider;

    move-result-object v2

    .line 116
    .local v2, "primaryProtoRequestDispatcherProvider":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<Lcom/google/glass/net/ProtoRequestDispatcher;>;"
    const-string v4, "primary"

    invoke-direct {p0, v2, v4}, Lcom/google/glass/app/GlassApplication;->maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getSecondaryProvider()Lcom/google/glass/inject/InitializableProvider;

    move-result-object v3

    .line 121
    .local v3, "secondaryProtoRequestDispatcherProvider":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<Lcom/google/glass/net/ProtoRequestDispatcher;>;"
    const-string v4, "secondary"

    invoke-direct {p0, v3, v4}, Lcom/google/glass/app/GlassApplication;->maybeInitDispatcherProvider(Lcom/google/glass/inject/InitializableProvider;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassApplication$6;

    invoke-direct {v5, p0}, Lcom/google/glass/app/GlassApplication$6;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->initIfNeeded(Lcom/google/common/base/Supplier;)Z

    .line 134
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-static {p0, v4}, Lcom/google/glass/mosaic/MosaicHelper;->initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 140
    new-instance v1, Lcom/google/glass/entity/EntityHelper;

    new-instance v4, Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-direct {v4}, Lcom/google/glass/boutique/BoutiqueQueryHelper;-><init>()V

    invoke-direct {v1, v4}, Lcom/google/glass/entity/EntityHelper;-><init>(Lcom/google/glass/boutique/BoutiqueQueryHelper;)V

    .line 141
    .local v1, "entityHelper":Lcom/google/glass/entity/EntityHelper;
    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V

    .line 144
    new-instance v4, Lcom/google/glass/entity/EntityCache;

    invoke-direct {v4, p0}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/google/glass/entity/EntityCache;->setSharedInstance(Lcom/google/glass/entity/EntityCache;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->shouldLoadEntityCache()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache()V

    .line 150
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityCache;->registerSyncChanged()V

    .line 159
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelperProvider;->getInstance()Lcom/google/glass/build/BuildHelperProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/build/BuildHelperProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/build/BuildHelper;

    invoke-interface {v4}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 161
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 164
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 165
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    .line 164
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 169
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "name":Ljava/lang/String;
    const-string v1, "GlassApplication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0, p1}, Lcom/google/glass/userevent/UserEventHelper;->logOnTrimMemory(Ljava/lang/String;I)V

    .line 266
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onTrimMemory(I)V

    .line 267
    return-void
.end method

.method public reinitForTest()V
    .locals 0

    .prologue
    .line 206
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 208
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 213
    new-instance v0, Lcom/google/glass/io/CachedFilesManager;

    .line 214
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x200000000L

    const/16 v4, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/io/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    .line 213
    invoke-static {v0}, Lcom/google/glass/io/CachedFilesManager;->setSharedInstance(Lcom/google/glass/io/CachedFilesManager;)V

    .line 215
    return-void
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method
