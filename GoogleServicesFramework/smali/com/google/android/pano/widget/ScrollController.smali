.class public Lcom/google/android/pano/widget/ScrollController;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollController$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mContext:Landroid/content/Context;

.field private mDragMode:I

.field private mFlingMode:I

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mHorizontalForward:Z

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mMainHorizontal:Z

.field private mOrientation:I

.field private mScrollMode:I

.field private mScrollScroller:Landroid/widget/Scroller;

.field private mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mState:I

.field private mVerticalForward:Z

.field public final vertical:Lcom/google/android/pano/widget/ScrollController$Axis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 603
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    .line 605
    new-instance v0, Lcom/google/android/pano/widget/Lerper;

    invoke-direct {v0}, Lcom/google/android/pano/widget/Lerper;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 607
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    const-string v2, "vertical"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 609
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    const-string v2, "horizontal"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 611
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 613
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 616
    iput v4, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    .line 619
    iput v4, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    .line 622
    iput v3, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    .line 626
    iput-boolean v3, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    .line 627
    iput-boolean v3, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    .line 646
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    .line 648
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 649
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 650
    return-void
.end method

.method private getMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 723
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 726
    const/4 p1, 0x1

    .line 731
    :cond_0
    :goto_0
    return p1

    .line 728
    :cond_1
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private updateDirection(FF)V
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 735
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    .line 736
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    .line 737
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    .line 741
    :cond_0
    :goto_1
    cmpl-float v0, p2, v4

    if-lez v0, :cond_4

    .line 742
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    .line 746
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 735
    goto :goto_0

    .line 738
    :cond_3
    cmpg-float v0, p1, v4

    if-gez v0, :cond_0

    .line 739
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_1

    .line 743
    :cond_4
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 744
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_2
.end method


# virtual methods
.method public final computeAndSetScrollPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 955
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    if-ne v1, v3, :cond_1

    .line 956
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 968
    .local v0, "scroller":Landroid/widget/Scroller;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 970
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 971
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 973
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_0
    :goto_1
    return-void

    .line 957
    :cond_1
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 958
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v0    # "scroller":Landroid/widget/Scroller;
    goto :goto_0

    .line 959
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_2
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 960
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 961
    :cond_3
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    .line 962
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    goto :goto_1
.end method

.method public final dragBy(FF)Z
    .locals 2
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 838
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    if-nez v1, :cond_0

    .line 839
    const/4 v1, 0x0

    .line 847
    :goto_0
    return v1

    .line 841
    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v0

    .line 842
    .local v0, "operationMode":I
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 843
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 844
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    .line 845
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    .line 846
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 847
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final fling(II)Z
    .locals 11
    .param p1, "velocity_x"    # I
    .param p2, "velocity_y"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/high16 v5, -0x80000000

    .line 749
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    if-nez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    .line 752
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v9

    .line 753
    .local v9, "operationMode":I
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, v9}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 754
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, v9}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 755
    iput v10, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 756
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v2

    float-to-int v2, v2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 764
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    move v0, v10

    .line 765
    goto :goto_0
.end method

.method public final getCurrVelocity()F
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 711
    :goto_0
    return v0

    .line 708
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 711
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFinalX()I
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 884
    :goto_0
    return v0

    .line 881
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 882
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    goto :goto_0
.end method

.method public final getFinalY()I
    .locals 2

    .prologue
    .line 888
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 893
    :goto_0
    return v0

    .line 890
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 891
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    goto :goto_0

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    goto :goto_0
.end method

.method public final getLastDirection()I
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    if-eqz v0, :cond_1

    .line 943
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    .line 945
    :goto_0
    return v0

    .line 943
    :cond_0
    const/16 v0, 0x11

    goto :goto_0

    .line 945
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    goto :goto_0

    :cond_2
    const/16 v0, 0x21

    goto :goto_0
.end method

.method public final getScrollDuration(IZ)I
    .locals 4
    .param p1, "distance"    # I
    .param p2, "isPage"    # Z

    .prologue
    .line 977
    int-to-float v2, p1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 978
    .local v1, "ms":I
    if-eqz p2, :cond_1

    const/16 v0, 0x352

    .line 979
    .local v0, "minValue":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 980
    move v1, v0

    .line 984
    :cond_0
    :goto_1
    return v1

    .line 978
    .end local v0    # "minValue":I
    :cond_1
    const/16 v0, 0x15e

    goto :goto_0

    .line 981
    .restart local v0    # "minValue":I
    :cond_2
    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    .line 982
    const/16 v1, 0x5dc

    goto :goto_1
.end method

.method public getScrollItemAlign()I
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    if-ne v3, v1, :cond_1

    .line 916
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 924
    .local v0, "scroller":Landroid/widget/Scroller;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    .line 928
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_0
    :goto_2
    return v2

    .line 917
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 918
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v0    # "scroller":Landroid/widget/Scroller;
    goto :goto_0

    .line 919
    .end local v0    # "scroller":Landroid/widget/Scroller;
    :cond_2
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move v2, v1

    .line 922
    goto :goto_2

    .restart local v0    # "scroller":Landroid/widget/Scroller;
    :cond_3
    move v1, v2

    .line 925
    goto :goto_1
.end method

.method public final isMainAxisMovingForward()Z
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_0
.end method

.method public final isSecondAxisMovingForward()Z
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_0
.end method

.method public final lerper()Lcom/google/android/pano/widget/Lerper;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    return-object v0
.end method

.method public final mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object v0
.end method

.method public final secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object v0
.end method

.method public final setDragMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 694
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    .line 695
    return-void
.end method

.method public final setFinalX(I)V
    .locals 2
    .param p1, "finalX"    # I

    .prologue
    .line 897
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 898
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 900
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_0
.end method

.method public final setFinalY(I)V
    .locals 2
    .param p1, "finalY"    # I

    .prologue
    .line 905
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_0
.end method

.method public final setFlingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 686
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    .line 687
    return-void
.end method

.method public final setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v0

    .line 654
    .local v0, "align":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v1

    .line 655
    .local v1, "selectedTakesMoreSpace":Z
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    .line 656
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 658
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 663
    :goto_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 664
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 665
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 666
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 667
    return-void

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 661
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    goto :goto_0
.end method

.method public final setScrollCenter(II)V
    .locals 3
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    const/4 v2, 0x0

    .line 865
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    int-to-float v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 866
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    int-to-float v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 868
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p1

    .line 869
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p2

    .line 870
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 871
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 872
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 873
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 874
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 875
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 876
    return-void
.end method

.method public setScrollItemAlign(I)V
    .locals 1
    .param p1, "align"    # I

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 671
    return-void
.end method

.method public final startScroll(IIZIZ)V
    .locals 17
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "easeFling"    # Z
    .param p4, "duration"    # I
    .param p5, "page"    # Z

    .prologue
    .line 769
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    if-nez v5, :cond_0

    .line 810
    :goto_0
    return-void

    .line 772
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v13

    .line 773
    .local v13, "operationMode":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v5, v13}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v5, v13}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 776
    if-eqz p3, :cond_3

    .line 777
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    .line 783
    .local v2, "scroller":Landroid/widget/Scroller;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    .line 784
    .local v3, "basex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v4

    .line 785
    .local v4, "basey":I
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 788
    add-int v5, v3, p1

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int p1, v5, v6

    .line 789
    add-int v5, v4, p2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int p2, v5, v6

    .line 790
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 791
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 793
    :cond_1
    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    .line 794
    if-eqz p3, :cond_6

    .line 795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getStartX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v8, v5

    .line 796
    .local v8, "curDx":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getStartY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v9, v5

    .line 797
    .local v9, "curDy":F
    mul-float v5, v8, v8

    mul-float v6, v9, v9

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v12, v5

    .line 798
    .local v12, "hyp":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v14

    .line 799
    .local v14, "velocity":F
    mul-float v5, v14, v8

    div-float v15, v5, v12

    .line 800
    .local v15, "velocityX":F
    mul-float v5, v14, v9

    div-float v16, v5, v12

    .line 801
    .local v16, "velocityY":F
    const/4 v5, 0x0

    cmpl-float v5, v15, v5

    if-nez v5, :cond_4

    const/4 v10, 0x0

    .line 802
    .local v10, "durationX":I
    :goto_2
    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-nez v5, :cond_5

    const/4 v11, 0x0

    .line 803
    .local v11, "durationY":I
    :goto_3
    if-nez p4, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result p4

    .end local v8    # "curDx":F
    .end local v9    # "curDy":F
    .end local v10    # "durationX":I
    .end local v11    # "durationY":I
    .end local v12    # "hyp":F
    .end local v14    # "velocity":F
    .end local v15    # "velocityX":F
    .end local v16    # "velocityY":F
    :cond_2
    :goto_4
    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    .line 809
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto/16 :goto_0

    .line 780
    .end local v2    # "scroller":Landroid/widget/Scroller;
    .end local v3    # "basex":I
    .end local v4    # "basey":I
    :cond_3
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .restart local v2    # "scroller":Landroid/widget/Scroller;
    goto/16 :goto_1

    .line 801
    .restart local v3    # "basex":I
    .restart local v4    # "basey":I
    .restart local v8    # "curDx":F
    .restart local v9    # "curDy":F
    .restart local v12    # "hyp":F
    .restart local v14    # "velocity":F
    .restart local v15    # "velocityX":F
    .restart local v16    # "velocityY":F
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    div-float/2addr v5, v15

    float-to-int v10, v5

    goto :goto_2

    .line 802
    .restart local v10    # "durationX":I
    :cond_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    div-float v5, v5, v16

    float-to-int v11, v5

    goto :goto_3

    .line 805
    .end local v8    # "curDx":F
    .end local v9    # "curDy":F
    .end local v10    # "durationX":I
    .end local v12    # "hyp":F
    .end local v14    # "velocity":F
    .end local v15    # "velocityX":F
    .end local v16    # "velocityY":F
    :cond_6
    if-nez p4, :cond_2

    .line 806
    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Lcom/google/android/pano/widget/ScrollController;->getScrollDuration(IZ)I

    move-result p4

    goto :goto_4
.end method

.method public final startScrollByMain(IIZIZ)V
    .locals 6
    .param p1, "deltaMain"    # I
    .param p2, "deltaSecond"    # I
    .param p3, "easeFling"    # Z
    .param p4, "duration"    # I
    .param p5, "page"    # Z

    .prologue
    .line 827
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    .line 828
    move v1, p1

    .line 829
    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    :goto_0
    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 834
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/pano/widget/ScrollController;->startScroll(IIZIZ)V

    .line 835
    return-void

    .line 831
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_0
    move v1, p2

    .line 832
    .restart local v1    # "dx":I
    move v2, p1

    .restart local v2    # "dy":I
    goto :goto_0
.end method

.method public final stopDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 852
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F

    .line 853
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F

    .line 854
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "vertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
