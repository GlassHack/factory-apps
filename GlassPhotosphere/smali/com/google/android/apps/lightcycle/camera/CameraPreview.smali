.class public interface abstract Lcom/google/android/apps/lightcycle/camera/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# virtual methods
.method public abstract getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
.end method

.method public abstract getPhotoSize()Lcom/google/android/apps/lightcycle/util/Size;
.end method

.method public abstract getReportedHorizontalFovDegrees()F
.end method

.method public abstract initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;
.end method

.method public abstract releaseCamera()V
.end method

.method public abstract returnCallbackBuffer([B)V
.end method

.method public abstract setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
.end method

.method public abstract setPictureWidth(Landroid/hardware/Camera$Parameters;I)V
.end method

.method public abstract startPreview()V
.end method
