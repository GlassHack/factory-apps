.class Lcom/google/glass/camera/CameraClient$6;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$900(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v2, "Couldn\'t open camera to start previewing."

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 563
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$800(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Camera release is requested before preview starts, skipping preview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v5}, Lcom/google/glass/camera/CameraClient;->access$602(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 573
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1000(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 574
    if-nez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v2, "Viewfinder not available; stopping recording."

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 576
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setting camera parameters."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v3}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/glass/media/CameraManager;->setDefaultPreviewParameters(Landroid/hardware/Camera;)Z

    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v2, v0}, Lcom/google/glass/android/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 590
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 591
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3}, Lcom/google/glass/camera/CameraClient;->access$1100(Lcom/google/glass/camera/CameraClient;)[[B

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lcom/google/glass/android/hardware/Camera;->addCallbackBuffer([B)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v3, "Failed to set preview texture. [message=%s]"

    new-array v4, v5, [Ljava/lang/Object;

    .line 586
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {v2, v0}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 587
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1200(Lcom/google/glass/camera/CameraClient;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/glass/android/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 596
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->startPreview()V

    .line 597
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 598
    :catch_1
    move-exception v0

    .line 599
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v3, "Could not start preview [msg=%s]."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 600
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$1300(Lcom/google/glass/camera/CameraClient;Z)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->stopPreview()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 558
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
