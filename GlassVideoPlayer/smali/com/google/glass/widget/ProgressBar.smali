.class public Lcom/google/glass/widget/ProgressBar;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final DRAWABLE_MAX_LEVEL:I = 0x2710


# instance fields
.field private isShowing:Z

.field private maxProgress:I

.field private progress:I

.field private progressAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    .line 23
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    .line 29
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->progress_bar_determinate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method private calculateDrawableLevel()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 3

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 65
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    goto :goto_0

    .line 63
    :cond_1
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setTranslationY(F)V

    goto :goto_1
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    .line 71
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/widget/ProgressBar;->calculateDrawableLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 87
    return-void
.end method

.method public show(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 48
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setTranslationY(F)V

    goto :goto_1
.end method

.method public startProgress(J)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 98
    return-void
.end method

.method public startProgress(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->progress_bar_determinate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->show(Z)V

    .line 122
    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    .line 123
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    if-eqz p4, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    return-void

    .line 122
    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method public stopProgress()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 139
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->hide(Z)V

    .line 140
    return-void
.end method
