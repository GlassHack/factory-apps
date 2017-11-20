.class Lcom/google/glass/camera/CameraClient$PictureRequest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$PictureRequest;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 188
    sget-object v0, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 189
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$PictureRequest;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received a postview from camera. [time=%dms,w=%d,h=%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/CameraClient$PictureRequest$4;->this$1:Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v6, v6, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v6}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    iget v5, v0, Lcom/google/glass/camera/Size;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Lcom/google/glass/camera/Size;->height:I

    .line 191
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 189
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v1, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;-><init>(Lcom/google/glass/camera/CameraClient$PictureRequest$4;[BLcom/google/glass/camera/Size;)V

    .line 204
    invoke-static {}, Lcom/google/glass/camera/CameraClient;->access$000()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/camera/CameraClient$PictureRequest$4$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method
