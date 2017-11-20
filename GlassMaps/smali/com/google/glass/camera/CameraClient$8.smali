.class Lcom/google/glass/camera/CameraClient$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->stopPreview()V

    .line 684
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->release()V

    .line 685
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 686
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v2}, Lcom/google/glass/camera/CameraClient;->access$1300(Lcom/google/glass/camera/CameraClient;Z)V

    .line 688
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$400(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->releaseDestroyedPreviewSurface()V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$8;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Camera is already null; cannot stop preview."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
