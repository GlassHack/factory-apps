.class Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;
.super Ljava/lang/Object;
.source "CameraClientV2.java"

# interfaces
.implements Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/CameraClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GcamCallbacksImpl"
.end annotation


# instance fields
.field public picture:Lcom/google/glass/camera/Picture;

.field final synthetic this$0:Lcom/google/glass/camera/CameraClientV2;


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/CameraClientV2;Lcom/google/glass/util/FileSaver;I)V
    .locals 1
    .param p2, "saver"    # Lcom/google/glass/util/FileSaver;
    .param p3, "id"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/camera/Picture;

    invoke-direct {v0, p2, p3}, Lcom/google/glass/camera/Picture;-><init>(Lcom/google/glass/util/FileSaver;I)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    .line 34
    return-void
.end method


# virtual methods
.method public onPostview(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "burstId"    # I
    .param p2, "postview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 39
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received a postview from camera (V2 Gcam). [time=%dms,w=%d,h=%d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v6}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 41
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Lcom/google/glass/camera/Picture;->setCaptureTimeNow()V

    .line 45
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$1;-><init>(Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, p2}, Lcom/google/glass/camera/Picture;->saveThumbnail(Landroid/graphics/Bitmap;)V

    .line 54
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;-><init>(Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public onSnapshotComplete(ILjava/lang/String;)V
    .locals 9
    .param p1, "burstId"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 70
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 71
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received final jpeg from camera (V2 Gcam). [time=%dms]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v6}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    .line 71
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "validFile":Z
    if-nez p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to get final jpeg image and save it to disk!"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Should have saved to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x0

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    .line 85
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClientV2;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/Picture;->onJpegSaved(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;-><init>(Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    :cond_2
    return-void
.end method
