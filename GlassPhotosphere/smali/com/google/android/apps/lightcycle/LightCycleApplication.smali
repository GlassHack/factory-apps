.class public Lcom/google/android/apps/lightcycle/LightCycleApplication;
.super Landroid/app/Application;
.source "LightCycleApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/LightCycleApp;->initAppVersion(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->setActiveProxy(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/LightCycleApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/LightCycleApp;->initLightCycleNative(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->stop()V

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 32
    return-void
.end method
