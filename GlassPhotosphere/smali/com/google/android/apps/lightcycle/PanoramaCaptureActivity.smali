.class public Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;
.super Landroid/app/Activity;
.source "PanoramaCaptureActivity.java"


# static fields
.field private static final ACTION_SESSION:Ljava/lang/String; = "Session"

.field private static final CATEGORY_CAPTURE:Ljava/lang/String; = "Capture"

.field private static final LABEL_ANDROID_VERSION:Ljava/lang/String; = "AndroidVersion"

.field private static final LABEL_CAPTURE_TIME:Ljava/lang/String; = "CaptureTime"

.field private static final LABEL_NUM_PHOTOS:Ljava/lang/String; = "NumPhotos"

.field private static final PANORAMA_PATH_EXTRA:Ljava/lang/String; = "output_dir"

.field private static final PROCESS_PRIORITY:I = -0x13

.field private static final TAG:Ljava/lang/String; = "LightCycle"

.field private static final USE_NULL_SURFACE:Z = true


# instance fields
.field private aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

.field private analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

.field private captureEventListener:Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

.field private captureStartTimeMs:J

.field private controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

.field private runInCalibrationMode:Z

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private showOwnDoneButton:Z

.field private showOwnUndoButton:Z

.field private final startCameraWaiter:Ljava/lang/Object;

.field private storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 77
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 80
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .line 89
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnDoneButton:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnUndoButton:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runInCalibrationMode:Z

    .line 98
    const-class v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startCameraWaiter:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureEventListener:Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    return-void
.end method

.method private applyPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 452
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const-string v4, "useGyro"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->enableEkf(Z)V

    .line 456
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const-string v4, "displayLiveImage"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setLiveImageDisplay(Z)V

    .line 460
    const-string v3, "allowFastMotion"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 462
    .local v0, "allowFastMotion":Z
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AllowFastMotion(Z)V

    .line 466
    const-string v3, "enableLocationProvider"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 468
    .local v1, "enableLocationProvider":Z
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setLocationProviderEnabled(Z)V

    .line 469
    return-void
.end method

.method private deviceHasGyro()Z
    .locals 2

    .prologue
    .line 328
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 330
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private displayErrorAndExit(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$8;

    invoke-direct {v4, p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$8;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 581
    return-void
.end method

.method private endCapture()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->logEndCaptureToAnalytics()V

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 481
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fieldOfViewCalibrationRequired()Z
    .locals 4

    .prologue
    .line 304
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "photoSphereFieldOfView"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 308
    .local v1, "prefsFieldOfView":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private logEndCaptureToAnalytics()V
    .locals 9

    .prologue
    .line 559
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    sget-object v4, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->END_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 560
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    const-string v4, "Capture"

    const-string v5, "Session"

    const-string v6, "NumPhotos"

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getTotalPhotos()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureStartTimeMs:J

    sub-long v0, v3, v5

    .line 563
    .local v0, "captureTimeMs":J
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    const-string v4, "Capture"

    const-string v5, "Session"

    const-string v6, "CaptureTime"

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    long-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 566
    .local v2, "version":I
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    const-string v4, "Capture"

    const-string v5, "Session"

    const-string v6, "AndroidVersion"

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    return-void
.end method

.method private saveCalibratedFieldOfView(F)V
    .locals 3
    .param p1, "fieldOfViewDegrees"    # F

    .prologue
    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "photoSphereFieldOfView"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method private startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 5
    .param p1, "session"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 493
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runInCalibrationMode:Z

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->FinishCapture(Z)V

    .line 496
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v3, p1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 501
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runInCalibrationMode:Z

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CalibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v0

    .line 505
    .local v0, "fovResultDegrees":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 506
    const-string v3, "LightCycle"

    const-string v4, "FOV Calibration Succeeded!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->saveCalibratedFieldOfView(F)V

    .line 515
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->deleteSession(Ljava/lang/String;)V

    .line 554
    .end local v0    # "fovResultDegrees":F
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->finish()V

    .line 555
    return-void

    .line 513
    .restart local v0    # "fovResultDegrees":F
    :cond_0
    const-string v3, "LightCycle"

    const-string v4, "FOV Calibration failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    .end local v0    # "fovResultDegrees":F
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v2

    .line 522
    .local v2, "stitchingServiceManager":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    new-instance v3, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->addStitchingResultCallback(Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;)V

    .line 538
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->newTask(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 544
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    .local v1, "fullScreenProgressIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 550
    .end local v1    # "fullScreenProgressIntent":Landroid/content/Intent;
    :cond_3
    sget v3, Lcom/google/android/apps/lightcycle/R$string;->start_stitching:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .line 104
    return-void
.end method

.method public onDoneButtonPressed(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "stitchingStartedCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->clearRendering()V

    .line 409
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->endCapture()V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdown(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 443
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 336
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->endCapture()V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 339
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 358
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->interrupt()V

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 374
    :cond_4
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.lightcycle.panorama.RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 376
    return-void
.end method

.method public onResume()V
    .locals 25

    .prologue
    .line 108
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/UiUtil;->switchSystemUiToLightsOut(Landroid/view/Window;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, "deviceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->deviceHasGyro()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    const-string v3, "Sorry, your device has no gyro."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->displayErrorAndExit(Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 125
    :cond_0
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    const-string v3, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    .line 129
    .local v21, "pm":Landroid/os/PowerManager;
    const v3, 0x2000000a

    const-string v5, "LightCycle"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->init(Landroid/content/Context;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 139
    .local v19, "intent":Landroid/content/Intent;
    const-string v3, "output_dir"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 140
    .local v20, "panoramaPath":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting the panorama destination to : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->setPanoramaDestination(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    const-string v3, "LightCycle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set the panorama destination directory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v3}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->getCameraUtility()Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    move-result-object v15

    .line 160
    .local v15, "cameraUtil":Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    invoke-virtual {v15}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera()Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    const-string v3, "Sorry, your device does not have a back facing camera"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->displayErrorAndExit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.apps.lightcycle.panorama.PAUSE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 172
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v3, v5, :cond_4

    .line 174
    new-instance v4, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;

    invoke-direct {v4, v15}, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;)V

    .line 185
    .local v4, "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    :goto_1
    new-instance v3, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-direct {v3}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnDoneButton:Z

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnDoneButton(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    new-instance v5, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setDoneButtonVisibilityListener(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnUndoButton:Z

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnUndoButton(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    new-instance v5, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisibilityListener(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    new-instance v5, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$3;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonStatusListener(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 215
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "useRealtimeAlignment"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 221
    .local v24, "useRealtimeAlignment":Z
    :try_start_0
    new-instance v8, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v8, v0, v3, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v8, "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    new-instance v3, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    .line 228
    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->localStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;-><init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    .line 231
    .local v2, "mainView":Lcom/google/android/apps/lightcycle/panorama/LightCycleView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setZOrderOnTop(Z)V

    .line 232
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->getController()Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    new-instance v5, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$4;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->registerMessageSink(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 249
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v3, v5, :cond_3

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;

    move-result-object v10

    const/16 v11, 0x140

    const/16 v12, 0xf0

    const/4 v13, 0x1

    const/16 v14, 0x640

    move-object v9, v4

    invoke-interface/range {v9 .. v14}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v23

    .line 262
    .local v23, "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v3, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setFrameDimensions(II)V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->fieldOfViewCalibrationRequired()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runInCalibrationMode:Z

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startCameraWaiter:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runInCalibrationMode:Z

    invoke-virtual {v3, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startCamera(Ljava/lang/Object;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startCameraWaiter:Ljava/lang/Object;

    monitor-enter v5

    .line 272
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startCameraWaiter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->aligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->start()V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->applyPreferences()V

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    sget-object v5, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->BEGIN_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureStartTimeMs:J

    .line 288
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/util/UiUtil;->lockCurrentScreenOrientation(Landroid/app/Activity;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->controller:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    new-instance v5, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V

    invoke-virtual {v3, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setOnPhotoTakenCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "mainView":Lcom/google/android/apps/lightcycle/panorama/LightCycleView;
    .end local v4    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .end local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    .end local v24    # "useRealtimeAlignment":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 181
    .restart local v22    # "prefs":Landroid/content/SharedPreferences;
    const-string v3, "enableHdrMode"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 183
    .local v18, "enableHdrMode":Z
    new-instance v4, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;

    move/from16 v0, v18

    invoke-direct {v4, v15, v0}, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;Z)V

    .restart local v4    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    goto/16 :goto_1

    .line 223
    .end local v18    # "enableHdrMode":Z
    .restart local v24    # "useRealtimeAlignment":Z
    :catch_0
    move-exception v17

    .line 224
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "LightCycle"

    const-string v5, "Error creating PanoRenderer."

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 273
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v2    # "mainView":Lcom/google/android/apps/lightcycle/panorama/LightCycleView;
    .restart local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .restart local v23    # "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    :catch_1
    move-exception v17

    .line 274
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "LightCycle"

    const-string v6, "Interrupted while waiting for camera to be started."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setCaptureEventListener(Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;)V
    .locals 3
    .param p1, "eventCaptureListener"    # Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureEventListener:Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureEventListener:Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnDoneButton:Z

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->captureEventListener:Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnUndoButton:Z

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnDoneButton:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnDoneButton(Z)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->renderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->showOwnUndoButton:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnUndoButton(Z)V

    .line 397
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 391
    goto :goto_0

    :cond_2
    move v1, v2

    .line 392
    goto :goto_1
.end method
