.class public Lcom/google/glass/home/HomeApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "HomeApplication.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;,
        Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;,
        Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;,
        Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;,
        Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_TIME_MS:J

.field static final GCM_REGISTRATION_KEY:Ljava/lang/String; = "GCM_REGISTRATION_KEY"

.field private static final MAX_BITMAP_CACHE_SIZE_KB:I = 0x4000

.field private static final MAX_RETRY_DELAY_MS:J

.field static final OLD_CACHE_PATH:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ON_BOOT_SYNC_DELAY_SECONDS:I = 0x19


# instance fields
.field private cacheCleaningThread:Ljava/lang/Thread;

.field private final cameraButtonReceiver:Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;

.field private companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

.field private handler:Landroid/os/Handler;

.field private lastLocationSyncRequestedElapsedTime:J

.field private locationService:Lcom/google/glass/location/LocationService;

.field private final locationSyncIntervalMillis:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private onCreateTime:J

.field private final retryGcmRegistrationReceiver:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

.field private final screenOnOffReceiver:Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final settingsContract:Lcom/google/glass/util/SettingsContract;

.field private final setupCompleteReceiver:Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

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

    add-int/lit8 v3, v3, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_cached_files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/HomeApplication;->OLD_CACHE_PATH:Ljava/lang/String;

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/HomeApplication;->MAX_RETRY_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 78
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 115
    new-instance v0, Lcom/google/glass/home/HomeApplication$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$1;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    .line 135
    new-instance v0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;

    .line 139
    new-instance v0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;

    .line 154
    new-instance v0, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->cameraButtonReceiver:Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;

    .line 158
    new-instance v0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    .line 180
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "com.google.glass.location"

    .line 181
    invoke-static {v1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v1

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication;->locationSyncIntervalMillis:J

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication;->lastLocationSyncRequestedElapsedTime:J

    .line 186
    invoke-static {}, Lcom/google/glass/util/SettingsContractProvider;->getInstance()Lcom/google/glass/util/SettingsContractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 688
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p1, "x1"    # Lcom/google/glass/location/LocationService;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/home/HomeApplication;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->isPlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 77
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->DEFAULT_RETRY_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 77
    sget-wide v0, Lcom/google/glass/home/HomeApplication;->MAX_RETRY_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/glass/home/HomeApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/CompanionLocationProxy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->registerGcm()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication;->enablePowerConnectedSync(Landroid/accounts/Account;)V

    return-void
.end method

.method private cleanupOldCacheDir()V
    .locals 4

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/glass/home/HomeApplication;->OLD_CACHE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "oldCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Old cache exists -- erasing."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/glass/home/HomeApplication$2;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/HomeApplication$2;-><init>(Lcom/google/glass/home/HomeApplication;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/glass/home/HomeApplication;->cacheCleaningThread:Ljava/lang/Thread;

    .line 314
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->cacheCleaningThread:Ljava/lang/Thread;

    const-string v2, "CacheCleaner"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->cacheCleaningThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 316
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication;->cacheCleaningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 318
    :cond_0
    return-void
.end method

.method private enablePowerConnectedSync(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "primaryAccount"    # Landroid/accounts/Account;

    .prologue
    .line 395
    new-instance v1, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;Lcom/google/glass/home/HomeApplication$1;)V

    .line 396
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0, p0}, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 397
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    .local v0, "applicationContext":Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/home/HomeApplication;

    if-eqz v1, :cond_0

    .line 387
    check-cast v0, Lcom/google/glass/home/HomeApplication;

    .end local v0    # "applicationContext":Landroid/content/Context;
    return-object v0

    .line 389
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the HomeApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isPlayServicesAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 463
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAccountReady(Landroid/accounts/Account;)V
    .locals 9
    .param p1, "primaryAccount"    # Landroid/accounts/Account;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 324
    invoke-virtual {v4}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/home/HomeApplication$3;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/home/HomeApplication$3;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-interface {v4, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 344
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/home/HomeApplication;->onCreateTime:J

    sub-long v2, v4, v6

    .line 345
    .local v2, "timeSinceOnCreate":J
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x19

    .line 346
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 345
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 351
    .local v0, "syncDelay":J
    iget-object v4, p0, Lcom/google/glass/home/HomeApplication;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/glass/home/HomeApplication$4;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/home/HomeApplication$4;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method

.method private registerGcm()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 402
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/HomeApplication$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/HomeApplication$5;-><init>(Lcom/google/glass/home/HomeApplication;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method


# virtual methods
.method protected createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 6

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 479
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x4000

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/util/MemoryCachedBitmapFactory;-><init>(Landroid/content/Context;III)V

    return-object v1
.end method

.method getCacheCleaningThread()Ljava/lang/Thread;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 249
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication;->cacheCleaningThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isNavigationAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v3

    .line 472
    .local v0, "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :goto_0
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/glass/location/LocationHelper;->isNavigationAllowed(Landroid/location/LocationManager;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 473
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :cond_3
    move v0, v2

    .line 470
    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 190
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/home/HomeApplication;->onCreateTime:J

    .line 191
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 193
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/google/glass/home/HomeApplication;->handler:Landroid/os/Handler;

    .line 196
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 197
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 198
    .local v2, "primaryAccount":Landroid/accounts/Account;
    if-nez v2, :cond_1

    .line 199
    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No Google account available. Reverting to setup, NOT rebooting."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "reboot":Z
    invoke-interface {v0, v8}, Lcom/google/glass/auth/AuthUtils;->restartSetupProcess(Z)V

    .line 207
    .end local v3    # "reboot":Z
    :goto_0
    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->setupCompleteReceiver:Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;

    invoke-virtual {v5, p0}, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 209
    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->cameraButtonReceiver:Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;

    invoke-virtual {v5, p0}, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 212
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/google/glass/home/HomeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 217
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 218
    .local v4, "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v4, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 219
    new-instance v6, Lcom/google/glass/location/CompanionLocationProxy;

    .line 220
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v6, v5}, Lcom/google/glass/location/CompanionLocationProxy;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v6, p0, Lcom/google/glass/home/HomeApplication;->companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;

    .line 223
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/location/LocationService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/google/glass/home/HomeApplication;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/google/glass/home/HomeApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 226
    iget-object v5, p0, Lcom/google/glass/home/HomeApplication;->screenOnOffReceiver:Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v5, p0}, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 229
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    .line 230
    .local v1, "intentSender":Lcom/google/glass/util/IntentSender;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/timeline/TimelineNotificationService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0, v5}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->NF:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/home/NotificationPreparerService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0, v5}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    :goto_1
    invoke-static {p0}, Lcom/google/glass/util/StorageHelper;->initializeThresholds(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v5

    .line 241
    invoke-virtual {v5}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->loadMainMenuItemsUsageStatsCache()V

    .line 243
    invoke-direct {p0}, Lcom/google/glass/home/HomeApplication;->cleanupOldCacheDir()V

    .line 244
    return-void

    .line 203
    .end local v1    # "intentSender":Lcom/google/glass/util/IntentSender;
    .end local v4    # "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V

    goto/16 :goto_0

    .line 235
    .restart local v1    # "intentSender":Lcom/google/glass/util/IntentSender;
    .restart local v4    # "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/glass/home/NotificationService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0, v5}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onStateChange(ZII)V
    .locals 6
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 485
    if-eqz p1, :cond_2

    .line 486
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationService;->onCompanionConnected()V

    .line 490
    :cond_0
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 491
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/google/glass/home/HomeApplication;->lastLocationSyncRequestedElapsedTime:J

    iget-wide v4, p0, Lcom/google/glass/home/HomeApplication;->locationSyncIntervalMillis:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 492
    const-string v2, "com.google.glass.location"

    sget-object v3, Lcom/google/glass/sync/SyncHelper$SyncSource;->NETWORK_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p0, v2, v3}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 494
    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication;->lastLocationSyncRequestedElapsedTime:J

    .line 501
    .end local v0    # "elapsedRealtime":J
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationService;->onCompanionDisconnected()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 9
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 512
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassApplication;->onTrimMemory(I)V

    .line 515
    const/16 v3, 0x14

    if-lt p1, v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Not trimming memory for level %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :goto_0
    return-void

    .line 520
    :cond_0
    new-instance v2, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v2}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 521
    .local v2, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 525
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    .line 526
    .local v0, "bitmapFactory":Lcom/google/glass/util/MemoryCachedBitmapFactory;
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "System is running low on memory; clearing bitmap cache. Size: %d kB"

    new-array v5, v7, [Ljava/lang/Object;

    .line 527
    invoke-virtual {v0}, Lcom/google/glass/util/MemoryCachedBitmapFactory;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 526
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {v0}, Lcom/google/glass/util/MemoryCachedBitmapFactory;->clearCache()V

    .line 530
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v1

    .line 531
    .local v1, "cache":Lcom/google/glass/html/PagedWebViewCache;
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Clearing PagedWebView cache of size: %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebViewCache;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebViewCache;->evictAll()V

    .line 534
    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 535
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Cleared caches in %dms."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method
