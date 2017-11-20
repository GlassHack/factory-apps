.class Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;
.super Ljava/lang/Object;
.source "CameraApiProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraProxyImpl"
.end annotation


# instance fields
.field private final camera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    .line 30
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 55
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 101
    :cond_0
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 35
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 87
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 45
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 65
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 75
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 70
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 82
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 50
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 60
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 93
    return-void
.end method
