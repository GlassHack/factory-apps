.class Lcom/google/glass/setup/SetupStackView$2;
.super Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;
.source "SetupStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupStackView;->popView()Lcom/google/glass/setup/SetupCardScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupStackView;

.field final synthetic val$oldTopView:Lcom/google/glass/setup/SetupCardScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupStackView;Lcom/google/glass/setup/SetupCardScrollView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupStackView;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/setup/SetupStackView$2;->this$0:Lcom/google/glass/setup/SetupStackView;

    iput-object p2, p0, Lcom/google/glass/setup/SetupStackView$2;->val$oldTopView:Lcom/google/glass/setup/SetupCardScrollView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;-><init>(Lcom/google/glass/setup/SetupStackView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationDone()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/setup/SetupStackView$2;->this$0:Lcom/google/glass/setup/SetupStackView;

    iget-object v1, p0, Lcom/google/glass/setup/SetupStackView$2;->val$oldTopView:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupStackView;->removeView(Landroid/view/View;)V

    .line 111
    return-void
.end method
