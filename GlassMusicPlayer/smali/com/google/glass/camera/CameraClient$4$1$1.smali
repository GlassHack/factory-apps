.class Lcom/google/glass/camera/CameraClient$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/google/glass/camera/CameraClient$4$1;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$4$1;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$4$1$1;->this$2:Lcom/google/glass/camera/CameraClient$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$4$1$1;->this$2:Lcom/google/glass/camera/CameraClient$4$1;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$4$1;->this$1:Lcom/google/glass/camera/CameraClient$4;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$4$1$1;->this$2:Lcom/google/glass/camera/CameraClient$4$1;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient$4$1;->this$1:Lcom/google/glass/camera/CameraClient$4;

    iget-wide v1, v1, Lcom/google/glass/camera/CameraClient$4;->val$requestTime:J

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$4$1$1;->this$2:Lcom/google/glass/camera/CameraClient$4$1;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient$4$1;->this$1:Lcom/google/glass/camera/CameraClient$4;

    iget v3, v3, Lcom/google/glass/camera/CameraClient$4;->val$retryCount:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/google/glass/camera/CameraClient$4$1$1;->this$2:Lcom/google/glass/camera/CameraClient$4$1;

    iget-object v4, v4, Lcom/google/glass/camera/CameraClient$4$1;->this$1:Lcom/google/glass/camera/CameraClient$4;

    iget-boolean v4, v4, Lcom/google/glass/camera/CameraClient$4;->val$useGcam:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/camera/CameraClient;->takePictureInternal(JIZ)V

    .line 515
    return-void
.end method
