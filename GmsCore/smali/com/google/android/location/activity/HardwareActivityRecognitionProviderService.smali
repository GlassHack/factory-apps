.class public Lcom/google/android/location/activity/HardwareActivityRecognitionProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "HardwareActivityRecognitionProviderService"

    const-string v1, "Bound with LocationManager"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v0, "com.android.location.service.ActivityRecognitionProvider"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "HardwareActivityRecognitionProviderService"

    const-string v1, "Invalid intent received."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/HardwareActivityRecognitionProviderService;->a:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->getInstance()Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/HardwareActivityRecognitionProviderService;->a:Landroid/os/IBinder;

    .line 26
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "HardwareActivityRecognitionProviderService"

    const-string v1, "Hardware Activity-Recognition available."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/HardwareActivityRecognitionProviderService;->a:Landroid/os/IBinder;

    .line 29
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "HardwareActivityRecognitionProviderService"

    const-string v1, "Hardware Activity-Recognition not available."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 35
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "HardwareActivityRecognitionProviderService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/HardwareActivityRecognitionProviderService;->a:Landroid/os/IBinder;

    .line 38
    return-void
.end method
