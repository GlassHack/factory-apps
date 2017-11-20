.class Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->access$5100(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;-><init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;)V

    .line 1265
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1276
    return-void
.end method
