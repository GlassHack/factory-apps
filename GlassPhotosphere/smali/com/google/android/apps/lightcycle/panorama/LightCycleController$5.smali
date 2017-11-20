.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "image"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setAddNextFrame()V

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$902(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPhotoFinished()V

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setImageData([B)V

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->returnCallbackBuffer([B)V

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    goto :goto_0
.end method
