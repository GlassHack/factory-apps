.class public Lcom/google/glass/voice/VoiceApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "VoiceApplication.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceApplication;)Lcom/google/glass/android/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceApplication;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceApplication;->createWakeLock()Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private createWakeLock()Lcom/google/glass/android/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 70
    .local v0, "powerManager":Lcom/google/glass/android/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 71
    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v1

    .line 72
    .local v1, "wakeLock":Lcom/google/glass/android/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 73
    return-object v1
.end method

.method private enableSync(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "primaryAccount"    # Landroid/accounts/Account;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 79
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceApplication$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceApplication$3;-><init>(Lcom/google/glass/voice/VoiceApplication;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 36
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 37
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 38
    .local v1, "primaryAccount":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 39
    sget-object v2, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No Google account available! Cannot configure saved audio sync."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    new-instance v2, Lcom/google/glass/util/SystemIntentSender;

    invoke-direct {v2}, Lcom/google/glass/util/SystemIntentSender;-><init>()V

    invoke-static {v2}, Lcom/google/glass/util/IntentSender;->setInstance(Lcom/google/glass/util/IntentSender;)V

    .line 46
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->loadMainMenuItemsUsageStatsCache()V

    .line 49
    invoke-static {}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/VoiceApplication$1;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/VoiceApplication$1;-><init>(Lcom/google/glass/voice/VoiceApplication;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->init(Lcom/google/common/base/Supplier;)V

    .line 58
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/VoiceApplication$2;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/VoiceApplication$2;-><init>(Lcom/google/glass/voice/VoiceApplication;)V

    .line 59
    invoke-interface {v2, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceApplication;->enableSync(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->RVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method
