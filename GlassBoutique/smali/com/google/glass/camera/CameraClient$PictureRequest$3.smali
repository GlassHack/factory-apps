.class Lcom/google/glass/camera/CameraClient$PictureRequest$3;
.super Ljava/lang/Object;
.source "CameraClient.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/CameraClient$PictureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/camera/CameraClient$PictureRequest;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 8

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Lcom/google/glass/camera/Picture;->setCaptureTimeNow()V

    .line 179
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Fired shutter after request. [time=%dms]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v6, v6, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v6}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 179
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$3;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraListener;->onCameraShutter()V

    .line 182
    return-void
.end method
