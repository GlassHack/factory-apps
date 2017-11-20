.class public Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;
.super Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;
.source "SmoothRotatingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadeInFadeOutAnimation"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x190L

.field private static final SECOND_ANIMATION_DELAY_MS:J = 0x1f4L


# direct methods
.method public constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0
    .param p1, "smoothRotatingTextView"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    .line 399
    return-void
.end method


# virtual methods
.method protected runAnimation(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "currentTextView"    # Landroid/view/View;
    .param p2, "nextTextView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$1;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 426
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation$2;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 451
    const/4 v0, 0x2

    return v0
.end method
