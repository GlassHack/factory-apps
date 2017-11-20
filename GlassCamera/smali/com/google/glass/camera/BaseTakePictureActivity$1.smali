.class Lcom/google/glass/camera/BaseTakePictureActivity$1;
.super Ljava/lang/Object;
.source "BaseTakePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "logging postview timeout."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$100(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "to"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Finishing the activity now!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->release()V

    .line 113
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$1;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 114
    return-void
.end method
