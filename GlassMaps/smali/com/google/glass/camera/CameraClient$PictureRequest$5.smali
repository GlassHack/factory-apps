.class Lcom/google/glass/camera/CameraClient$PictureRequest$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 211
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received final jpeg from camera. [time=%dms]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v5, v5, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 211
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    iget-boolean v0, v0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->isPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->release()V

    .line 225
    :cond_1
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest$5;[B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/CameraClient$PictureRequest$5$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method
