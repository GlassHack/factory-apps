.class Lcom/google/glass/camera/CameraClient$5;
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
    .line 537
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$5;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$5;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$5;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->release()V

    .line 542
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$5;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$5;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$802(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 545
    return-void
.end method
