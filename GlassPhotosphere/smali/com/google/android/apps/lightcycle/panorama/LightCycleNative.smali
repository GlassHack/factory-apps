.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;
.super Ljava/lang/Object;
.source "LightCycleNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;,
        Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;,
        Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;
    }
.end annotation


# static fields
.field private static nativeTransformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;

.field private static progressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;

.field private static progressCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "lightcycle"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->progressCallbacks:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->progressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;

    .line 73
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$1;)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->nativeTransformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static native AddImage(Ljava/lang/String;[FZI)V
.end method

.method public static native AllowFastMotion(Z)V
.end method

.method public static native CalibrateFieldOfViewDeg(Ljava/lang/String;)F
.end method

.method public static native ComputeAlignment()V
.end method

.method public static native CreateFrameTexture(I)V
.end method

.method public static native CreateNewStitchingSession()I
.end method

.method public static native CreateThumbnailImage(Ljava/lang/String;Ljava/lang/String;IF)Z
.end method

.method public static native EndGyroCalibration([FIJ)[F
.end method

.method public static native FinishCapture(Z)V
.end method

.method public static native GetDeletedTargets()[I
.end method

.method public static native GetFrameGeometry(II)[F
.end method

.method public static native GetFramePanoOutline(II)[F
.end method

.method public static native GetHeadingRadians()F
.end method

.method public static native GetNewTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.end method

.method public static native GetStitchingProgress(I)I
.end method

.method public static native GetTargetInRange()I
.end method

.method private static native Init(IIFZLcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;)I
.end method

.method public static native InitFrameTexture(III)V
.end method

.method public static InitNative(IIFZ)V
    .locals 6
    .param p0, "preview_width_pixels"    # I
    .param p1, "preview_height_pixels"    # I
    .param p2, "fov_degrees"    # F
    .param p3, "create_preview_panorama"    # Z

    .prologue
    .line 110
    sget-object v4, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->progressCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;

    sget-object v5, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->nativeTransformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->Init(IIFZLcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeProgressCallback;Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;)I

    .line 112
    return-void
.end method

.method public static native InitPanoTexture(I)V
.end method

.method public static native IsImageInLargestComponent(I)Z
.end method

.method public static native LoadPanoramaTexture(ILjava/lang/String;)Z
.end method

.method public static native MovingTooFast()Z
.end method

.method public static native PhotoSkippedTooFast()Z
.end method

.method public static native PreviewStitch(Ljava/lang/String;)I
.end method

.method public static native ProcessFrame([BIIZ)[F
.end method

.method public static native PushFrameTexture([BIII)V
.end method

.method public static native ResetForCapture(Z)V
.end method

.method public static native SavePanorama()V
.end method

.method public static native SetAppVersion(Ljava/lang/String;)V
.end method

.method public static native SetCurrentOrientation(F)V
.end method

.method public static native SetFilteredRotation([F)V
.end method

.method public static native SetGravityVector(FFF)V
.end method

.method public static native SetGyroData(FFF)V
.end method

.method public static native SetImageMatchAndStitchWidths(IIII)V
.end method

.method public static native SetSensorMovementTooFast(Z)V
.end method

.method public static native SetTargetHitAngleRadians(F)V
.end method

.method public static native StartGyroCalibration(F)V
.end method

.method public static native StereographicProject(FLjava/lang/String;Ljava/lang/String;IIIII)V
.end method

.method public static StereographicProject(FLjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p0, "scale"    # F
    .param p1, "panoFile"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v8

    .line 128
    .local v8, "panoMetadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-nez v8, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->isScaled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget v4, v8, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    iget v5, v8, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    iget v6, v8, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaLeft:I

    iget v7, v8, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaTop:I

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StereographicProject(FLjava/lang/String;Ljava/lang/String;IIIII)V

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native StitchPanorama(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IFIZ)I
.end method

.method public static native TakeNewPhoto()Z
.end method

.method public static native TargetHit()Z
.end method

.method public static native UndoAddImage(Z)V
.end method

.method public static native UpdateFrameTexture(I)I
.end method

.method public static native UpdateNewTextures()V
.end method

.method public static native UpdateTexture(I)I
.end method

.method public static native ValidInPlaneAngle()I
.end method

.method public static native YuvToRgb([BII)[F
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->progressCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method public static setProgressCallback(ILcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;)V
    .locals 2
    .param p0, "sessionId"    # I
    .param p1, "callback"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->progressCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static setUpdatePhotoRenderingCallback(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;)V
    .locals 0
    .param p0, "callback"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    .prologue
    .line 96
    sput-object p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative$NativeUpdatePhotoRenderingCallback;->updatePhotoRenderingCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    .line 97
    return-void
.end method

.method public static native test()I
.end method
