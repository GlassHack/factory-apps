.class public Lcom/google/android/apps/lightcycle/LightCycleApp;
.super Ljava/lang/Object;
.source "LightCycleApp.java"


# static fields
.field public static final FIELD_OF_VIEW_PREF_KEY:Ljava/lang/String; = "photoSphereFieldOfView"

.field private static appVersion:Ljava/lang/String;

.field private static cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "999"

    sput-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getCameraUtility()Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    return-object v0
.end method

.method public static initAppVersion(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    .line 47
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting version to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 52
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to find the app package."

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "unknown"

    sput-object v2, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initLightCycleNative(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x140

    const/16 v3, 0xf0

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 58
    new-instance v1, Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;-><init>(II)V

    sput-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .line 60
    sget-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v9

    .line 63
    .local v9, "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 65
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "photoSphereFieldOfView"

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 77
    .local v8, "prefsFieldOfView":F
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v1, v4, :cond_1

    .line 78
    new-instance v0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;

    sget-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/camera/CameraUtility;)V

    .line 83
    .local v0, "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x640

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v10

    .line 90
    .local v10, "tmp":Lcom/google/android/apps/lightcycle/util/Size;
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isDeviceSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFieldOfView()F

    move-result v6

    .line 95
    .local v6, "fieldOfViewDegrees":F
    cmpg-float v1, v8, v11

    if-gez v1, :cond_0

    .line 96
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "photoSphereFieldOfView"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->releaseCamera()V

    .line 113
    iget v1, v9, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget v2, v9, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-static {v1, v2, v6, v12}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitNative(IIFZ)V

    .line 115
    return-void

    .line 80
    .end local v0    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .end local v6    # "fieldOfViewDegrees":F
    .end local v10    # "tmp":Lcom/google/android/apps/lightcycle/util/Size;
    :cond_1
    new-instance v0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;

    sget-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-direct {v0, v1, v12}, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;Z)V

    .restart local v0    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    goto :goto_0

    .line 103
    .restart local v10    # "tmp":Lcom/google/android/apps/lightcycle/util/Size;
    :cond_2
    cmpg-float v1, v8, v11

    if-gez v1, :cond_3

    .line 105
    sget-object v1, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFieldOfView()F

    move-result v6

    .restart local v6    # "fieldOfViewDegrees":F
    goto :goto_1

    .line 107
    .end local v6    # "fieldOfViewDegrees":F
    :cond_3
    move v6, v8

    .restart local v6    # "fieldOfViewDegrees":F
    goto :goto_1
.end method
