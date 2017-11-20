.class Lcom/google/glass/camera/CameraClient$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$7;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$7;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$300(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$7;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$300(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 669
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$7;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$302(Lcom/google/glass/camera/CameraClient;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 671
    :cond_0
    return-void
.end method
