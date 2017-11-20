.class public Lcom/google/glass/camera/CameraApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "CameraApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 31
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "com.google.glass.camera.ViewfinderActivity"

    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VFD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    .line 30
    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 36
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 37
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 38
    .local v0, "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    new-instance v1, Lcom/google/glass/camera/CameraApplication$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraApplication$1;-><init>(Lcom/google/glass/camera/CameraApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 51
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 52
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/CameraApplication$2;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/CameraApplication$2;-><init>(Lcom/google/glass/camera/CameraApplication;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-static {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->startGcamService(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 81
    invoke-static {p0}, Lcom/google/android/glass/gcamservice/GcamModule;->from(Landroid/content/Context;)Lcom/google/android/glass/gcamservice/GcamModule;

    .line 83
    :cond_1
    return-void

    .line 32
    .end local v0    # "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method
