.class public Lcom/google/android/location/fused/service/FusedProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 35
    const-string v0, "GCoreFlp"

    const-string v1, "Bound FusedProviderService with LocationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "com.android.location.service.FusedProvider"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "GCoreFlp"

    const-string v1, "Invalid intent received in FusedProviderService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/service/FusedProviderService;->a:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/google/android/location/fused/service/e;->a()Lcom/google/android/location/fused/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/service/e;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/service/FusedProviderService;->a:Landroid/os/IBinder;

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/service/FusedProviderService;->a:Landroid/os/IBinder;

    .line 24
    const-string v0, "GCoreFlp"

    const-string v1, "Hardware FLP not available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/service/FusedProviderService;->a:Landroid/os/IBinder;

    .line 31
    return-void
.end method
