.class Lcom/google/glass/camera/CameraClient$PictureRequest$2;
.super Ljava/lang/Object;
.source "CameraClient.java"

# interfaces
.implements Lcom/google/android/glass/media/CameraManager$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/CameraClient$PictureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/camera/CameraClient$PictureRequest;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureComplete()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "HQ fallback capture complete, releasing the camera."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/Picture;->setIsGcamHqFallback(Z)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->isPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->release()V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraListener;->onPictureCaptureComplete()V

    .line 172
    return-void
.end method
