.class public abstract Lcom/android/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/keyguard/PagedView$SavedState;,
        Lcom/android/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnPageBeginWarpCalled:Z

.field private mOnPageEndWarpCalled:Z

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 287
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 113
    iput v5, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 127
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 143
    iput v4, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 144
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 153
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountX:I

    .line 154
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountY:I

    .line 155
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    .line 157
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 166
    iput v8, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    .line 170
    iput v5, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 177
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 180
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 184
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 188
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 190
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 193
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 213
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 214
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 215
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 216
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 217
    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 218
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 219
    iput v8, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 223
    iput v5, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 225
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 230
    iput v7, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 235
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 236
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 237
    iput v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 240
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 241
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    .line 242
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 243
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 246
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 247
    const v2, 0x3d0f5c29    # 0.035f

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 249
    const/high16 v2, 0x42820000    # 65.0f

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 250
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 252
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 253
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 254
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 260
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 263
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 264
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 2047
    new-instance v2, Lcom/android/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$2;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2711
    new-instance v2, Lcom/android/keyguard/PagedView$13;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$13;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2721
    new-instance v2, Lcom/android/keyguard/PagedView$14;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$14;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 288
    sget-object v2, Lcom/android/keyguard/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 291
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 293
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 298
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 299
    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 302
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->init()V

    .line 304
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/PagedView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PagedView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/PagedView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1739
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1742
    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    .line 2766
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2767
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 2768
    iget v2, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2770
    .local v1, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2771
    .local v0, "interp":Landroid/view/animation/AccelerateInterpolator;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2778
    .end local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .end local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void

    .line 2771
    .restart local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .restart local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v2, :cond_0

    .line 2751
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    .line 2752
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 2753
    iget v2, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2755
    .local v1, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2756
    .local v0, "interp":Landroid/view/animation/DecelerateInterpolator;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    .line 2757
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    iget v3, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2762
    .end local v0    # "interp":Landroid/view/animation/DecelerateInterpolator;
    .end local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "abortAnimation"    # Z

    .prologue
    .line 2731
    if-eqz p2, :cond_0

    .line 2734
    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2735
    .local v0, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2737
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    .line 2738
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 2742
    .end local v0    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :goto_0
    return-void

    .line 2740
    :cond_0
    const-string v1, "canceled"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2449
    new-instance v0, Lcom/android/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/PagedView$9;-><init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private dispatchOnPageBeginWarp()V
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginWarp()V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 511
    return-void
.end method

.method private dispatchOnPageEndWarp()V
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndWarp()V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 519
    return-void
.end method

.method private getPageSnapDuration()I
    .locals 1

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2390
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2391
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2393
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2395
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2397
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2398
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2400
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2404
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2598
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2599
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2600
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2601
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2602
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2604
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2605
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2606
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2608
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1097
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1099
    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1088
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 2614
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2616
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2617
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2620
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2622
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2623
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v13

    const-string v9, "scaleY"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2626
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2629
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2630
    new-array v8, v12, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v12, [F

    aput v11, v10, v13

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2632
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f05003a

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2637
    invoke-direct {p0, v3}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2639
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2640
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2641
    iget v8, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2642
    new-instance v8, Lcom/android/keyguard/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/android/keyguard/PagedView$12;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2647
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2649
    iput-boolean v12, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2650
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2248
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2249
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2254
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1754
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1755
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1759
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1760
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1761
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1762
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1763
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1764
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1765
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1768
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1328
    sub-float/2addr p1, v1

    .line 1329
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1749
    :cond_0
    return-void
.end method

.method private resetPageWarp()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 538
    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 539
    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 540
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1699
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1700
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->endReordering()V

    .line 1701
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1702
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1703
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1704
    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    .line 1238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    .line 1239
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    .line 1240
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1241
    .local v1, "p":[F
    aget v3, v1, v6

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1242
    aget v3, v1, v7

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1243
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1244
    iput v5, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1245
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1248
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    .line 1249
    .local v0, "leftEdgeBoundary":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    .line 1250
    .local v2, "rightEdgeBoundary":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1251
    :cond_0
    iput-boolean v7, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1253
    :cond_1
    return-void
.end method

.method private setTouchState(I)V
    .locals 1
    .param p1, "touchState"    # I

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_0

    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchStateChanged(I)V

    .line 1221
    iput p1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 1223
    :cond_0
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1286
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1287
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1289
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1290
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1291
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1292
    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1293
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1294
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1295
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1296
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_0
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2131
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2135
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2136
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2138
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2139
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2167
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2146
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v6

    .line 2147
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2148
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2149
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2150
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2151
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2154
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2155
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2156
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2157
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2158
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2159
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2160
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2166
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2163
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2164
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1337
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1339
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1342
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1343
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1346
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1347
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1348
    iput v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1349
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1354
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    goto :goto_0

    .line 1351
    :cond_2
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1352
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1029
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1031
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1032
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1033
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1040
    :cond_1
    :goto_0
    return-void

    .line 1035
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1036
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1037
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2171
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2172
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2173
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2174
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2177
    new-instance v1, Lcom/android/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$4;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2183
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2185
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method beginCameraEvent()V
    .locals 1

    .prologue
    .line 2704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    .line 2705
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 892
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2087
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScrollHelper()Z

    .line 635
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 606
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 629
    :goto_0
    return v0

    .line 615
    :cond_2
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    .line 616
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 617
    iput v4, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 618
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 622
    iget v1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    .line 623
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageEndMoving()V

    .line 626
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 629
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1358
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1360
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1362
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1363
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1366
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1367
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1370
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1371
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1372
    iput v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1373
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1378
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    goto :goto_0

    .line 1375
    :cond_2
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1376
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1261
    iget v11, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1262
    .local v0, "pointerIndex":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return v10

    .line 1265
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1266
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1267
    .local v6, "y":F
    float-to-int v11, v2

    float-to-int v12, v6

    invoke-direct {p0, v11, v12}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1271
    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v11, :cond_0

    .line 1273
    :cond_2
    iget v11, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v3, v11

    .line 1274
    .local v3, "xDiff":I
    iget v11, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 1276
    .local v7, "yDiff":I
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1277
    .local v1, "touchSlop":I
    iget v11, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v11, :cond_5

    move v5, v9

    .line 1278
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1279
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_7

    move v8, v9

    .line 1281
    .local v8, "yMoved":Z
    :goto_3
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_9

    :cond_3
    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_8

    if-eqz v5, :cond_9

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v10

    .line 1277
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v10

    .line 1278
    goto :goto_2

    .restart local v4    # "xMoved":Z
    :cond_7
    move v8, v10

    .line 1279
    goto :goto_3

    .line 1281
    .restart local v8    # "yMoved":Z
    :cond_8
    if-nez v4, :cond_4

    :cond_9
    move v9, v10

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 942
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 944
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 947
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 948
    invoke-virtual {p0, v7}, Lcom/android/keyguard/PagedView;->screenScrolled(I)V

    .line 949
    iput v7, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 954
    .local v5, "pageCount":I
    if-lez v5, :cond_7

    .line 955
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 956
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 957
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 958
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 959
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 961
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 962
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 966
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 967
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 968
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 966
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 969
    :cond_3
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 971
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 975
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 976
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 979
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 980
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 983
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1012
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1014
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1023
    :goto_0
    return v0

    .line 1017
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1018
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1023
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1859
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1860
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1861
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endCameraEvent()V
    .locals 1

    .prologue
    .line 2708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    .line 2709
    return-void
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2309
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2314
    new-instance v0, Lcom/android/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$6;-><init>(Lcom/android/keyguard/PagedView;)V

    .line 2320
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2321
    new-instance v1, Lcom/android/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$7;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2327
    iget v1, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2330
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 2332
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1051
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1054
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1055
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1065
    :cond_0
    return-void

    .line 1058
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1061
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1062
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1063
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1306
    .local v0, "halfScreenSize":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1307
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1309
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 843
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v2

    .line 845
    :cond_1
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 848
    .local v0, "childOffsets":[I
    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 849
    aget v2, v0, p1

    goto :goto_0

    .line 845
    .end local v0    # "childOffsets":[I
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    .line 851
    .restart local v0    # "childOffsets":[I
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 855
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 856
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 858
    :cond_4
    if-eqz v0, :cond_0

    .line 859
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1796
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1797
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 1798
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1300
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1814
    const v7, 0x7fffffff

    .line 1815
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1816
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1817
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 1818
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1819
    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1820
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1821
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1822
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1823
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1824
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1825
    move v7, v3

    .line 1826
    move v8, v5

    .line 1818
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1829
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getPageWarpIndex()I
    .locals 1

    .prologue
    .line 2802
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 866
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 877
    :cond_1
    :goto_0
    return v0

    .line 868
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 869
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    .line 871
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 872
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 874
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    .line 875
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 884
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 885
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 886
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 887
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .line 886
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1315
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1316
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1319
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1320
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1321
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1322
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 2040
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 896
    aput v0, p1, v0

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 931
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2127
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2090
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2094
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2096
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2097
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2098
    if-eqz p1, :cond_2

    .line 2099
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2100
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2103
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2104
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$3;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2117
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 436
    return p1
.end method

.method protected init()V
    .locals 5

    .prologue
    const v4, 0x44bb8000    # 1500.0f

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 312
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 313
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 315
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 316
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    .line 319
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    .line 320
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000    # -75.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    .line 323
    iget v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 325
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 326
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    .line 327
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    .line 328
    invoke-virtual {p0, p0}, Lcom/android/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 329
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 824
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 825
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 826
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 827
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 828
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 840
    :cond_0
    return-void

    .line 832
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 833
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 834
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 836
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 837
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 838
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2300
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2301
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2302
    iget v1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2304
    :cond_0
    return v0

    .line 2302
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2044
    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 2

    .prologue
    .line 1976
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 489
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 483
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 812
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 813
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 814
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 819
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 820
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 821
    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2257
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2258
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2259
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2266
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2269
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2270
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2272
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 2273
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2262
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f050039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2276
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 14
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v13, 0x1

    .line 2541
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2548
    .local v4, "startTime":J
    new-instance v9, Lcom/android/keyguard/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/keyguard/PagedView$10;-><init>(Lcom/android/keyguard/PagedView;J)V

    .line 2569
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2570
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2571
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2572
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2573
    new-instance v0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2576
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f05003a

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2579
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2582
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2583
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2584
    iget v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2585
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2586
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2587
    new-instance v2, Lcom/android/keyguard/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/android/keyguard/PagedView$11;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2592
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2593
    iput-boolean v13, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2594
    return-void

    .line 2585
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1734
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1716
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1717
    const/4 v1, 0x0

    .line 1718
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1723
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1724
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1725
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    .line 1729
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1720
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1721
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1727
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2700
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2667
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2668
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2669
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2670
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2671
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2672
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2674
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2655
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2656
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2657
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2658
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2660
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2661
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2663
    :cond_1
    return-void

    .line 2656
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1214
    :cond_0
    :goto_0
    return v3

    .line 1123
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1124
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v5, v3, :cond_0

    .line 1129
    :cond_2
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1214
    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1135
    :pswitch_1
    iget v5, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1136
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1137
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1151
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v5, :cond_5

    .line 1152
    const-string v5, "interceptTouch(): DOWN"

    invoke-direct {p0, v5}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    .line 1155
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1162
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1163
    .local v2, "xDist":I
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    if-ge v2, v5, :cond_7

    :cond_6
    move v1, v3

    .line 1164
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 1165
    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1166
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_7
    move v1, v4

    .line 1163
    goto :goto_2

    .line 1168
    .restart local v1    # "finishedScrolling":Z
    :cond_8
    iget-boolean v5, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1170
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1172
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1197
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "xDist":I
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    .line 1199
    iget v5, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 1205
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1206
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 763
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 770
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 771
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 774
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 776
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 777
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 778
    invoke-virtual {p0, v6}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 779
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 780
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 781
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 782
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 785
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 787
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 777
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 791
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_3
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 792
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 793
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 794
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 795
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 798
    :cond_4
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 800
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v10, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_1

    .line 644
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 754
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 651
    .local v18, "parent":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 652
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 653
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 654
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 657
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 658
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 659
    .local v16, "maxSize":I
    const/high16 v27, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 660
    .local v20, "parentWidthSize":I
    move/from16 v19, v16

    .line 661
    .local v19, "parentHeightSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 662
    .local v22, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 663
    .local v21, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    if-eqz v25, :cond_2

    if-nez v11, :cond_3

    .line 666
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 671
    :cond_3
    if-lez v26, :cond_4

    if-gtz v12, :cond_5

    .line 672
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 681
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 682
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 691
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 692
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 694
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 695
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 698
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 699
    const/high16 v9, -0x80000000

    .line 705
    .local v9, "childWidthMode":I
    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 706
    const/high16 v7, -0x80000000

    .line 711
    .local v7, "childHeightMode":I
    :goto_3
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 713
    .local v8, "childWidthMeasureSpec":I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 716
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 692
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 701
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "childWidthMode":I
    goto :goto_2

    .line 708
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childHeightMode":I
    goto :goto_3

    .line 718
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->setMeasuredDimension(II)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    .line 728
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 730
    if-lez v5, :cond_a

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 740
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 741
    .local v17, "offset":I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 743
    .local v23, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 747
    .end local v17    # "offset":I
    .end local v23    # "spacing":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 749
    if-lez v5, :cond_b

    .line 750
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 752
    :cond_b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    .prologue
    .line 2812
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    .prologue
    .line 2816
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 998
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 999
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 1003
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1004
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1007
    :goto_1
    return v2

    .line 1001
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1007
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2223
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2224
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f050038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2229
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 2230
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2233
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2234
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2236
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_2

    .line 2237
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2243
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 2244
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v29

    if-gtz v29, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v29

    .line 1690
    :goto_0
    return v29

    .line 1402
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1404
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1406
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 1690
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v29, 0x1

    goto :goto_0

    .line 1412
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-nez v29, :cond_2

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1417
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1425
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1426
    const-string v29, "onTouch(): DOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 1422
    :cond_3
    const/16 v29, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_2

    .line 1431
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 1433
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1435
    .local v21, "pointerIndex":I
    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v29, 0x1

    goto :goto_0

    .line 1437
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    .line 1438
    .local v28, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v30, v0

    add-float v29, v29, v30

    sub-float v7, v29, v28

    .line 1440
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v29, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v30

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1445
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_7

    .line 1446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchX:F

    move/from16 v29, v0

    add-float v29, v29, v7

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1447
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x4e6e6b28    # 1.0E9f

    div-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 1450
    .local v25, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual/range {v25 .. v25}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v29

    sub-float v29, v29, v7

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 1457
    .end local v25    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :goto_3
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1458
    float-to-int v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v7, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1451
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    move/from16 v29, v0

    if-nez v29, :cond_6

    .line 1452
    float-to-int v0, v7

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    goto :goto_3

    .line 1455
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    goto :goto_3

    .line 1460
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1462
    .end local v7    # "deltaX":F
    .end local v21    # "pointerIndex":I
    .end local v28    # "x":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 1464
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1470
    .local v22, "pt":[F
    const/16 v29, 0x0

    aget v29, v22, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1471
    const/16 v29, 0x1

    aget v29, v22, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1476
    .local v8, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v6, v0

    .line 1478
    .local v6, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    int-to-float v0, v6

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v15, v0

    .line 1480
    .local v15, "leftBufferEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    int-to-float v0, v6

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1484
    .local v24, "rightBufferEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1486
    .local v13, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v20, v0

    .line 1496
    .local v20, "parentX":F
    const/16 v17, -0x1

    .line 1497
    .local v17, "pageIndexToSnapTo":I
    int-to-float v0, v15

    move/from16 v29, v0

    cmpg-float v29, v20, v29

    if-gez v29, :cond_a

    if-lez v8, :cond_a

    .line 1498
    add-int/lit8 v17, v8, -0x1

    .line 1503
    :cond_9
    :goto_4
    move/from16 v18, v17

    .line 1504
    .local v18, "pageUnderPointIndex":I
    const/16 v29, -0x1

    move/from16 v0, v18

    move/from16 v1, v29

    if-le v0, v1, :cond_b

    if-nez v13, :cond_b

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v31, v29, v30

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    aput v31, v29, v30

    .line 1507
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v0, v18

    move/from16 v1, v29

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->isFinished()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1511
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1512
    new-instance v29, Lcom/android/keyguard/PagedView$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/keyguard/PagedView$1;-><init>(Lcom/android/keyguard/PagedView;II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1499
    .end local v18    # "pageUnderPointIndex":I
    :cond_a
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v20, v29

    if-lez v29, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v8, v0, :cond_9

    .line 1500
    add-int/lit8 v17, v8, 0x1

    goto/16 :goto_4

    .line 1565
    .restart local v18    # "pageUnderPointIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1566
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1568
    .end local v6    # "bufferSize":I
    .end local v8    # "dragViewIndex":I
    .end local v13    # "isHoveringOverDelete":Z
    .end local v15    # "leftBufferEdge":I
    .end local v17    # "pageIndexToSnapTo":I
    .end local v18    # "pageUnderPointIndex":I
    .end local v20    # "parentX":F
    .end local v22    # "pt":[F
    .end local v24    # "rightBufferEdge":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    move/from16 v29, v0

    if-nez v29, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1569
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1574
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 1575
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1576
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1578
    .restart local v21    # "pointerIndex":I
    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1580
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    .line 1581
    .restart local v28    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 1582
    .local v26, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1583
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1584
    .local v27, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    move/from16 v29, v0

    sub-float v29, v28, v29

    move/from16 v0, v29

    float-to-int v7, v0

    .line 1585
    .local v7, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v19

    .line 1586
    .local v19, "pageWidth":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3f000000    # 0.5f

    mul-float v30, v30, v31

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    const/4 v14, 0x1

    .line 1589
    .local v14, "isSignificantMove":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v31, v0

    add-float v30, v30, v31

    sub-float v30, v30, v28

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v29, v0

    const/high16 v30, 0x41c80000    # 25.0f

    cmpl-float v29, v29, v30

    if-lez v29, :cond_15

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    const/4 v12, 0x1

    .line 1597
    .local v12, "isFling":Z
    :goto_6
    const/16 v23, 0x0

    .line 1598
    .local v23, "returnToOriginalPage":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3ea8f5c3    # 0.33f

    mul-float v30, v30, v31

    cmpl-float v29, v29, v30

    if-lez v29, :cond_f

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->signum(F)F

    move-result v29

    int-to-float v0, v7

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->signum(F)F

    move-result v30

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_f

    if-eqz v12, :cond_f

    .line 1600
    const/16 v23, 0x1

    .line 1607
    :cond_f
    if-eqz v14, :cond_10

    if-lez v7, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    if-eqz v12, :cond_17

    if-lez v27, :cond_17

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    if-lez v29, :cond_17

    .line 1609
    if-nez v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v29

    if-eqz v29, :cond_16

    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1611
    .local v9, "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1673
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v9    # "finalPage":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v26    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v27    # "velocityX":I
    .end local v28    # "x":F
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1675
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1586
    .restart local v5    # "activePointerId":I
    .restart local v7    # "deltaX":I
    .restart local v19    # "pageWidth":I
    .restart local v21    # "pointerIndex":I
    .restart local v26    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v27    # "velocityX":I
    .restart local v28    # "x":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1591
    .restart local v14    # "isSignificantMove":Z
    :cond_15
    const/4 v12, 0x0

    goto :goto_6

    .line 1609
    .restart local v12    # "isFling":Z
    .restart local v23    # "returnToOriginalPage":Z
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v9, v29, -0x1

    goto :goto_7

    .line 1612
    :cond_17
    if-eqz v14, :cond_18

    if-gez v7, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    if-eqz v12, :cond_1b

    if-gez v27, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 1615
    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1616
    .restart local v9    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1615
    .end local v9    # "finalPage":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v9, v29, 0x1

    goto :goto_9

    .line 1618
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1620
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v26    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v27    # "velocityX":I
    .end local v28    # "x":F
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 1624
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1625
    .local v16, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    .line 1626
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1628
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1630
    .end local v16    # "nextPage":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_20

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1635
    .restart local v16    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_1f

    .line 1636
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1638
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1640
    .end local v16    # "nextPage":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    .line 1642
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1643
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1648
    .restart local v22    # "pt":[F
    const/16 v29, 0x0

    aget v29, v22, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1649
    const/16 v29, 0x1

    aget v29, v22, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1651
    const/4 v11, 0x0

    .line 1654
    .local v11, "handledFling":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1655
    .local v10, "flingToDeleteVector":Landroid/graphics/PointF;
    if-eqz v10, :cond_21

    .line 1656
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1657
    const/4 v11, 0x1

    .line 1660
    :cond_21
    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_8

    .line 1666
    .end local v10    # "flingToDeleteVector":Landroid/graphics/PointF;
    .end local v11    # "handledFling":Z
    .end local v22    # "pt":[F
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->isAnimatingWarpPage()Z

    move-result v29

    if-nez v29, :cond_23

    .line 1667
    const-string v29, "unhandled tap"

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    .line 1669
    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1679
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    .line 1682
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1686
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 0
    .param p1, "newTouchState"    # I

    .prologue
    .line 1229
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1706
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1383
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 497
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 498
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginMoving()V

    .line 503
    :cond_1
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 527
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 530
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetPageWarp()V

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndMoving()V

    .line 534
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2678
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2695
    :goto_0
    return v0

    .line 2681
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2695
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2683
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2684
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    goto :goto_0

    .line 2689
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2690
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2681
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1772
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1773
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1774
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1775
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1777
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 988
    .local v0, "page":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 990
    const/4 v1, 0x1

    .line 992
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 805
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 570
    iget v0, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 571
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1989
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 575
    iput p1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 577
    if-gez p1, :cond_2

    .line 578
    invoke-super {p0, v3, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 579
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 580
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    .line 592
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 593
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 596
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 598
    .local v0, "p":[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 599
    aget v1, v0, v4

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 600
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 602
    .end local v0    # "p":[F
    :cond_1
    return-void

    .line 582
    :cond_2
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 583
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 584
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 585
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    .line 588
    :cond_3
    iput p1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 589
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 473
    :goto_0
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 469
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 470
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicator()V

    .line 471
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 472
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    goto :goto_0
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 333
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 362
    iput p1, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 363
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->requestLayout()V

    .line 364
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 562
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 563
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 477
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2611
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 757
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    .line 758
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 759
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/keyguard/PagedView$PageSwitchListener;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 400
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 368
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 371
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 372
    aget v1, v0, v3

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 373
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 375
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2061
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2062
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2063
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2081
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2067
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2068
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2070
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2071
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2072
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2073
    if-eqz p1, :cond_2

    .line 2074
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2076
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2077
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2078
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 3

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 1834
    .local v0, "newPage":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    const-string v2, "snapToDestination"

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1837
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1838
    return-void

    .line 1835
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1906
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1907
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1914
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1929
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1932
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    if-ne p1, v0, :cond_4

    .line 1933
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    iput v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 1939
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1940
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 1941
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1942
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetPageWarp()V

    .line 1947
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1948
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1950
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1953
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1954
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->awakenScrollBars(I)Z

    .line 1955
    if-eqz p4, :cond_6

    .line 1956
    const/4 p3, 0x0

    .line 1961
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1962
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1964
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 1967
    if-eqz p4, :cond_3

    .line 1968
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScroll()V

    .line 1971
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1972
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    .line 1973
    return-void

    .line 1936
    .end local v6    # "focusedChild":Landroid/view/View;
    :cond_4
    iput p1, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_0

    .line 1944
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    goto :goto_1

    .line 1957
    .restart local v6    # "focusedChild":Landroid/view/View;
    :cond_6
    if-nez p3, :cond_1

    .line 1958
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_2
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1916
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1922
    .local v1, "newX":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1923
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1924
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1925
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1910
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1865
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1866
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 1868
    .local v4, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1869
    const-string v7, "snapToPageWithVelocity"

    iget v8, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v8, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v7, v6}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1875
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1876
    .local v5, "newX":I
    iget v6, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1877
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1879
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    .line 1882
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1903
    :goto_0
    return-void

    .line 1890
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1891
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1894
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1895
    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1900
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1902
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/keyguard/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startPageWarp(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 2795
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2796
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 2798
    :cond_0
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 2799
    return-void
.end method

.method public startReordering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2279
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2280
    .local v0, "dragViewIndex":I
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2281
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2282
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2285
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_1

    .line 2287
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2288
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2290
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2292
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    .line 2296
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public stopPageWarp()V
    .locals 0

    .prologue
    .line 2808
    return-void
.end method

.method swapPages(II)V
    .locals 5
    .param p1, "indexA"    # I
    .param p2, "indexB"    # I

    .prologue
    .line 2784
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2785
    .local v1, "viewA":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2786
    .local v2, "viewB":Landroid/view/View;
    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2787
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    .line 2788
    .local v0, "deltaX":I
    neg-int v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2789
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2791
    .end local v0    # "deltaX":I
    :cond_0
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 445
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 446
    .local v1, "offset":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 447
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 448
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 449
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 450
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 451
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 353
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 354
    .local v0, "x":F
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 355
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 356
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 359
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2340
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2341
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2343
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    .line 2344
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2345
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2346
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2349
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/PagedView$8;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2376
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2383
    :cond_2
    :goto_0
    return v0

    .line 2379
    :cond_3
    if-eqz p1, :cond_2

    .line 2380
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected zoomOut()Z
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2189
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2190
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2193
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 2194
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2195
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2196
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2199
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$5;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2216
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2219
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
