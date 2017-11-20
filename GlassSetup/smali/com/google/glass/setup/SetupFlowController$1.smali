.class Lcom/google/glass/setup/SetupFlowController$1;
.super Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;
.source "SetupFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupFlowController;

.field final synthetic val$scrollView:Lcom/google/glass/setup/SetupCardScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/widget/SmoothRotatingTextView;Lcom/google/glass/setup/SetupCardScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupFlowController;
    .param p2, "x0"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/glass/setup/SetupFlowController$1;->this$0:Lcom/google/glass/setup/SetupFlowController;

    iput-object p3, p0, Lcom/google/glass/setup/SetupFlowController$1;->val$scrollView:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-direct {p0, p2}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->onAnimationEnd()V

    .line 248
    iget v0, p0, Lcom/google/glass/setup/SetupFlowController$1;->finishedAnimationCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$1;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$1;->this$0:Lcom/google/glass/setup/SetupFlowController;

    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController$1;->val$scrollView:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0, v1}, Lcom/google/glass/setup/SetupFlowController;->access$000(Lcom/google/glass/setup/SetupFlowController;Landroid/view/View;)V

    .line 253
    :cond_0
    return-void
.end method
