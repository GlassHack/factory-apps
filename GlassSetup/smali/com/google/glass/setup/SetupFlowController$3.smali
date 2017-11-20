.class Lcom/google/glass/setup/SetupFlowController$3;
.super Ljava/lang/Object;
.source "SetupFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupFlowController;

.field final synthetic val$smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupFlowController;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/glass/setup/SetupFlowController$3;->this$0:Lcom/google/glass/setup/SetupFlowController;

    iput-object p2, p0, Lcom/google/glass/setup/SetupFlowController$3;->val$smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$3;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-static {v0}, Lcom/google/glass/setup/SetupFlowController;->access$100(Lcom/google/glass/setup/SetupFlowController;)Lcom/google/glass/setup/SetupFlowController$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$3;->val$smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$3;->val$smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 362
    :cond_0
    return-void
.end method
