.class public Lcom/google/glass/android/hardware/CameraImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/android/hardware/Camera;


# instance fields
.field private final camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    .line 18
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 53
    return-void
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 73
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 38
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 78
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 33
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 48
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 43
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 58
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 63
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/android/hardware/CameraImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 68
    return-void
.end method
