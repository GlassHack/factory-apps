.class public Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;
.super Landroid/view/SurfaceView;
.source "LegacyCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/apps/lightcycle/camera/CameraPreview;


# static fields
.field private static final NUM_PREVIEW_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# instance fields
.field protected mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

.field private final mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

.field protected mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUsePreviewBuffers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/camera/CameraUtility;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraUtil"    # Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 47
    .local v0, "mHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    return-object v0
.end method

.method public getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getReportedHorizontalFovDegrees()F
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

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

    const/4 v7, 0x0

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 77
    iput-boolean p4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mUsePreviewBuffers:Z

    .line 78
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v4, :cond_0

    .line 79
    invoke-static {}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v4, :cond_1

    .line 82
    const-string v4, "LightCycle"

    const-string v5, "Camera is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-object v3

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 88
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFocusMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFlashMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 92
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 94
    const-string v4, "LightCycle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v6, v6, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v6, v6, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v5, v5, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 99
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->setFrameRate(Landroid/hardware/Camera$Parameters;)V

    .line 101
    invoke-virtual {v2, v7, v7}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 102
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 103
    invoke-virtual {p0, v2, p5}, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 105
    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 108
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v4, v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 110
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    .line 111
    .local v1, "fov":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field of view reported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 114
    const-string v4, "Setting the preview display."

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v5}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->allocateBuffers(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;Lcom/google/android/apps/lightcycle/util/Size;ILandroid/hardware/Camera$PreviewCallback;)V

    .line 130
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "exception":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->release()V

    .line 120
    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    goto :goto_1

    .line 128
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->stopPreview()V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 169
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->release()V

    .line 171
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 173
    :cond_0
    return-void
.end method

.method public returnCallbackBuffer([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->addCallbackBuffer([B)V

    .line 161
    :cond_0
    return-void
.end method

.method public setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 59
    return-void
.end method

.method public setPictureWidth(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "desiredWidth"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 199
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 152
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 154
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->startPreview()V

    .line 148
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 176
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 181
    const-string v0, "Camera surface created."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    const/16 v2, 0x140

    const/16 v3, 0xf0

    const/4 v4, 0x1

    const/16 v5, 0x640

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v6

    .line 187
    .local v6, "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget v1, v6, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget v2, v6, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setFrameDimensions(II)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/LegacyCameraPreview;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startCamera(Ljava/lang/Object;Z)V

    .line 191
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 194
    return-void
.end method
