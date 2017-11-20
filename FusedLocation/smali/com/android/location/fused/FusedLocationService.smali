.class public Lcom/android/location/fused/FusedLocationService;
.super Landroid/app/Service;
.source "FusedLocationService.java"


# instance fields
.field private mProvider:Lcom/android/location/fused/FusedLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/location/fused/FusedLocationProvider;

    invoke-virtual {p0}, Lcom/android/location/fused/FusedLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/location/fused/FusedLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    invoke-virtual {v0}, Lcom/android/location/fused/FusedLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    .line 49
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/location/fused/FusedLocationService;->mProvider:Lcom/android/location/fused/FusedLocationProvider;

    invoke-virtual {v0}, Lcom/android/location/fused/FusedLocationProvider;->onDisable()V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
