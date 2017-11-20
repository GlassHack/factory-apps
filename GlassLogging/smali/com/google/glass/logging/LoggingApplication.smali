.class public Lcom/google/glass/logging/LoggingApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "LoggingApplication.java"


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String;

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x40000000L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

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

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_bugreports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/logging/LoggingApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private checkVersion()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 70
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 71
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .restart local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    move v2, v3

    .line 70
    goto :goto_0

    .line 72
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/google/glass/logging/LoggingApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Logging package not found"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setupFrameworkEventAggregation()V
    .locals 12

    .prologue
    .line 83
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/google/glass/logging/GlassUserEventService;

    invoke-direct {v7, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "read_framework_events"

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->getInstance()Lcom/google/glass/android/app/PendingIntentFactoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->get()Lcom/google/glass/android/app/PendingIntentFactory;

    move-result-object v9

    .line 87
    .local v9, "pendingIntentFactory":Lcom/google/glass/android/app/PendingIntentFactory;
    const/4 v1, 0x0

    const/high16 v4, 0x8000000

    .line 88
    invoke-interface {v9, p0, v1, v7, v4}, Lcom/google/glass/android/app/PendingIntentFactory;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 90
    .local v6, "pending":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/google/glass/android/app/AlarmManagerProvider;->getInstance()Lcom/google/glass/android/app/AlarmManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/app/AlarmManagerProvider;->from(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 91
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 92
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 93
    .local v2, "triggerAtTime":J
    const/4 v1, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x258

    .line 94
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 97
    new-instance v8, Lcom/google/android/glass/logging/EventLogObserver;

    invoke-direct {v8}, Lcom/google/android/glass/logging/EventLogObserver;-><init>()V

    .line 98
    .local v8, "observer":Lcom/google/android/glass/logging/EventLogObserver;
    invoke-virtual {v8}, Lcom/google/android/glass/logging/EventLogObserver;->startObserving()Z

    .line 99
    new-instance v1, Lcom/google/glass/logging/LoggingApplication$1;

    invoke-direct {v1, p0, v7}, Lcom/google/glass/logging/LoggingApplication$1;-><init>(Lcom/google/glass/logging/LoggingApplication;Landroid/content/Intent;)V

    invoke-virtual {v8, v1}, Lcom/google/android/glass/logging/EventLogObserver;->setListener(Lcom/google/android/glass/logging/EventLogObserver$Listener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 55
    new-instance v0, Lcom/google/glass/util/SystemIntentSender;

    invoke-direct {v0}, Lcom/google/glass/util/SystemIntentSender;-><init>()V

    invoke-static {v0}, Lcom/google/glass/util/IntentSender;->setInstance(Lcom/google/glass/util/IntentSender;)V

    .line 56
    invoke-direct {p0}, Lcom/google/glass/logging/LoggingApplication;->checkVersion()V

    .line 57
    invoke-direct {p0}, Lcom/google/glass/logging/LoggingApplication;->setupFrameworkEventAggregation()V

    .line 59
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 60
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOW_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onLowMemory()V

    .line 124
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 6

    .prologue
    .line 111
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    const/16 v4, 0x2710

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JIZ)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 114
    return-void
.end method
