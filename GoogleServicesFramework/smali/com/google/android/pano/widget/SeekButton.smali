.class public Lcom/google/android/pano/widget/SeekButton;
.super Landroid/view/View;
.source "SeekButton.java"


# instance fields
.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

.field protected mDirection:I

.field protected mDisplayRate:Ljava/lang/String;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mInactiveIconHeight:I

.field private mInactiveIconWidth:I

.field protected mInactiveScale:F

.field private mMaxTextWidth:F

.field protected mPosition:F

.field protected mRate:F

.field protected mRateFormat:Ljava/text/DecimalFormat;

.field protected mRect:Landroid/graphics/Rect;

.field protected mRes:Landroid/content/res/Resources;

.field protected mSeek:Landroid/graphics/drawable/Drawable;

.field protected mSeekActiveAlpha:I

.field protected mSeekAlpha:I

.field protected mSeekRes:I

.field protected mStartSnapTime:J

.field protected mStretch:Landroid/graphics/drawable/Drawable;

.field protected mStretchRes:I

.field protected mTargetPosition:F

.field protected mTextColor:I

.field protected mTextPadding:I

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    .line 94
    iput v2, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 95
    iput v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRate:F

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRateFormat:Ljava/text/DecimalFormat;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    .line 132
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->initDefaults()V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/SeekButton;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    :cond_0
    return-void
.end method

.method private drawSeekIcon(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "stretchX"    # I
    .param p3, "overlap"    # I
    .param p4, "iconOffset"    # I

    .prologue
    const/4 v5, 0x2

    .line 478
    invoke-direct {p0}, Lcom/google/android/pano/widget/SeekButton;->isActive()Z

    move-result v1

    .line 479
    .local v1, "isActive":Z
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 480
    .local v0, "iconHeight":I
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 482
    .local v2, "topOffset":I
    :goto_1
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v3, v5, :cond_2

    .line 483
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p3

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 484
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v4, p2, p4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 489
    :goto_2
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 490
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 492
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ClipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 493
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 495
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v3, v5, :cond_3

    .line 496
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 497
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v4, p2, p3

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 503
    :goto_3
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 505
    return-void

    .line 479
    .end local v0    # "iconHeight":I
    .end local v2    # "topOffset":I
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    goto :goto_0

    .line 480
    .restart local v0    # "iconHeight":I
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    goto :goto_1

    .line 486
    .restart local v2    # "topOffset":I
    :cond_2
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 487
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v4, p2, p3

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 499
    :cond_3
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v4, p2, p3

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 500
    iget-object v3, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v4, p2, p4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method private drawSeekIconAnimating(Landroid/graphics/Canvas;III)Z
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "stretchX"    # I
    .param p3, "overlap"    # I
    .param p4, "iconOffset"    # I

    .prologue
    .line 383
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    if-nez v8, :cond_0

    .line 384
    const/4 v8, 0x0

    .line 474
    :goto_0
    return v8

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x43fa0000    # 500.0f

    div-float v5, v8, v9

    .line 388
    .local v5, "animationProgress":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_1

    .line 390
    const/4 v8, 0x0

    iput v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    .line 391
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationStartTime:J

    .line 392
    const/4 v8, 0x0

    goto :goto_0

    .line 395
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v5

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 397
    .local v3, "animationOffsetIn":I
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    mul-float/2addr v8, v5

    float-to-int v4, v8

    .line 401
    .local v4, "animationOffsetOut":I
    sub-int v8, p4, p3

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v6, v8

    .line 404
    .local v6, "animationSecondaryOffset":I
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 406
    .local v1, "animationHeightOffsetIn":I
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 409
    .local v2, "animationHeightOffsetOut":I
    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v5

    float-to-int v0, v8

    .line 412
    .local v0, "alpha":I
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    move v7, v3

    .line 414
    .local v7, "offset":I
    :goto_1
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 415
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p3

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 416
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p4

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 422
    :goto_2
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    move v7, v1

    .line 425
    :goto_3
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 426
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 428
    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_8

    move v8, v0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 429
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 430
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    :cond_2
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 438
    :cond_3
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p3

    sub-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 439
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p4

    sub-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 445
    :goto_5
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 446
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 448
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 449
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    move v7, v4

    .line 456
    :goto_6
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 457
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p4

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 458
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p3

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 464
    :goto_7
    iget v8, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    move v7, v2

    .line 466
    :goto_8
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 467
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 469
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/google/android/pano/widget/SeekButton;->mAnimationState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    rsub-int v0, v0, 0xff

    .end local v0    # "alpha":I
    :cond_4
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 470
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 471
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidateOnAnimation()V

    .line 474
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v7    # "offset":I
    .restart local v0    # "alpha":I
    :cond_5
    move v7, v4

    .line 412
    goto/16 :goto_1

    .line 418
    .restart local v7    # "offset":I
    :cond_6
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p4

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 419
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p3

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    :cond_7
    move v7, v2

    .line 422
    goto/16 :goto_3

    .line 428
    :cond_8
    rsub-int v8, v0, 0xff

    goto/16 :goto_4

    .line 442
    :cond_9
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p4

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 443
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p3

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    :cond_a
    move v7, v3

    .line 453
    goto :goto_6

    .line 460
    :cond_b
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    sub-int v9, p2, p3

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 461
    iget-object v8, p0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    add-int v9, p2, p4

    add-int/2addr v9, v7

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_c
    move v7, v1

    .line 464
    goto :goto_8
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->hasFocus()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected initDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 573
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/R$dimen;->playback_rate_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 574
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/R$color;->text_primary_color_half_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 575
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/pano/R$dimen;->playback_rate_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    .line 576
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 579
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 581
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_fwd:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 582
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_scrubber_line:I

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 583
    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 584
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 585
    iput v2, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    .line 586
    const v0, 0x3f3ae148    # 0.73f

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    .line 587
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 588
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 592
    .local v4, "res":Landroid/content/res/Resources;
    sget-object v6, Lcom/google/android/pano/R$styleable;->SeekButton:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 594
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 595
    .local v5, "updateDrawables":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 596
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 597
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 598
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 596
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :pswitch_0
    const/16 v6, 0x66

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    goto :goto_1

    .line 603
    :pswitch_1
    const/16 v6, 0xff

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    goto :goto_1

    .line 606
    :pswitch_2
    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    goto :goto_1

    .line 609
    :pswitch_3
    sget v6, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_fwd:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 611
    const/4 v5, 0x1

    .line 612
    goto :goto_1

    .line 614
    :pswitch_4
    sget v6, Lcom/google/android/pano/R$drawable;->ic_playback_scrubber_line:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 616
    const/4 v5, 0x1

    .line 617
    goto :goto_1

    .line 619
    :pswitch_5
    iget v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 620
    iget-object v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 623
    :pswitch_6
    iget v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 624
    iget-object v6, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 627
    :pswitch_7
    iget v6, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    .line 628
    const/4 v5, 0x1

    .line 629
    iget v6, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    .line 630
    iget v6, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    goto :goto_1

    .line 635
    .end local v2    # "attr":I
    :cond_0
    if-eqz v5, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 638
    :cond_1
    return-void

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 297
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getWidth()I

    move-result v20

    .line 299
    .local v20, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getHeight()I

    move-result v9

    .line 300
    .local v9, "h":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->isActive()Z

    move-result v5

    .line 301
    .local v5, "active":Z
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 303
    .local v11, "iconWidth":I
    :goto_0
    div-int/lit8 v16, v11, 0x2

    .line 304
    .local v16, "stretchXStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v21

    add-int v16, v16, v21

    .line 310
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v21

    sub-int v21, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    int-to-float v0, v11

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .line 312
    .local v17, "stretchableWidth":I
    const/4 v7, 0x1

    .line 313
    .local v7, "directionMult":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v7, -0x1

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_1

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43160000    # 150.0f

    div-float v13, v21, v22

    .line 320
    .local v13, "snapFraction":F
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v13, v21

    if-ltz v21, :cond_7

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 329
    .end local v13    # "snapFraction":F
    :cond_1
    :goto_2
    mul-int v21, v7, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v15, v16, v21

    .line 330
    .local v15, "stretchX":I
    int-to-float v0, v11

    move/from16 v21, v0

    const v22, 0x3dcccccd    # 0.1f

    mul-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v12, v0

    .line 334
    .local v12, "overlap":I
    div-int/lit8 v21, v11, 0x2

    sub-int v10, v21, v12

    .line 337
    .local v10, "iconOffset":I
    if-eqz v5, :cond_8

    .line 338
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 343
    .local v6, "alpha":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 345
    .local v14, "stretchHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    div-int/lit8 v22, v9, 0x2

    div-int/lit8 v23, v14, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    div-int/lit8 v22, v9, 0x2

    div-int/lit8 v23, v14, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int v22, v15, v10

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v22

    sub-int v22, v20, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 355
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    .end local v14    # "stretchHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v12, v10}, Lcom/google/android/pano/widget/SeekButton;->drawSeekIconAnimating(Landroid/graphics/Canvas;III)Z

    move-result v21

    if-nez v21, :cond_3

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v12, v10}, Lcom/google/android/pano/widget/SeekButton;->drawSeekIcon(Landroid/graphics/Canvas;III)V

    .line 367
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 368
    move/from16 v18, v15

    .line 369
    .local v18, "textX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    move/from16 v21, v0

    add-int v21, v21, v10

    sub-int v18, v18, v21

    .line 374
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 376
    .local v8, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v22, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    div-int/lit8 v22, v9, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 377
    .local v19, "textY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mDisplayRate:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    .end local v8    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v18    # "textX":I
    .end local v19    # "textY":I
    :cond_4
    return-void

    .line 301
    .end local v6    # "alpha":I
    .end local v7    # "directionMult":I
    .end local v10    # "iconOffset":I
    .end local v11    # "iconWidth":I
    .end local v12    # "overlap":I
    .end local v15    # "stretchX":I
    .end local v16    # "stretchXStart":I
    .end local v17    # "stretchableWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    goto/16 :goto_0

    .line 307
    .restart local v11    # "iconWidth":I
    .restart local v16    # "stretchXStart":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v21

    add-int v16, v16, v21

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getWidth()I

    move-result v21

    sub-int v16, v21, v16

    goto/16 :goto_1

    .line 324
    .restart local v7    # "directionMult":I
    .restart local v13    # "snapFraction":F
    .restart local v17    # "stretchableWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v13

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 340
    .end local v13    # "snapFraction":F
    .restart local v10    # "iconOffset":I
    .restart local v12    # "overlap":I
    .restart local v15    # "stretchX":I
    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .restart local v6    # "alpha":I
    goto/16 :goto_3

    .line 351
    .restart local v14    # "stretchHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/SeekButton;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    sub-int v22, v15, v10

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 372
    .end local v14    # "stretchHeight":I
    .restart local v18    # "textX":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/SeekButton;->mTextPadding:I

    move/from16 v21, v0

    add-int v21, v21, v10

    add-int v18, v18, v21

    goto/16 :goto_5
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 513
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 514
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 516
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    const-string v11, "125.5x"

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    .line 517
    iget-object v10, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    iget-object v11, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float v5, v10, v11

    .line 519
    .local v5, "maxTextHeight":F
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    mul-int/lit8 v10, v10, 0x4

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mMaxTextWidth:F

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 521
    .local v1, "desiredWidth":I
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v0, v10

    .line 524
    .local v0, "desiredHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 525
    .local v8, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 526
    .local v9, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 527
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 532
    .local v4, "heightSize":I
    sparse-switch v8, :sswitch_data_0

    .line 543
    move v7, v1

    .line 547
    .local v7, "width":I
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 558
    move v2, v0

    .line 562
    .local v2, "height":I
    :goto_1
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    if-eq v10, v2, :cond_0

    .line 563
    int-to-float v10, v2

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 564
    .local v6, "scale":F
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    .line 565
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    .line 567
    .end local v6    # "scale":F
    :cond_0
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconHeight:I

    .line 568
    iget v10, p0, Lcom/google/android/pano/widget/SeekButton;->mIconWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/google/android/pano/widget/SeekButton;->mInactiveIconWidth:I

    .line 569
    invoke-virtual {p0, v7, v2}, Lcom/google/android/pano/widget/SeekButton;->setMeasuredDimension(II)V

    .line 570
    return-void

    .line 534
    .end local v2    # "height":I
    .end local v7    # "width":I
    :sswitch_0
    move v7, v9

    .line 535
    .restart local v7    # "width":I
    goto :goto_0

    .line 537
    .end local v7    # "width":I
    :sswitch_1
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 538
    .restart local v7    # "width":I
    goto :goto_0

    .line 540
    .end local v7    # "width":I
    :sswitch_2
    move v7, v1

    .line 541
    .restart local v7    # "width":I
    goto :goto_0

    .line 549
    :sswitch_3
    move v2, v4

    .line 550
    .restart local v2    # "height":I
    goto :goto_1

    .line 552
    .end local v2    # "height":I
    :sswitch_4
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 553
    .restart local v2    # "height":I
    goto :goto_1

    .line 555
    .end local v2    # "height":I
    :sswitch_5
    move v2, v0

    .line 556
    .restart local v2    # "height":I
    goto :goto_1

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 547
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_5
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setButtonActiveAlpha(I)V
    .locals 1
    .param p1, "activeAlpha"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    if-eq v0, p1, :cond_0

    .line 205
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekActiveAlpha:I

    .line 206
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    .line 208
    :cond_0
    return-void
.end method

.method public setButtonAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    if-eq v0, p1, :cond_0

    .line 193
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekAlpha:I

    .line 194
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    .line 196
    :cond_0
    return-void
.end method

.method public setResource(II)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "resourceId"    # I

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    if-eq v4, p2, :cond_0

    .line 147
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    if-eq v4, p2, :cond_0

    .line 154
    iput p2, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->updateDrawables()V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 161
    .local v2, "color":I
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    if-eq v4, v2, :cond_0

    .line 162
    iput v2, p0, Lcom/google/android/pano/widget/SeekButton;->mTextColor:I

    .line 163
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 168
    .end local v2    # "color":I
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 169
    .local v1, "alpha":I
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    goto :goto_0

    .line 172
    .end local v1    # "alpha":I
    :pswitch_4
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 173
    .local v0, "activeAlpha":I
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    goto :goto_0

    .line 176
    .end local v0    # "activeAlpha":I
    :pswitch_5
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 177
    .local v3, "textSize":F
    iget v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    .line 178
    iput v3, p0, Lcom/google/android/pano/widget/SeekButton;->mTextSize:F

    .line 179
    iget-object v4, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidate()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 641
    iget-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 643
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 644
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    iget-object v2, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/pano/widget/SeekButton;->mDirection:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    .line 647
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 649
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mSeekRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mSeek:Landroid/graphics/drawable/Drawable;

    .line 650
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mClippedSeek:Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mStretchRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SeekButton;->mStretch:Landroid/graphics/drawable/Drawable;

    .line 652
    return-void

    .line 641
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 644
    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public updatePosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    const v3, 0x3d4ccccd    # 0.05f

    .line 231
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 232
    .local v0, "distToPosition":F
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    iget v2, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/pano/widget/SeekButton;->mStartSnapTime:J

    .line 235
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    .line 236
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 237
    iget v1, p0, Lcom/google/android/pano/widget/SeekButton;->mTargetPosition:F

    iput v1, p0, Lcom/google/android/pano/widget/SeekButton;->mPosition:F

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/SeekButton;->postInvalidateOnAnimation()V

    .line 240
    return-void
.end method
