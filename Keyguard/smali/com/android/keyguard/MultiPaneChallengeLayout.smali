.class public Lcom/android/keyguard/MultiPaneChallengeLayout;
.super Landroid/view/ViewGroup;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field final mOrientation:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUserSwitcherView:Landroid/view/View;

.field private final mZeroPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    .line 55
    new-instance v2, Lcom/android/keyguard/MultiPaneChallengeLayout$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$1;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 73
    sget-object v2, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 82
    const/16 v2, 0x300

    invoke-virtual {p0, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setSystemUiVisibility(I)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method private getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I
    .locals 4
    .param p1, "lp"    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .param p2, "height"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 190
    move v1, p2

    .line 191
    .local v1, "virtualHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 198
    :cond_0
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 201
    sub-int p2, v1, p3

    .line 205
    .end local p2    # "height":I
    :cond_1
    :goto_0
    return p2

    .line 202
    .restart local p2    # "height":I
    :cond_2
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 205
    sub-int v2, v1, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method private layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "child"    # Landroid/view/View;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "adjustPadding"    # Z

    .prologue
    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 372
    .local v16, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v22

    sub-int v12, v21, v22

    .line 373
    .local v12, "heightUsed":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result p2

    .line 375
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getLayoutDirection()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 377
    .local v11, "gravity":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    const/4 v9, 0x1

    .line 378
    .local v9, "fixedLayoutSize":Z
    :goto_0
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/4 v8, 0x1

    .line 379
    .local v8, "fixedLayoutHorizontal":Z
    :goto_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 383
    .local v10, "fixedLayoutVertical":Z
    :goto_2
    if-eqz v8, :cond_5

    .line 384
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 385
    .local v18, "paddedWidth":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    .line 386
    .local v4, "adjustedWidth":I
    move/from16 v3, p2

    .line 396
    .end local v18    # "paddedWidth":I
    .local v3, "adjustedHeight":I
    :goto_3
    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v14

    .line 397
    .local v14, "isVertical":Z
    invoke-static {v11}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v13

    .line 398
    .local v13, "isHorizontal":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 399
    .local v7, "childWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 401
    .local v6, "childHeight":I
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 402
    .local v15, "left":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 403
    .local v20, "top":I
    add-int v19, v15, v7

    .line 404
    .local v19, "right":I
    add-int v5, v20, v6

    .line 405
    .local v5, "bottom":I
    and-int/lit8 v21, v11, 0x70

    sparse-switch v21, :sswitch_data_0

    .line 430
    :cond_0
    :goto_4
    and-int/lit8 v21, v11, 0x7

    packed-switch v21, :pswitch_data_0

    .line 456
    :cond_1
    :goto_5
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v5, v21

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 459
    return-void

    .line 377
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v5    # "bottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childWidth":I
    .end local v8    # "fixedLayoutHorizontal":Z
    .end local v9    # "fixedLayoutSize":Z
    .end local v10    # "fixedLayoutVertical":Z
    .end local v13    # "isHorizontal":Z
    .end local v14    # "isVertical":Z
    .end local v15    # "left":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 378
    .restart local v9    # "fixedLayoutSize":Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 379
    .restart local v8    # "fixedLayoutHorizontal":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 387
    .restart local v10    # "fixedLayoutVertical":Z
    :cond_5
    if-eqz v10, :cond_6

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v21

    sub-int v21, p2, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v22

    sub-int v17, v21, v22

    .line 389
    .local v17, "paddedHeight":I
    move/from16 v4, p1

    .line 390
    .restart local v4    # "adjustedWidth":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v3, v0

    .line 391
    .restart local v3    # "adjustedHeight":I
    goto :goto_3

    .line 392
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v17    # "paddedHeight":I
    :cond_6
    move/from16 v4, p1

    .line 393
    .restart local v4    # "adjustedWidth":I
    move/from16 v3, p2

    .restart local v3    # "adjustedHeight":I
    goto :goto_3

    .line 407
    .restart local v5    # "bottom":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "childWidth":I
    .restart local v13    # "isHorizontal":Z
    .restart local v14    # "isVertical":Z
    .restart local v15    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    :sswitch_0
    if-eqz v10, :cond_7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 409
    :goto_6
    add-int v5, v20, v6

    .line 410
    if-eqz p5, :cond_0

    if-eqz v14, :cond_0

    .line 411
    move-object/from16 v0, p4

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 412
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 407
    :cond_7
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto :goto_6

    .line 416
    :sswitch_1
    if-eqz v10, :cond_8

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, p2

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    sub-int v5, v21, v22

    .line 419
    :goto_7
    sub-int v20, v5, v6

    .line 420
    if-eqz p5, :cond_0

    if-eqz v14, :cond_0

    .line 421
    sub-int v21, p2, v20

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 422
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 416
    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v21, p2

    goto :goto_7

    .line 426
    :sswitch_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, p2, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 427
    add-int v5, v20, v6

    goto/16 :goto_4

    .line 432
    :pswitch_1
    if-eqz v8, :cond_9

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    add-int v15, v21, v22

    .line 434
    :goto_8
    add-int v19, v15, v7

    .line 435
    if-eqz p5, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    .line 436
    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 437
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    .line 432
    :cond_9
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    goto :goto_8

    .line 441
    :pswitch_2
    if-eqz v8, :cond_a

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 444
    :goto_9
    sub-int v15, v19, v7

    .line 445
    if-eqz p5, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    .line 446
    sub-int v21, p1, v15

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 447
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    .line 441
    :cond_a
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v19, p1, v21

    goto :goto_9

    .line 451
    :pswitch_3
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 452
    .restart local v18    # "paddedWidth":I
    sub-int v21, v18, v7

    div-int/lit8 v15, v21, 0x2

    .line 453
    add-int v19, v15, v7

    goto/16 :goto_5

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 480
    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 475
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 463
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 468
    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x15e

    return v0
.end method

.method public hideBouncer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 143
    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$3;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 151
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 333
    iget-object v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 334
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 335
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 336
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingRight()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 337
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 338
    sub-int v1, p4, p2

    .line 339
    .local v1, "width":I
    sub-int v12, p5, p3

    .line 340
    .local v12, "height":I
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v12, v0

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v3

    .line 344
    .local v2, "insetHeight":I
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v11

    .line 349
    .local v11, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_5

    .line 350
    invoke-virtual {p0, v13}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 351
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 354
    .local v14, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eq v8, v0, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 349
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-ne v8, v0, :cond_3

    .line 357
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 359
    :cond_3
    iget v0, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 360
    iget-object v9, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v1

    move v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 364
    :cond_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 366
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 210
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v5, :cond_1

    .line 212
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "MultiPaneChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 217
    .local v16, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 218
    .local v9, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setMeasuredDimension(II)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v2, v5

    .line 221
    .local v12, "insetHeight":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 223
    .local v13, "insetHeightSpec":I
    const/16 v17, 0x0

    .line 224
    .local v17, "widthUsed":I
    const/4 v10, 0x0

    .line 228
    .local v10, "heightUsed":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v8

    .line 231
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_b

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 233
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 235
    .local v14, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_2

    .line 237
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type challenge"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_2
    instance-of v2, v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_3

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_3
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    .end local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 231
    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 245
    .restart local v3    # "child":Landroid/view/View;
    :cond_5
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_a

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type userSwitcher"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_6
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_4

    .line 254
    move/from16 v4, p1

    .line 255
    .local v4, "adjustedWidthSpec":I
    move v6, v13

    .line 256
    .local v6, "adjustedHeightSpec":I
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_7

    .line 257
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 260
    :cond_7
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_8

    .line 261
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 265
    :cond_8
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 269
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    int-to-float v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v10, v2

    goto :goto_1

    .line 271
    :cond_9
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    goto :goto_1

    .line 274
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_a
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    .line 276
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 281
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_b
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_12

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 283
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 285
    .restart local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_d

    .line 281
    :cond_c
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 292
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v15

    .line 296
    .local v15, "virtualHeight":I
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_11

    .line 297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v2, :cond_10

    .line 298
    sub-int v2, v16, v17

    int-to-float v2, v2

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 301
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 316
    .restart local v6    # "adjustedHeightSpec":I
    :goto_4
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_e

    .line 317
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 321
    :cond_e
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_f

    .line 322
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 327
    :cond_f
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_3

    .line 304
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_10
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 306
    .restart local v4    # "adjustedWidthSpec":I
    int-to-float v2, v15

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_4

    .line 311
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_11
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 313
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_4

    .line 329
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .end local v15    # "virtualHeight":I
    :cond_12
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    .line 173
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 164
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 2
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_1
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public showBouncer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 110
    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iput-boolean v6, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 119
    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$2;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 127
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method
