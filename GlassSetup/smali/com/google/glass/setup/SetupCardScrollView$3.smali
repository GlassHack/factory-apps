.class Lcom/google/glass/setup/SetupCardScrollView$3;
.super Ljava/lang/Object;
.source "SetupCardScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupCardScrollView;->setArrowAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupCardScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupCardScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView$3;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView$3;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0}, Lcom/google/glass/setup/SetupCardScrollView;->access$500(Lcom/google/glass/setup/SetupCardScrollView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 179
    return-void
.end method
