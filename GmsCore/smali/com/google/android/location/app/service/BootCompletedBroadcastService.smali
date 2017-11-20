.class public Lcom/google/android/location/app/service/BootCompletedBroadcastService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "BootCompletedBroadcastService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/app/service/BootCompletedBroadcastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "broadcastIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 45
    const-string v0, "broadcastIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 49
    invoke-static {p0, v1}, Lcom/google/android/gms/gcm/ServiceAutoStarter;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 53
    const-class v2, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/location/app/service/BootCompletedBroadcastService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 58
    const-class v2, Lcom/google/android/gms/auth/authzen/GcmReceiverService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/location/app/service/BootCompletedBroadcastService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/z;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/google/android/gms/playlog/service/MonitorAlarmReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadAlarmReceiver;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/app/service/BootCompletedBroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
