.class public Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;
.super Landroid/support/v4/a/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    const-string v0, "WearableSyncServiceReceiver.onReceive"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/fitness/wearables/WearableSyncService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    const-string v0, "unable to start WearableSyncService"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    :cond_0
    return-void
.end method
