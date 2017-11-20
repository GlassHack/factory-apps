.class Lcom/google/glass/camera/StartCameraReceiver$1;
.super Ljava/lang/Object;
.source "StartCameraReceiver.java"

# interfaces
.implements Lcom/google/android/glass/media/CameraManager$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/StartCameraReceiver;->preloadCamera(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/StartCameraReceiver;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/StartCameraReceiver;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/StartCameraReceiver;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->this$0:Lcom/google/glass/camera/StartCameraReceiver;

    iput-object p2, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpenFailed()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->this$0:Lcom/google/glass/camera/StartCameraReceiver;

    invoke-static {v0}, Lcom/google/glass/camera/StartCameraReceiver;->access$000(Lcom/google/glass/camera/StartCameraReceiver;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to open camera!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "of"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onCameraOpened(Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->this$0:Lcom/google/glass/camera/StartCameraReceiver;

    invoke-static {v0}, Lcom/google/glass/camera/StartCameraReceiver;->access$000(Lcom/google/glass/camera/StartCameraReceiver;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Camera opened but is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 49
    iget-object v0, p0, Lcom/google/glass/camera/StartCameraReceiver$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CAMERA_WARMUP:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method
