.class Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 317
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SurfaceTexture is available."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$300(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, p1}, Lcom/google/glass/camera/CameraClient;->access$302(Lcom/google/glass/camera/CameraClient;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 328
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$400(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "App requested us to keep the preview surface, not destroying surface."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, p1}, Lcom/google/glass/camera/CameraClient;->access$302(Lcom/google/glass/camera/CameraClient;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 354
    :goto_0
    return v4

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$500(Lcom/google/glass/camera/CameraClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$600(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, p1}, Lcom/google/glass/camera/CameraClient;->access$302(Lcom/google/glass/camera/CameraClient;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 346
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not releasing preview surface yet, since camera is still using it."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/glass/camera/CameraClient;->access$702(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 352
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 349
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Releasing preview surface since camera is not using it."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
