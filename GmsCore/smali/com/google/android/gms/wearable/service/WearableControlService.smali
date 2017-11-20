.class public Lcom/google/android/gms/wearable/service/WearableControlService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "WearableControlService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    const-string v0, "WearableControlService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "WearableControlService"

    const-string v1, "startWearableServices..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/WearableControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/y;->a(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->c()Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/a/a;->a(Z)V

    .line 117
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->c()Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    iget-object v1, v0, Lcom/google/android/gms/wearable/node/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/wearable/node/a/a;->d:Z

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/wearable/service/WearableService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/service/WearableControlService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void

    .line 117
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lcom/google/android/gms/wearable/node/a/a;->d:Z

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->c()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 91
    const-string v0, "WearableControlService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "WearableControlService"

    const-string v1, "handlePackageCleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    if-nez p0, :cond_2

    .line 95
    const-string v0, "WearableControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get the package from the intent data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    const-string v0, "WearableControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get the package from the intent data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_3
    sget-object v1, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/wearable/node/m;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 37
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "WearableControlService"

    const-string v1, "handleMessage: JBmr2+ required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.wearable.ACTION_STARTUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WearableControlService"

    const-string v1, "handleStartup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/wearable/service/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WearableControlService"

    const-string v1, "handleStartup: wearable app present, starting services..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/wearable/service/WearableControlService;->a()V

    goto :goto_0

    :cond_4
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableControlService"

    const-string v1, "handleStartup: no wearable app present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.wearable.ACTION_WEARABLE_APP_PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "WearableControlService"

    const-string v1, "handleWearableAppPackageAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/wearable/service/WearableControlService;->a()V

    goto :goto_0

    .line 47
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.wearable.ACTION_WEARABLE_APP_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableControlService;->a(Landroid/net/Uri;)V

    .line 53
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "WearableControlService"

    const-string v1, "handleWearableAppPackageRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v0, "WearableControlService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "WearableControlService"

    const-string v1, "stopWearableServices..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->c()Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/wearable/service/WearableService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/service/WearableControlService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 54
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.wearable.ACTION_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableControlService;->a(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
