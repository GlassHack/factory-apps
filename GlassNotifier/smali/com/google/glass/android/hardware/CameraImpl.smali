.class public Lcom/google/glass/android/hardware/CameraImpl;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Lcom/google/glass/android/hardware/Camera;


# instance fields
.field private final camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    .line 19
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .param p1, "previewCallbackBuffer"    # [B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 59
    return-void
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 79
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 39
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 89
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 1
    .param p1, "errorCallback"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 84
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 34
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 54
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 49
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 44
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 64
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 69
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 74
    return-void
.end method
