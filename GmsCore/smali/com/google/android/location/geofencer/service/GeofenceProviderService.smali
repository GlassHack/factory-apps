.class public Lcom/google/android/location/geofencer/service/GeofenceProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 41
    const-string v0, "com.android.location.service.GeofenceProvider"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "GeofenceProviderService"

    const-string v1, "Got framework binding request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/GeofenceProviderService;->a:Landroid/os/IBinder;

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcom/google/android/location/geofencer/service/aa;->a()Lcom/google/android/location/geofencer/service/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/aa;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/GeofenceProviderService;->a:Landroid/os/IBinder;

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v0, "GeofenceProviderService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "GeofenceProviderService"

    const-string v1, "Hardware geofence not available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/GeofenceProviderService;->a:Landroid/os/IBinder;

    goto :goto_0
.end method
