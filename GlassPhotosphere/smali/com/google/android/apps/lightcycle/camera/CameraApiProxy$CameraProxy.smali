.class public interface abstract Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
.super Ljava/lang/Object;
.source "CameraApiProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraProxy"
.end annotation


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract release()V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startPreview()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method
