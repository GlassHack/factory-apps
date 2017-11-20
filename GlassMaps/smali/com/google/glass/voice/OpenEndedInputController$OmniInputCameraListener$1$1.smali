.class Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->access$4900(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V

    .line 1269
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->FINISHED_DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$5000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V

    .line 1270
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v1, v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->access$5100(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1272
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5200(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 1273
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1$1;->this$2:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;->this$1:Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5300(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 1274
    return-void
.end method
