.class public interface abstract Lcom/google/glass/android/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract getAndroidCamera()Landroid/hardware/Camera;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract lock()V
.end method

.method public abstract release()V
.end method

.method public abstract setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
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

.method public abstract unlock()V
.end method
