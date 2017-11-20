.class Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;->onAnimationEnd()V

    .line 439
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method
