.class Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;->runAnimation(Landroid/view/View;Landroid/view/View;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

.field final synthetic val$currentTextView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    iput-object p2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;->val$currentTextView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;->val$currentTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;->onAnimationEnd()V

    .line 414
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 424
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 408
    return-void
.end method
