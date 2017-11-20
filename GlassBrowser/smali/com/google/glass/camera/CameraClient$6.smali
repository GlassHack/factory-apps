.class Lcom/google/glass/camera/CameraClient$6;
.super Landroid/os/AsyncTask;
.source "CameraClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClient;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 561
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3}, Lcom/google/glass/camera/CameraClient;->access$900(Lcom/google/glass/camera/CameraClient;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v4, "Couldn\'t open camera to start previewing."

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 563
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 600
    :goto_0
    return-object v3

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3}, Lcom/google/glass/camera/CameraClient;->access$800(Lcom/google/glass/camera/CameraClient;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Camera release is requested before preview starts, skipping preview."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 571
    :cond_1
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3, v6}, Lcom/google/glass/camera/CameraClient;->access$602(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 573
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3}, Lcom/google/glass/camera/CameraClient;->access$1000(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 574
    .local v2, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v2, :cond_2

    .line 575
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v4, "Viewfinder not available; stopping recording."

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 576
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 579
    :cond_2
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Setting camera parameters."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v4, v4, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v4}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/glass/media/CameraManager;->setDefaultPreviewParameters(Landroid/hardware/Camera;)Z

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v3, v2}, Lcom/google/glass/android/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    iget-object v4, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v4}, Lcom/google/glass/camera/CameraClient;->access$1100(Lcom/google/glass/camera/CameraClient;)[[B

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lcom/google/glass/android/hardware/Camera;->addCallbackBuffer([B)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 584
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v4, "Failed to set preview texture. [message=%s]"

    new-array v5, v6, [Ljava/lang/Object;

    .line 586
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-virtual {v3, v4}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 587
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    iget-object v4, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v4}, Lcom/google/glass/camera/CameraClient;->access$1200(Lcom/google/glass/camera/CameraClient;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/android/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 596
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v3}, Lcom/google/glass/android/hardware/Camera;->startPreview()V

    .line 597
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 598
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$6;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v4, "Could not start preview [msg=%s]."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 600
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

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
    .param p1, "success"    # Ljava/lang/Boolean;

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
