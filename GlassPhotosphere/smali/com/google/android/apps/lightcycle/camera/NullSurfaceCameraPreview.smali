.class public Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;
.super Ljava/lang/Object;
.source "NullSurfaceCameraPreview.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/camera/CameraPreview;


# static fields
.field private static final NUM_PREVIEW_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# instance fields
.field private mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

.field protected mCameraOrientationDeg:F

.field private final mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

.field private mUsePreviewBuffers:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;)V
    .locals 1
    .param p1, "cameraUtil"    # Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 31
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraOrientationDeg:F

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .line 40
    return-void
.end method

.method private setSceneMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 141
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    return-object v0
.end method

.method public getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getReportedHorizontalFovDegrees()F
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;
    .locals 8
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;
    .param p2, "desiredPreviewWidth"    # I
    .param p3, "desiredPreviewHeight"    # I
    .param p4, "usePreviewBuffers"    # Z
    .param p5, "desiredPhotoWidth"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 79
    iput-boolean p4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mUsePreviewBuffers:Z

    .line 80
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v4, :cond_0

    .line 81
    invoke-static {}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v4, :cond_1

    .line 84
    const-string v4, "LightCycle"

    const-string v5, "Camera is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-object v3

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 90
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFocusMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFlashMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 96
    const-string v3, "LightCycle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v5, v5, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v5, v5, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 100
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->setFrameRate(Landroid/hardware/Camera$Parameters;)V

    .line 102
    invoke-virtual {v2, v6, v6}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 103
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 104
    invoke-virtual {p0, v2, p5}, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 106
    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3, v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 111
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    .line 112
    .local v1, "fov":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field of view reported = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 115
    const-string v3, "Setting the preview display."

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3, v6}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setDisplayOrientation(I)V

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->allocateBuffers(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;Lcom/google/android/apps/lightcycle/util/Size;ILandroid/hardware/Camera$PreviewCallback;)V

    .line 130
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->stopPreview()V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 177
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->release()V

    .line 179
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 181
    :cond_0
    return-void
.end method

.method public returnCallbackBuffer([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->addCallbackBuffer([B)V

    .line 166
    :cond_0
    return-void
.end method

.method public setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 53
    return-void
.end method

.method public setPictureWidth(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "desiredWidth"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 187
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->startPreview()V

    .line 137
    return-void
.end method
