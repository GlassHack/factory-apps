.class public Lcom/google/glass/widget/SliderView;
.super Landroid/widget/FrameLayout;
.source "SliderView.java"


# static fields
.field private static final HIDE_SLIDER_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MIN_SLIDER_WIDTH_PX:I = 0x28

.field private static final SLIDER_BAR_RESIZE_ANIMATION_DURATION_MILLIS:J = 0x12cL


# instance fields
.field private animatedCount:F

.field private count:I

.field private countAnimator:Landroid/animation/ObjectAnimator;

.field private final hideSliderRunnable:Ljava/lang/Runnable;

.field private final indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

.field private index:F

.field private progressAnimator:Landroid/view/ViewPropertyAnimator;

.field private slideableScale:F

.field private final slider:Landroid/view/View;

.field private sliderShowing:Z

.field private sliderWasShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v4, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 44
    iput v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 45
    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 57
    new-instance v0, Lcom/google/glass/widget/SliderView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/SliderView$1;-><init>(Lcom/google/glass/widget/SliderView;)V

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    .line 68
    iput-boolean v4, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    .line 83
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->slider:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    sget v0, Lcom/google/glass/common/R$id;->slider_control:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    .line 87
    sget v0, Lcom/google/glass/common/R$id;->indeterminate_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/IndeterminateProgressView;

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    .line 89
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 90
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/SliderView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/SliderView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/SliderView;)Lcom/google/glass/widget/IndeterminateProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/SliderView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    return-object v0
.end method

.method private animateCountTo(F)V
    .locals 4
    .param p1, "count"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_0
    const-string v0, "animatedCount"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    .line 205
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 206
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 207
    return-void
.end method

.method private getBaseSliderWidth()I
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 249
    .local v1, "width":I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 250
    .local v0, "baseSliderWidth":I
    const/16 v2, 0x28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private hideIndeterminateSlider(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    invoke-virtual {v1}, Lcom/google/glass/widget/IndeterminateProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/widget/SliderView$3;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/SliderView$3;-><init>(Lcom/google/glass/widget/SliderView;)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/IndeterminateProgressView;->setTranslationY(F)V

    .line 170
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/IndeterminateProgressView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSlider(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 118
    iget-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    .local v0, "height":I
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 131
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private hideSliderAfterTimeout()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/widget/SliderView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method private setProportionalIndex(FIZ)V
    .locals 9
    .param p1, "nextIndex"    # F
    .param p2, "animationDuration"    # I
    .param p3, "showSlider"    # Z

    .prologue
    const/4 v8, 0x1

    .line 270
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 271
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iput p1, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 277
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v3, v5, v6

    .line 278
    .local v3, "numItemsOnScreen":F
    iget v5, p0, Lcom/google/glass/widget/SliderView;->index:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    sub-float v1, v5, v6

    .line 279
    .local v1, "indexOnLeftEdge":F
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 280
    .local v4, "width":I
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    div-int v0, v4, v5

    .line 281
    .local v0, "baseSliderWidth":I
    int-to-float v5, v0

    mul-float v2, v1, v5

    .line 282
    .local v2, "newX":F
    if-eqz p2, :cond_2

    .line 283
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 284
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 289
    :goto_1
    if-eqz p3, :cond_0

    .line 290
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 291
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->hideSliderAfterTimeout()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method private showIndeterminateSlider(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    invoke-virtual {v0}, Lcom/google/glass/widget/IndeterminateProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/SliderView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SliderView$2;-><init>(Lcom/google/glass/widget/SliderView;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/IndeterminateProgressView;->setTranslationY(F)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/IndeterminateProgressView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSlider(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 97
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 108
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private updateSliderWidth(Z)V
    .locals 7
    .param p1, "showSlider"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 442
    iget v3, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 443
    invoke-direct {p0, v6}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 459
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    .local v1, "sliderParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v0, v3, v4

    .line 450
    .local v0, "numItemsOnScreen":F
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->getBaseSliderWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 451
    .local v2, "sliderWidth":I
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 452
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 453
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    if-eqz p1, :cond_1

    .line 456
    invoke-direct {p0, v6}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 458
    :cond_1
    iget v3, p0, Lcom/google/glass/widget/SliderView;->index:F

    invoke-direct {p0, v3, v5, p1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    goto :goto_0
.end method


# virtual methods
.method public dismissManualProgress()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 393
    return-void
.end method

.method getAnimatedCount()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    return v0
.end method

.method public isSliderShowing()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    return v0
.end method

.method setAnimatedCount(F)V
    .locals 1
    .param p1, "count"    # F

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setAnimatedCount(FZ)V

    .line 188
    return-void
.end method

.method setAnimatedCount(FZ)V
    .locals 0
    .param p1, "count"    # F
    .param p2, "showSlider"    # Z

    .prologue
    .line 192
    iput p1, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 193
    invoke-direct {p0, p2}, Lcom/google/glass/widget/SliderView;->updateSliderWidth(Z)V

    .line 194
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setCount(IZ)V

    .line 219
    return-void
.end method

.method public setCount(IZ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "showSlider"    # Z

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 227
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 229
    iput p1, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 230
    iget v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 234
    if-eqz p2, :cond_0

    .line 235
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->animateCountTo(F)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/SliderView;->setAnimatedCount(FZ)V

    goto :goto_0
.end method

.method public setManualProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setManualProgress(FZ)V

    .line 361
    return-void
.end method

.method public setManualProgress(FZ)V
    .locals 4
    .param p1, "progress"    # F
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 371
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 372
    invoke-direct {p0, v3}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 375
    .local v1, "width":I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 376
    .local v0, "sliderParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 377
    neg-int v2, v1

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 378
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    if-eqz p2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v3, v1

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setProportionalIndex(F)V
    .locals 2
    .param p1, "nextIndex"    # F

    .prologue
    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    .line 244
    return-void
.end method

.method public setProportionalIndex(FI)V
    .locals 1
    .param p1, "nextIndex"    # F
    .param p2, "animationDuration"    # I

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    .line 262
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 435
    iput p1, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->updateSliderWidth(Z)V

    .line 437
    return-void
.end method

.method public startIndeterminate()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 403
    .local v1, "width":I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 404
    .local v0, "sliderParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 405
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-boolean v2, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-eqz v2, :cond_0

    .line 409
    iput-boolean v4, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    .line 410
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 413
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->showIndeterminateSlider(Z)V

    .line 414
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    invoke-virtual {v2}, Lcom/google/glass/widget/IndeterminateProgressView;->start()V

    .line 415
    return-void
.end method

.method public startProgress(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 303
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 304
    return-void
.end method

.method public startProgress(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "animationDuration"    # J
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 308
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "animationDuration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "animationDuration"    # J
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v4, 0x0

    .line 324
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 325
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 326
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 329
    .local v1, "width":I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 330
    .local v0, "sliderParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 331
    neg-int v2, v1

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    .line 334
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 335
    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 336
    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 337
    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    .line 338
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    return-void
.end method

.method public stopIndeterminate()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Lcom/google/glass/widget/IndeterminateProgressView;

    invoke-virtual {v0}, Lcom/google/glass/widget/IndeterminateProgressView;->stop()V

    .line 431
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 432
    return-void
.end method

.method public stopProgress()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 349
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 350
    return-void
.end method
