.class Lcom/google/glass/camera/BaseTakePictureActivity$3;
.super Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;
.source "BaseTakePictureActivity.java"


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
    .line 200
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received wink intent in viewfinder mode."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldAllowCameraButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Taking a picture by wink in viewfinder mode."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iput-boolean v4, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastPictureFromWink:Z

    .line 208
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, v4}, Lcom/google/glass/camera/BaseTakePictureActivity;->prepareForPictureOrVideoRequest(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->takePicture()V

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity$3;->abortBroadcast()V

    .line 216
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Taking picture is not allowed at the moment."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$3;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$300(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    goto :goto_0
.end method
