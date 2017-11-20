.class public Lcom/google/android/pano/widget/ScrollController$Axis;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mAlignExtraOffset:I

.field private mDragOffset:F

.field private mExpandedSize:I

.field private mExtraSpaceHigh:I

.field private mExtraSpaceLow:I

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMaxEdge:I

.field private mMinEdge:I

.field private mName:Ljava/lang/String;

.field private mOperationMode:I

.field private mPaddingHigh:I

.field private mPaddingLow:I

.field private mScrollCenter:F

.field private mScrollCenterOffset:I

.field private mScrollCenterOffsetPercent:F

.field private mScrollCenterStrategy:I

.field private mScrollItemAlign:I

.field private mScrollMax:I

.field private mScrollMin:I

.field private mSelectedTakesMoreSpace:Z

.field private mSize:I

.field private mTouchScrollMax:I

.field private mTouchScrollMin:I


# direct methods
.method public constructor <init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V
    .locals 2
    .param p1, "lerper"    # Lcom/google/android/pano/widget/Lerper;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    .line 152
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    .line 154
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    .line 196
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    .line 255
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    .line 256
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 257
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->reset()V

    .line 258
    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mName:Ljava/lang/String;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;
    .param p1, "x1"    # F

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->dragBy(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;
    .param p1, "x1"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(FZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollController$Axis;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateFromDrag()V

    return-void
.end method

.method private dragBy(F)V
    .locals 1
    .param p1, "distanceX"    # F

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 402
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 405
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 406
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 407
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 408
    iput v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 409
    iput v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 410
    iput v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 411
    iput v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 414
    return-void
.end method

.method private scrollMax()I
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    goto :goto_0
.end method

.method private scrollMin()I
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    goto :goto_0
.end method

.method private updateFromDrag()V
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(FZ)Z

    .line 398
    return-void
.end method

.method private updateScrollCenter(FZ)Z
    .locals 5
    .param p1, "scrollTarget"    # F
    .param p2, "lerper"    # Z

    .prologue
    .line 374
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 375
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMin()I

    move-result v2

    .line 376
    .local v2, "scrollMin":I
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMax()I

    move-result v1

    .line 377
    .local v1, "scrollMax":I
    const/4 v0, 0x0

    .line 378
    .local v0, "overScroll":Z
    if-lt v2, v1, :cond_1

    .line 379
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 380
    const/4 v0, 0x1

    .line 388
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 389
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    iget v4, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    invoke-virtual {v3, v4, p1}, Lcom/google/android/pano/widget/Lerper;->getValue(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 393
    :goto_1
    return v0

    .line 381
    :cond_1
    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 382
    int-to-float p1, v2

    .line 383
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    int-to-float v3, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 385
    int-to-float p1, v1

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :cond_3
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    goto :goto_1
.end method


# virtual methods
.method public final getPaddingHigh()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    return v0
.end method

.method public final getPaddingLow()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    return v0
.end method

.method public final getScrollCenter()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    float-to-int v0, v0

    return v0
.end method

.method public final getScrollItemAlign()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    return v0
.end method

.method public final getSelectedTakesMoreSpace()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    return v0
.end method

.method public final getSizeForExpandableItem()I
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSystemScrollPos()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos(I)I

    move-result v0

    return v0
.end method

.method public final getSystemScrollPos(I)I
    .locals 12
    .param p1, "scrollCenter"    # I

    .prologue
    .line 466
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    add-int/2addr p1, v9

    .line 469
    iget-boolean v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    if-eqz v9, :cond_0

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 470
    .local v2, "compensate":I
    :goto_0
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 471
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int v9, p1, v9

    add-int/2addr v9, v2

    .line 569
    :goto_1
    return v9

    .line 469
    .end local v2    # "compensate":I
    :cond_0
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v2, v9

    goto :goto_0

    .line 472
    .restart local v2    # "compensate":I
    :cond_1
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 473
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int/2addr v9, v10

    sub-int v9, p1, v9

    add-int/2addr v9, v2

    goto :goto_1

    .line 474
    :cond_2
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 475
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int v9, p1, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v2

    goto :goto_1

    .line 478
    :cond_3
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int v1, v9, v10

    .line 483
    .local v1, "clientSize":I
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    if-ltz v9, :cond_4

    .line 484
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int v6, v9, v10

    .line 490
    .local v6, "middlePosition":I
    :goto_2
    sub-int v0, v1, v6

    .line 493
    .local v0, "afterMiddlePosition":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMinUnknown()Z

    move-result v5

    .line 494
    .local v5, "isMinUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMaxUnknown()Z

    move-result v4

    .line 495
    .local v4, "isMaxUnknown":Z
    iget-boolean v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    if-eqz v9, :cond_9

    .line 497
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 506
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 509
    .local v3, "extraSpaceLow":I
    :goto_3
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 510
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v1, :cond_6

    .line 513
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto :goto_1

    .line 485
    .end local v0    # "afterMiddlePosition":I
    .end local v3    # "extraSpaceLow":I
    .end local v4    # "isMaxUnknown":Z
    .end local v5    # "isMinUnknown":Z
    .end local v6    # "middlePosition":I
    :cond_4
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 486
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int v6, v9, v10

    .restart local v6    # "middlePosition":I
    goto :goto_2

    .line 488
    .end local v6    # "middlePosition":I
    :cond_5
    div-int/lit8 v6, v1, 0x2

    .restart local v6    # "middlePosition":I
    goto :goto_2

    .line 499
    .restart local v0    # "afterMiddlePosition":I
    .restart local v4    # "isMaxUnknown":Z
    .restart local v5    # "isMinUnknown":Z
    :pswitch_0
    const/4 v3, 0x0

    .line 500
    .restart local v3    # "extraSpaceLow":I
    goto :goto_3

    .line 502
    .end local v3    # "extraSpaceLow":I
    :pswitch_1
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    add-int v3, v9, v10

    .line 503
    .restart local v3    # "extraSpaceLow":I
    goto :goto_3

    .line 516
    :cond_6
    if-nez v5, :cond_7

    .line 517
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int v9, p1, v9

    add-int/2addr v9, v3

    if-gt v9, v6, :cond_7

    .line 520
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 523
    :cond_7
    if-nez v4, :cond_8

    .line 524
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v8, v9, v3

    .line 525
    .local v8, "spaceAfterScrollCenter":I
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int/2addr v9, p1

    add-int/2addr v9, v8

    if-gt v9, v0, :cond_8

    .line 528
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v10, v1, v10

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 532
    .end local v8    # "spaceAfterScrollCenter":I
    :cond_8
    sub-int v9, p1, v6

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    goto/16 :goto_1

    .line 535
    .end local v3    # "extraSpaceLow":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 544
    const/4 v7, 0x0

    .line 547
    .local v7, "shift":I
    :goto_4
    if-nez v5, :cond_a

    if-nez v4, :cond_a

    .line 548
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v1, :cond_a

    .line 551
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 537
    .end local v7    # "shift":I
    :pswitch_2
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v7, v9

    .line 538
    .restart local v7    # "shift":I
    goto :goto_4

    .line 540
    .end local v7    # "shift":I
    :pswitch_3
    iget v7, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    .line 541
    .restart local v7    # "shift":I
    goto :goto_4

    .line 554
    :cond_a
    if-nez v5, :cond_b

    .line 555
    add-int v9, p1, v7

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v9, v10

    if-gt v9, v6, :cond_b

    .line 558
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 561
    :cond_b
    if-nez v4, :cond_c

    .line 562
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int/2addr v9, p1

    sub-int/2addr v9, v7

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v9, v10

    if-gt v9, v0, :cond_c

    .line 565
    iget v9, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v10, v1, v10

    sub-int/2addr v9, v10

    goto/16 :goto_1

    .line 569
    :cond_c
    sub-int v9, p1, v6

    iget v10, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v7

    goto/16 :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateScrollMax()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 355
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 356
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 357
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 358
    return-void
.end method

.method public invalidateScrollMin()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 334
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 335
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 336
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 337
    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .prologue
    .line 421
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAlignExtraOffset(I)V
    .locals 0
    .param p1, "extraOffset"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    .line 446
    return-void
.end method

.method public final setExpandedSize(I)V
    .locals 0
    .param p1, "expandedSize"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    .line 434
    return-void
.end method

.method public final setExtraSpaceHigh(I)V
    .locals 0
    .param p1, "extraSpaceHigh"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    .line 442
    return-void
.end method

.method public final setExtraSpaceLow(I)V
    .locals 0
    .param p1, "extraSpaceLow"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    .line 438
    return-void
.end method

.method public final setOperationMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    .line 308
    return-void
.end method

.method public final setPadding(II)V
    .locals 0
    .param p1, "paddingLow"    # I
    .param p2, "paddingHigh"    # I

    .prologue
    .line 449
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    .line 450
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    .line 451
    return-void
.end method

.method public final setScrollCenterOffset(I)V
    .locals 0
    .param p1, "scrollCenterOffset"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    .line 275
    return-void
.end method

.method public final setScrollCenterOffsetPercent(I)V
    .locals 2
    .param p1, "scrollCenterOffsetPercent"    # I

    .prologue
    .line 278
    if-gez p1, :cond_1

    .line 279
    const/4 p1, 0x0

    .line 283
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    .line 284
    return-void

    .line 280
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 281
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public final setScrollCenterStrategy(I)V
    .locals 0
    .param p1, "scrollCenterStrategy"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    .line 267
    return-void
.end method

.method public final setScrollItemAlign(I)V
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    .line 296
    return-void
.end method

.method public final setSelectedTakesMoreSpace(Z)V
    .locals 0
    .param p1, "selectedTakesMoreSpace"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    .line 288
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    .line 430
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateScrollMax(II)V
    .locals 3
    .param p1, "scrollMax"    # I
    .param p2, "maxEdge"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 342
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 343
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 345
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 346
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 348
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    goto :goto_0
.end method

.method public final updateScrollMin(II)V
    .locals 3
    .param p1, "scrollMin"    # I
    .param p2, "minEdge"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 321
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 322
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 324
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 325
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 327
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    goto :goto_0
.end method
