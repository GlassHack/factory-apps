.class public Lcom/google/glass/camera/CameraClient$PictureRequest;
.super Ljava/lang/Object;
.source "CameraClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/CameraClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PictureRequest"
.end annotation


# instance fields
.field public final captureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

.field public final fallbackCaptureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

.field public final jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field public picture:Lcom/google/glass/camera/Picture;

.field public final postviewCallback:Landroid/hardware/Camera$PictureCallback;

.field public final shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/CameraClient;Lcom/google/glass/util/FileSaver;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;
    .param p2, "saver"    # Lcom/google/glass/util/FileSaver;
    .param p3, "id"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$PictureRequest$1;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->captureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

    .line 160
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$PictureRequest$2;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->fallbackCaptureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

    .line 175
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$PictureRequest$3;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 185
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$PictureRequest$4;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->postviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 208
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest$5;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$PictureRequest$5;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 143
    new-instance v0, Lcom/google/glass/camera/Picture;

    invoke-direct {v0, p2, p3}, Lcom/google/glass/camera/Picture;-><init>(Lcom/google/glass/util/FileSaver;I)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    .line 144
    return-void
.end method
