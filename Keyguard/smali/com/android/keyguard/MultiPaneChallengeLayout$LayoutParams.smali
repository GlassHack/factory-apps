.class public Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public centerWithinArea:F

.field public childType:I

.field public gravity:I

.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 502
    invoke-direct {p0, v0, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(II)V

    .line 503
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 555
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 487
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 496
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 498
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 499
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 556
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x51

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 506
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 485
    iput v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 487
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 496
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 498
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 499
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 508
    sget-object v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 511
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 513
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 515
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 517
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 519
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 523
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_0

    .line 524
    iget v1, p3, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v1, :cond_1

    .line 525
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    return-void

    .line 527
    :pswitch_0
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 530
    :pswitch_1
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 533
    :pswitch_2
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 537
    :cond_1
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 539
    :pswitch_3
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 542
    :pswitch_4
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 545
    :pswitch_5
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 559
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 487
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 496
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 498
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 499
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 563
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 487
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 496
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 498
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 499
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 564
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 569
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 570
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 571
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 572
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 573
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 574
    return-void
.end method
