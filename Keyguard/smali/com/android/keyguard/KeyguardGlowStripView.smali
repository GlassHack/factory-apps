.class public Lcom/android/keyguard/KeyguardGlowStripView;
.super Landroid/widget/LinearLayout;
.source "KeyguardGlowStripView.java"


# instance fields
.field private mAnimationProgress:F

.field private mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotSize:I

.field private mDotStripTop:I

.field private mDrawDots:Z

.field private mHorizontalDotGap:I

.field private mNumDots:I


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3e4ccccd    # 0.2f

    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    if-nez v5, :cond_1

    .line 104
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingLeft()I

    move-result v4

    .line 85
    .local v4, "xOffset":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v7, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    if-ge v2, v5, :cond_0

    .line 90
    int-to-float v5, v2

    mul-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float v3, v8, v5

    .line 92
    .local v3, "relativeDotPosition":F
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 93
    .local v1, "distance":F
    const/4 v5, 0x0

    div-float v6, v1, v8

    sub-float v6, v9, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 95
    .local v0, "alpha":F
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    int-to-float v5, v4

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 100
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 73
    .local v0, "availableWidth":I
    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->invalidate()V

    .line 76
    return-void
.end method
