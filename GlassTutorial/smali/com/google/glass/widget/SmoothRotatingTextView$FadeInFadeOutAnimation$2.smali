.class Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;
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


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;->onAnimationEnd()V

    .line 439
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 447
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 434
    return-void
.end method
