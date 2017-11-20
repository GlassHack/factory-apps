.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;
.super Landroid/os/AsyncTask;
.source "LightCycleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takePhoto()V
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v3

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v6

    .line 362
    .local v6, "c":Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    if-nez v6, :cond_2

    .line 363
    const-string v0, "Unable to take a photo : camera is null"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-interface {v6, v3}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 370
    invoke-interface {v6, v3}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTestCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v6, v0, v1, v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAzimuthInDeg()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;-><init>(JLjava/lang/String;Landroid/location/Location;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
