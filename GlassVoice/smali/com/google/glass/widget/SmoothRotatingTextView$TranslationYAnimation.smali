.class public Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;
.super Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;
.source "SmoothRotatingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationYAnimation"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x190L

.field private static final SECOND_ANIMATION_DELAY_MS:J = 0x64L


# direct methods
.method public constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0
    .param p1, "smoothRotatingTextView"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    .line 331
    return-void
.end method


# virtual methods
.method protected runAnimation(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "currentTextView"    # Landroid/view/View;
    .param p2, "nextTextView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->getHeight()I

    move-result v0

    .line 336
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 338
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 339
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 359
    int-to-float v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 360
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 361
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 364
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 366
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 386
    const/4 v1, 0x2

    return v1
.end method
