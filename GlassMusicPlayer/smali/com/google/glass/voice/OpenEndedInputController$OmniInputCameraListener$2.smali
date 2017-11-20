.class Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5600(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->access$5500(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Lcom/google/glass/camera/Picture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;->onDisplayingThumbnail(Lcom/google/glass/camera/Picture;)V

    .line 1300
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/CropMarksView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/CropMarksView;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->access$5800(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    return-void
.end method
