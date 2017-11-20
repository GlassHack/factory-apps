.class public Lcom/google/glass/maps/view/Animations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FADE_DURATION_MS:I = 0x190

.field public static final PUSH_PULL_DURATION_MS:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 80
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 82
    new-instance v1, Lcom/google/glass/maps/view/Animations$CosineInterpolator;

    invoke-direct {v1}, Lcom/google/glass/maps/view/Animations$CosineInterpolator;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeIn(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/glass/maps/view/Animations;->resetView(Landroid/view/View;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 96
    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeOut(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeOutAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/glass/maps/view/Animations;->fadeOut(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/view/Animations$HideOnEndListener;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/view/Animations$HideOnEndListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static fadeTransition(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/google/glass/maps/view/Animations;->fadeOutAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    invoke-static {p1}, Lcom/google/glass/maps/view/Animations;->fadeIn(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 133
    :cond_1
    return-void
.end method

.method public static pullOutFromBottomAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 179
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/view/Animations$HideOnEndListener;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/view/Animations$HideOnEndListener;-><init>(Landroid/view/View;)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static pullOutFromTopAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 155
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/view/Animations$HideOnEndListener;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/view/Animations$HideOnEndListener;-><init>(Landroid/view/View;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static pushInFromBottom(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/glass/maps/view/Animations;->resetView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static pushInFromTop(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/glass/maps/view/Animations;->resetView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/view/Animations;->baseAnimator(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static resetView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 187
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 188
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 189
    return-void
.end method
