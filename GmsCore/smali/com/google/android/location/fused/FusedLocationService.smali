.class public Lcom/google/android/location/fused/FusedLocationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/fused/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 23
    iget-object v0, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/location/fused/FusedLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 26
    const-string v1, "GCoreFlp"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    new-instance v1, Lcom/google/android/location/fused/e;

    new-instance v2, Lcom/google/android/location/o/n;

    invoke-virtual {p0}, Lcom/google/android/location/fused/FusedLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/location/o/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/fused/e;-><init>(Lcom/google/android/location/o/n;Landroid/os/PowerManager$WakeLock;)V

    iput-object v1, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    invoke-virtual {v0}, Lcom/google/android/location/fused/e;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    .line 48
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/location/fused/FusedLocationService;->a:Lcom/google/android/location/fused/e;

    invoke-virtual {v0}, Lcom/google/android/location/fused/e;->onDisable()V

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
