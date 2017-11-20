.class public Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;
.super Landroid/app/Service;
.source "NotificationCollectorMonitorService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifCollectorMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private ensureCollectorRunning()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 36
    const-string v5, "NotifCollectorMonitor"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const-string v5, "NotifCollectorMonitor"

    const-string v6, "ensureCollectorRunning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v5, Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "collectorComponent":Landroid/content/ComponentName;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 43
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 44
    .local v1, "collectorRunning":Z
    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 46
    .local v4, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    .end local v4    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    if-eqz v1, :cond_4

    .line 51
    const-string v5, "NotifCollectorMonitor"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 52
    const-string v5, "NotifCollectorMonitor"

    const-string v6, "ensureCollectorRunning: collector is running"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    :goto_1
    return-void

    .line 55
    :cond_4
    const-string v5, "NotifCollectorMonitor"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    const-string v5, "NotifCollectorMonitor"

    const-string v6, "ensureCollectorRunning: collector not running, reviving..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_5
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;->reviveCollector()V

    goto :goto_1
.end method

.method private reviveCollector()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "thisComponent":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 71
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 73
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 75
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    const-string v0, "NotifCollectorMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "NotifCollectorMonitor"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;->ensureCollectorRunning()V

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
