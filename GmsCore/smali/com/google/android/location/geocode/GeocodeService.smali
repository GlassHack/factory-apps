.class public Lcom/google/android/location/geocode/GeocodeService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/geocode/a;


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

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geocode/GeocodeService;->a:Lcom/google/android/location/geocode/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/location/geocode/a;

    invoke-virtual {p0}, Lcom/google/android/location/geocode/GeocodeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/geocode/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/geocode/GeocodeService;->a:Lcom/google/android/location/geocode/a;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geocode/GeocodeService;->a:Lcom/google/android/location/geocode/a;

    invoke-virtual {v0}, Lcom/google/android/location/geocode/a;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/location/geocode/GeocodeService;->a:Lcom/google/android/location/geocode/a;

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
