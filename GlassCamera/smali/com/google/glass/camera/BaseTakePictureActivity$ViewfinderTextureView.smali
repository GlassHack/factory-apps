.class Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;
.super Landroid/view/TextureView;
.source "BaseTakePictureActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewfinderTextureView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    .line 760
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 761
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ViewfinderTextureView attached to window."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->startCameraPreview()V

    .line 801
    :cond_0
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 802
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ViewfinderTextureView detached from window."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->stopCameraPreview()V

    .line 812
    :cond_0
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 813
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 765
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 766
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ViewfinderTextureView onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    sparse-switch p2, :sswitch_data_0

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 776
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->startCameraPreview()V

    .line 778
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$800(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    .line 779
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$902(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z

    goto :goto_0

    .line 787
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->stopCameraPreview()V

    goto :goto_0

    .line 771
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
