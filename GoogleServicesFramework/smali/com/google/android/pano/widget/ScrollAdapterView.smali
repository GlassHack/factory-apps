.class public final Lcom/google/android/pano/widget/ScrollAdapterView;
.super Landroid/widget/AdapterView;
.source "ScrollAdapterView.java"

# interfaces
.implements Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;,
        Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;,
        Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;,
        Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;,
        Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;,
        Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;"
    }
.end annotation


# static fields
.field private static final FLING_PAGE_ITEMS:[I


# instance fields
.field private mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

.field private mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

.field private mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

.field private mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

.field private mAnimateLayoutChange:Z

.field private final mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDataSetChangedFlag:Z

.field private mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

.field private final mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

.field private final mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

.field private mExpandedItemInAnim:Landroid/animation/Animator;

.field private mExpandedItemOutAnim:Landroid/animation/Animator;

.field private final mExpandedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridSetting:I

.field private mItemSelected:I

.field private mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

.field private mItemsOnOffAxis:I

.field private mLastFingItemsIndex:I

.field private mLastFlingTime:J

.field private mLeftIndex:I

.field private mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

.field private mMadeInitialSelection:Z

.field private mMeasuredSpec:I

.field private mNavigateInAnimationAllowed:Z

.field private mNavigateOutAllowed:Z

.field private mNavigateOutOfOffAxisAllowed:Z

.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPendingScrollPosition:F

.field private mPendingSelection:I

.field private mPlaySoundEffects:Z

.field private mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

.field private mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

.field private mRightIndex:I

.field private mScrapHeight:I

.field private mScrapWidth:I

.field private mScroll:Lcom/google/android/pano/widget/ScrollController;

.field private final mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

.field private mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

.field mScrollTask:Ljava/lang/Runnable;

.field private mScrollTaskRunning:Z

.field private mScrollerState:I

.field private mSelectedIndex:I

.field private mSelectedSize:I

.field private mSpace:I

.field private mSpaceHigh:I

.field private mSpaceLow:I

.field mTempRect:Landroid/graphics/Rect;

.field private mTiltX:F

.field private mTiltY:F

.field private mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

.field private mTrackpadNavigationEnabled:Z

.field private mTrackpadNavigationTiltEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 505
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    .line 170
    iput v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 180
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 183
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    .line 226
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    .line 228
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    .line 240
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 308
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    .line 311
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    .line 350
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-direct {v2}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    .line 351
    iput v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    .line 353
    iput v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 354
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    .line 356
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-direct {v2}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    .line 367
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    .line 370
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    .line 372
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    .line 373
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    .line 375
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateInAnimationAllowed:Z

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    .line 488
    new-instance v2, Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/TrackpadNavigation;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    .line 490
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    .line 492
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    .line 496
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    .line 499
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPlaySoundEffects:Z

    .line 874
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$1;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$1;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 1044
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$2;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$2;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTask:Ljava/lang/Runnable;

    .line 1826
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$3;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$3;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 506
    new-instance v2, Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 507
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->setChildrenDrawingOrderEnabled(Z)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSoundEffectsEnabled(Z)V

    .line 509
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->getVisualIndicator()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->setWillNotDraw(Z)V

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 511
    new-instance v0, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 512
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    .line 513
    return-void

    :cond_0
    move v0, v1

    .line 509
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/pano/widget/ScrollAdapterView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->doFling(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollTaskRunInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    return-object v0
.end method

.method private addAndMeasureExpandableView(II)Landroid/view/View;
    .locals 5
    .param p1, "adapterIndex"    # I
    .param p2, "insertIndex"    # I

    .prologue
    .line 1336
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3, p1}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemViewType(I)I

    move-result v2

    .line 1337
    .local v2, "type":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    invoke-virtual {v3, v2}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 1338
    .local v1, "recycleView":Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3, p1, v1, p0}, Lcom/google/android/pano/widget/ScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1339
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1340
    const/4 v0, 0x0

    .line 1345
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-object v0

    .line 1342
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    sget v3, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    new-instance v4, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    invoke-direct {v4, v2}, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1343
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, p2, v3, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1344
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    goto :goto_0
.end method

.method private adjustSystemScrollPos()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollTo(II)V

    .line 976
    return-void
.end method

.method private applyTransformations()V
    .locals 7

    .prologue
    .line 990
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    if-nez v3, :cond_1

    .line 1000
    :cond_0
    return-void

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v2

    .line 994
    .local v2, "lastExpandable":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 995
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 996
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v5

    sub-int v5, v3, v5

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4, v0, v5, v3}, Lcom/google/android/pano/widget/ScrollAdapterTransform;->transform(Landroid/view/View;II)V

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_1
.end method

.method private static assertFailure(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3394
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private childHasFocus(I)Z
    .locals 5
    .param p1, "expandableViewIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 1241
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1242
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v2

    .line 1245
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v1

    .line 1246
    .local v1, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1249
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeScrollCenter(I)I
    .locals 10
    .param p1, "expandViewIndex"    # I

    .prologue
    .line 3058
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v4

    .line 3059
    .local v4, "lastIndex":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    .line 3060
    .local v1, "firstIndex":I
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3061
    .local v2, "firstView":Landroid/view/View;
    const/4 v0, 0x0

    .line 3062
    .local v0, "center":I
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 3073
    :goto_0
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3074
    sget v8, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v2, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget v8, v8, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    sub-int/2addr v0, v8

    .line 3077
    :cond_0
    const/4 v5, -0x1

    .line 3078
    .local v5, "nextCenter":I
    move v3, v1

    .local v3, "idx":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 3079
    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3080
    .local v7, "view":Landroid/view/View;
    if-gt v3, p1, :cond_3

    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v8, v3

    if-ge p1, v8, :cond_3

    .line 3104
    .end local v0    # "center":I
    .end local v7    # "view":Landroid/view/View;
    :goto_2
    return v0

    .line 3064
    .end local v3    # "idx":I
    .end local v5    # "nextCenter":I
    .restart local v0    # "center":I
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenter(Landroid/view/View;)I

    move-result v0

    .line 3065
    goto :goto_0

    .line 3067
    :pswitch_1
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v8, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 3068
    :goto_3
    goto :goto_0

    .line 3067
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 3070
    :pswitch_2
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v8, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_4
    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_4

    .line 3083
    .restart local v3    # "idx":I
    .restart local v5    # "nextCenter":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v8, v4, v8

    if-ge v3, v8, :cond_4

    .line 3085
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3086
    .local v6, "nextView":Landroid/view/View;
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 3097
    :goto_5
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v5, v8

    .line 3101
    .end local v6    # "nextView":Landroid/view/View;
    :goto_6
    move v0, v5

    .line 3078
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v3, v8

    goto :goto_1

    .line 3088
    .restart local v6    # "nextView":Landroid/view/View;
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v5, v0, v8

    .line 3089
    goto :goto_5

    .line 3091
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v8

    add-int v5, v0, v8

    .line 3092
    goto :goto_5

    .line 3094
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v8

    add-int v5, v0, v8

    goto :goto_5

    .line 3099
    .end local v6    # "nextView":Landroid/view/View;
    :cond_4
    const v5, 0x7fffffff

    goto :goto_6

    .line 3103
    .end local v7    # "view":Landroid/view/View;
    :cond_5
    const-string v8, "Scroll out of range?"

    invoke-static {v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->assertFailure(Ljava/lang/String;)V

    .line 3104
    const/4 v0, 0x0

    goto :goto_2

    .line 3062
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3086
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doFling(FF)Z
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1905
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v0, v1

    .line 1906
    .local v0, "majorFlingX":Z
    :goto_0
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v3, v1, :cond_1

    if-nez v0, :cond_1

    .line 1907
    invoke-virtual {p0, v5, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->fling(FF)V

    .line 1913
    :goto_1
    return v1

    .end local v0    # "majorFlingX":Z
    :cond_0
    move v0, v2

    .line 1905
    goto :goto_0

    .line 1909
    .restart local v0    # "majorFlingX":Z
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 1910
    invoke-virtual {p0, p1, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fling(FF)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1913
    goto :goto_1
.end method

.method private ensureSimpleItemTransform()V
    .locals 2

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    instance-of v0, v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    if-nez v0, :cond_0

    .line 2496
    new-instance v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    .line 2498
    :cond_0
    return-void
.end method

.method private expandableIndexFromAdapterIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2595
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private fillOneAxis(IIZZ)Z
    .locals 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "setInitialPos"    # Z

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v8

    .line 1484
    .local v8, "viewIndex":I
    if-eqz p3, :cond_0

    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    iget-object v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v10}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v10

    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1486
    .local v5, "itemsToAdd":I
    :goto_0
    const/4 v7, 0x0

    .line 1487
    .local v7, "maxSize":I
    const/4 v6, 0x0

    .line 1488
    .local v6, "maxSelectedSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 1489
    if-eqz p3, :cond_1

    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/2addr v9, v4

    const/4 v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/google/android/pano/widget/ScrollAdapterView;->addAndMeasureExpandableView(II)Landroid/view/View;

    move-result-object v2

    .line 1491
    .local v2, "child":Landroid/view/View;
    :goto_2
    if-nez v2, :cond_2

    .line 1492
    const/4 v9, 0x0

    .line 1570
    .end local v2    # "child":Landroid/view/View;
    :goto_3
    return v9

    .line 1484
    .end local v4    # "i":I
    .end local v5    # "itemsToAdd":I
    .end local v6    # "maxSelectedSize":I
    .end local v7    # "maxSize":I
    :cond_0
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    goto :goto_0

    .line 1489
    .restart local v4    # "i":I
    .restart local v5    # "itemsToAdd":I
    .restart local v6    # "maxSelectedSize":I
    .restart local v7    # "maxSize":I
    :cond_1
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v9, v4

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/pano/widget/ScrollAdapterView;->addAndMeasureExpandableView(II)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 1494
    .restart local v2    # "child":Landroid/view/View;
    :cond_2
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    :goto_4
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1496
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemSize(ILandroid/view/View;)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1488
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1494
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto :goto_4

    .line 1499
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    if-nez p3, :cond_5

    .line 1500
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v8

    .line 1501
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_7

    .line 1502
    sub-int/2addr p1, v7

    .line 1507
    :cond_5
    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_b

    .line 1508
    add-int v9, v8, v4

    invoke-virtual {p0, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1509
    .restart local v2    # "child":Landroid/view/View;
    sget v9, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v2, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 1510
    .local v3, "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    iput v7, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    .line 1511
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_8

    .line 1512
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v9}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1527
    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr p2, v9

    .line 1528
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr p2, v9

    .line 1548
    :goto_8
    if-eqz p3, :cond_9

    .line 1549
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    invoke-virtual {v9, v2, v10}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->loadView(Landroid/view/View;I)V

    .line 1550
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    .line 1555
    :goto_9
    add-int v9, v8, v4

    invoke-direct {p0, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->computeScrollCenter(I)I

    move-result v9

    iput v9, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    .line 1556
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    if-nez v9, :cond_6

    .line 1559
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v0

    .line 1560
    .local v0, "centerMain":I
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v1

    .line 1561
    .local v1, "centerSecond":I
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_a

    .line 1562
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v9, v0, v1}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    .line 1566
    :goto_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 1567
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 1507
    .end local v0    # "centerMain":I
    .end local v1    # "centerSecond":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1504
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    :cond_7
    sub-int/2addr p2, v7

    goto :goto_5

    .line 1514
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    :pswitch_0
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, p2

    invoke-virtual {v2, v9, p2, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1519
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, p2

    invoke-virtual {v2, p1, p2, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1523
    :pswitch_2
    add-int v9, p1, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, p1, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, p2

    invoke-virtual {v2, v9, p2, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_7

    .line 1530
    :cond_8
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v9}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 1545
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr p1, v9

    .line 1546
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr p1, v9

    goto/16 :goto_8

    .line 1532
    :pswitch_3
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, p1

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v11, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-virtual {v2, p1, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 1537
    :pswitch_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, p2

    invoke-virtual {v2, p1, p2, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 1541
    :pswitch_5
    add-int v9, p2, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, p1

    add-int v11, p2, v7

    invoke-virtual {v2, p1, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 1552
    :cond_9
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    invoke-virtual {v9, v2, v10}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->loadView(Landroid/view/View;I)V

    .line 1553
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    goto/16 :goto_9

    .line 1564
    .restart local v0    # "centerMain":I
    .restart local v1    # "centerSecond":I
    :cond_a
    iget-object v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v9, v1, v0}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    goto/16 :goto_a

    .line 1570
    .end local v0    # "centerMain":I
    .end local v1    # "centerSecond":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1530
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private fillOneLeftChildView(Z)Z
    .locals 11
    .param p1, "stopOnInvisible"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1295
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    if-gez v9, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return v8

    .line 1298
    :cond_1
    const v4, 0x7fffffff

    .line 1299
    .local v4, "left":I
    const v5, 0x7fffffff

    .line 1300
    .local v5, "top":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    .line 1302
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v9

    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1303
    .local v3, "last":I
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1304
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1305
    .local v6, "v":Landroid/view/View;
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_3

    .line 1306
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ge v9, v4, :cond_2

    .line 1307
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1303
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1310
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 1311
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    .line 1316
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v9, :cond_7

    .line 1317
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v4, v9

    .line 1318
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v9

    sub-int v9, v4, v9

    if-gtz v9, :cond_6

    move v2, v7

    .line 1319
    .local v2, "itemInvisible":Z
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v5

    .line 1325
    :goto_4
    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    .line 1332
    :cond_5
    invoke-direct {p0, v4, v5, v8, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    move-result v8

    goto :goto_0

    .end local v2    # "itemInvisible":Z
    :cond_6
    move v2, v8

    .line 1318
    goto :goto_3

    .line 1321
    :cond_7
    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v5, v9

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v9

    sub-int v9, v5, v9

    if-gtz v9, :cond_8

    move v2, v7

    .line 1323
    .restart local v2    # "itemInvisible":Z
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v4

    goto :goto_4

    .end local v2    # "itemInvisible":Z
    :cond_8
    move v2, v8

    .line 1322
    goto :goto_5
.end method

.method private fillOneRightChildView(Z)Z
    .locals 14
    .param p1, "stopOnInvisible"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1577
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v13, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v13}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v13

    if-lt v12, v13, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return v11

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v7

    .line 1581
    .local v7, "left":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v8

    .line 1582
    .local v8, "top":I
    const/4 v1, 0x0

    .line 1583
    .local v1, "checkedChild":Z
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_3

    .line 1586
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .line 1587
    .local v2, "childIndex":I
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v12

    iget v13, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int v4, v12, v13

    .line 1588
    .local v4, "gridPos":I
    sub-int v5, v2, v4

    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 1589
    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1590
    .local v9, "v":Landroid/view/View;
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    .line 1591
    .local v0, "adapterIndex":I
    iget-object v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-static {v12, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v3

    .line 1592
    .local v3, "expandedView":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    if-eqz v3, :cond_5

    .line 1593
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v12, :cond_4

    .line 1594
    iget-object v12, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1598
    :goto_2
    const/4 v1, 0x1

    .line 1618
    .end local v0    # "adapterIndex":I
    .end local v3    # "expandedView":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local v9    # "v":Landroid/view/View;
    :cond_2
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v12, :cond_b

    .line 1619
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v7, v12

    .line 1620
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getWidth()I

    move-result v13

    if-lt v12, v13, :cond_a

    move v6, v10

    .line 1621
    .local v6, "itemInvisible":Z
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v8

    .line 1627
    :goto_4
    if-eqz v6, :cond_3

    if-nez p1, :cond_0

    .line 1632
    .end local v2    # "childIndex":I
    .end local v4    # "gridPos":I
    .end local v5    # "i":I
    .end local v6    # "itemInvisible":Z
    :cond_3
    invoke-direct {p0, v7, v8, v10, v10}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    move-result v11

    goto :goto_0

    .line 1596
    .restart local v0    # "adapterIndex":I
    .restart local v2    # "childIndex":I
    .restart local v3    # "expandedView":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local v4    # "gridPos":I
    .restart local v5    # "i":I
    .restart local v9    # "v":Landroid/view/View;
    :cond_4
    iget-object v12, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_2

    .line 1601
    :cond_5
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v12, :cond_8

    .line 1602
    if-nez v1, :cond_7

    .line 1603
    const/4 v1, 0x1

    .line 1604
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1588
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1605
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v7, :cond_6

    .line 1606
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_5

    .line 1609
    :cond_8
    if-nez v1, :cond_9

    .line 1610
    const/4 v1, 0x1

    .line 1611
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_5

    .line 1612
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    if-le v12, v8, :cond_6

    .line 1613
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_5

    .end local v0    # "adapterIndex":I
    .end local v3    # "expandedView":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local v9    # "v":Landroid/view/View;
    :cond_a
    move v6, v11

    .line 1620
    goto :goto_3

    .line 1623
    :cond_b
    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v8, v12

    .line 1624
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v12

    sub-int v12, v8, v12

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_c

    move v6, v10

    .line 1625
    .restart local v6    # "itemInvisible":Z
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v7

    goto :goto_4

    .end local v6    # "itemInvisible":Z
    :cond_c
    move v6, v11

    .line 1624
    goto :goto_6
.end method

.method private fillVisibleViewsInLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1268
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1272
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 1276
    .local v1, "scrollCenter":I
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollLow(ILandroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMin(II)V

    .line 1280
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollCenter":I
    :goto_0
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1282
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1283
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 1284
    .restart local v1    # "scrollCenter":I
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollHigh(ILandroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMax(II)V

    .line 1288
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollCenter":I
    :goto_1
    return-void

    .line 1278
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->invalidateScrollMin()V

    goto :goto_0

    .line 1286
    :cond_3
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->invalidateScrollMax()V

    goto :goto_1
.end method

.method private static findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;",
            ">;I)",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;"
        }
    .end annotation

    .prologue
    .line 2611
    .local p0, "expandedView":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2612
    .local v0, "expandedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2613
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2614
    .local v2, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    if-ne v3, p1, :cond_0

    .line 2618
    .end local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :goto_1
    return-object v2

    .line 2612
    .restart local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    .end local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findViewIndexContainingScrollCenter()I
    .locals 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter(IIZ)I

    move-result v0

    return v0
.end method

.method private findViewIndexContainingScrollCenter(IIZ)I
    .locals 9
    .param p1, "scrollCenter"    # I
    .param p2, "scrollCenterOffAxis"    # I
    .param p3, "findNext"    # Z

    .prologue
    const/4 v8, 0x1

    .line 699
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    .line 700
    .local v3, "lastExpandable":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 701
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 702
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v1

    .line 704
    .local v1, "centerOffAxis":I
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_3

    .line 705
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 709
    .local v5, "viewSizeOffAxis":I
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v0

    .line 710
    .local v0, "centerMain":I
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v6

    invoke-direct {p0, v0, v6, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPosition(III)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-eq v6, v8, :cond_0

    invoke-direct {p0, p2, v5, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPositionSecondAxis(III)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 713
    :cond_0
    if-eqz p3, :cond_2

    .line 714
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ge v0, p1, :cond_4

    .line 715
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 716
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v2, v6

    .line 723
    :cond_1
    :goto_2
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ne v6, v8, :cond_5

    :cond_2
    :goto_3
    move v6, v2

    .line 740
    .end local v0    # "centerMain":I
    .end local v1    # "centerOffAxis":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewSizeOffAxis":I
    :goto_4
    return v6

    .line 707
    .restart local v1    # "centerOffAxis":I
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .restart local v5    # "viewSizeOffAxis":I
    goto :goto_1

    .line 718
    .restart local v0    # "centerMain":I
    :cond_4
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v6

    if-nez v6, :cond_1

    if-le v0, p1, :cond_1

    .line 719
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v6, v2, v6

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 720
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v2, v6

    goto :goto_2

    .line 725
    :cond_5
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->isSecondAxisMovingForward()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ge v1, p2, :cond_6

    .line 727
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 730
    :cond_6
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->isSecondAxisMovingForward()Z

    move-result v6

    if-nez v6, :cond_2

    if-ge v1, p2, :cond_2

    .line 732
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 733
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 700
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 740
    .end local v0    # "centerMain":I
    .end local v1    # "centerOffAxis":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewSizeOffAxis":I
    :cond_8
    const/4 v6, -0x1

    goto :goto_4
.end method

.method private fireDataSetChanged()V
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    .line 871
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 872
    return-void
.end method

.method private fireItemChange()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 2263
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v1

    .line 2264
    .local v1, "childIndex":I
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2265
    .local v5, "topItem":Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getDescendantFocusability()I

    move-result v6

    const/high16 v7, 0x40000

    if-ne v6, v7, :cond_0

    if-eqz v5, :cond_0

    .line 2268
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2270
    :cond_0
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2271
    if-nez v5, :cond_3

    .line 2272
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    if-eq v6, v8, :cond_2

    .line 2273
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;

    .line 2274
    .local v3, "listener":Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v6, v8, v7}, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;->onItemSelected(Landroid/view/View;II)V

    goto :goto_0

    .line 2276
    .end local v3    # "listener":Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    :cond_1
    iput v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    .line 2288
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 2279
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    .line 2280
    .local v0, "adapterIndex":I
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v4

    .line 2281
    .local v4, "scrollCenter":I
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;

    .line 2282
    .restart local v3    # "listener":Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos(I)I

    move-result v6

    sub-int v6, v4, v6

    invoke-interface {v3, v5, v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;->onItemSelected(Landroid/view/View;II)V

    goto :goto_2

    .line 2285
    .end local v3    # "listener":Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    :cond_4
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    goto :goto_1
.end method

.method private fireItemSelected()V
    .locals 6

    .prologue
    .line 2375
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 2376
    .local v0, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2380
    :cond_0
    return-void
.end method

.method private fireScrollChange()V
    .locals 9

    .prologue
    .line 2357
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v2, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 2358
    .local v2, "savedIndex":I
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v3, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 2359
    .local v3, "savedMainPos":F
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 2360
    .local v4, "savedSecondPos":F
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateScrollInfo(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V

    .line 2361
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    cmpl-float v5, v3, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1

    .line 2364
    :cond_0
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ltz v5, :cond_1

    .line 2365
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;

    .line 2366
    .local v1, "l":Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v7, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v8, v8, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    invoke-interface {v1, v5, v6, v7, v8}, Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;->onScrolled(Landroid/view/View;IFF)V

    goto :goto_0

    .line 2372
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;
    :cond_1
    return-void
.end method

.method private getAdapterIndex(I)I
    .locals 2
    .param p1, "expandableViewIndex"    # I

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final getCenter(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2561
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private final getCenterInOffAxis(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2566
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 2626
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-eqz v7, :cond_0

    if-gez p1, :cond_1

    .line 2651
    :cond_0
    :goto_0
    return-object v6

    .line 2629
    :cond_1
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v2

    .line 2630
    .local v2, "ret":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    if-eqz v2, :cond_2

    move-object v6, v2

    .line 2631
    goto :goto_0

    .line 2633
    :cond_2
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-interface {v7, p1}, Lcom/google/android/pano/widget/ScrollAdapterBase;->getItemViewType(I)I

    move-result v4

    .line 2634
    .local v4, "type":I
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    invoke-virtual {v7, v4}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 2635
    .local v1, "recycleView":Landroid/view/View;
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-interface {v7, p1, v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterBase;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2636
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2639
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2640
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v7, v5, p1}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->loadView(Landroid/view/View;I)V

    .line 2641
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2643
    new-instance v6, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    invoke-direct {v6, p0, v5, p1, v4}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;II)V

    .line 2644
    .local v6, "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 2645
    iget v8, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    iget v7, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    if-ge v8, v7, :cond_3

    .line 2646
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2644
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2650
    :cond_4
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getScrollCenter(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3025
    sget v0, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    return v0
.end method

.method private getScrollHigh(ILandroid/view/View;)I
    .locals 2
    .param p1, "scrollCenter"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3121
    sget v1, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 3122
    .local v0, "holder":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3130
    const/4 p1, 0x0

    .end local p1    # "scrollCenter":I
    :goto_0
    :pswitch_0
    return p1

    .line 3124
    .restart local p1    # "scrollCenter":I
    :pswitch_1
    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    goto :goto_0

    .line 3126
    :pswitch_2
    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    add-int/2addr p1, v1

    goto :goto_0

    .line 3122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollLow(ILandroid/view/View;)I
    .locals 2
    .param p1, "scrollCenter"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3108
    sget v1, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 3109
    .local v0, "holder":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3117
    const/4 p1, 0x0

    .end local p1    # "scrollCenter":I
    :goto_0
    :pswitch_0
    return p1

    .line 3111
    .restart local p1    # "scrollCenter":I
    :pswitch_1
    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    goto :goto_0

    .line 3115
    :pswitch_2
    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 3109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectedItemSize(ILandroid/view/View;)I
    .locals 1
    .param p1, "adapterIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3385
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    if-eqz v0, :cond_0

    .line 3386
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    .line 3390
    :goto_0
    return v0

    .line 3387
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    if-eqz v0, :cond_1

    .line 3388
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    invoke-interface {v0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;->getSelectItemSize(ILandroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 3390
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getSize(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2571
    sget v0, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    return v0
.end method

.method private final getSizeInOffAxis(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2575
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private final getTopItem(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2545
    move-object v1, p0

    .line 2546
    .local v1, "root":Landroid/view/ViewGroup;
    move-object v0, p1

    .line 2547
    .local v0, "ret":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 2548
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_1

    .line 2553
    :cond_0
    if-nez v0, :cond_2

    .line 2556
    .end local p1    # "v":Landroid/view/View;
    :goto_1
    return-object p1

    .line 2551
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "ret":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "ret":Landroid/view/View;
    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 2556
    goto :goto_1
.end method

.method private hasScrollPosition(III)Z
    .locals 4
    .param p1, "scrollCenter"    # I
    .param p2, "maxSize"    # I
    .param p3, "scrollPosInMain"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3033
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 3044
    :cond_0
    :goto_0
    return v0

    .line 3035
    :pswitch_0
    div-int/lit8 v2, p2, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v2, v3

    if-ge v2, p3, :cond_1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr v2, v3

    if-lt p3, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3038
    :pswitch_1
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int v2, p1, v2

    if-gt v2, p3, :cond_2

    add-int v2, p1, p2

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr v2, v3

    if-lt p3, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 3041
    :pswitch_2
    sub-int v2, p1, p2

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v2, v3

    if-ge v2, p3, :cond_3

    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr v2, p1

    if-le p3, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 3033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasScrollPositionSecondAxis(III)Z
    .locals 2
    .param p1, "scrollCenterOffAxis"    # I
    .param p2, "viewSizeOffAxis"    # I
    .param p3, "centerOffAxis"    # I

    .prologue
    .line 3049
    div-int/lit8 v0, p2, 0x2

    sub-int v0, p3, v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    div-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p3

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private heuristicGetPersistentIndex()I
    .locals 8

    .prologue
    .line 1636
    const/4 v3, -0x1

    .line 1637
    .local v3, "selection":I
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v0

    .line 1638
    .local v0, "c":I
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1639
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ge v4, v0, :cond_1

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-interface {v4, v5}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1641
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v2, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 1654
    :cond_0
    :goto_0
    return v2

    .line 1643
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x1e

    if-gt v1, v4, :cond_4

    .line 1644
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    add-int v2, v4, v1

    .line 1645
    .local v2, "index":I
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4, v2}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1648
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    sub-int v2, v4, v1

    .line 1649
    if-ltz v2, :cond_3

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4, v2}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1643
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1654
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_4
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-lt v4, v0, :cond_5

    add-int/lit8 v4, v0, -0x1

    :goto_2
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    goto :goto_2
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 516
    sget-object v4, Lcom/google/android/pano/R$styleable;->ScrollAdapterView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 518
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setOrientation(I)V

    .line 519
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 520
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 521
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 522
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 520
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/ScrollController;->setScrollItemAlign(I)V

    goto :goto_1

    .line 528
    :pswitch_1
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setGridSetting(I)V

    goto :goto_1

    .line 531
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setLowItemTransform(Landroid/animation/Animator;)V

    goto :goto_1

    .line 535
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setHighItemTransform(Landroid/animation/Animator;)V

    goto :goto_1

    .line 539
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    goto :goto_1

    .line 543
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    goto :goto_1

    .line 547
    :pswitch_6
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSpace(I)V

    goto :goto_1

    .line 550
    :pswitch_7
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectedTakesMoreSpace(Z)V

    goto :goto_1

    .line 553
    :pswitch_8
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectedSize(I)V

    goto :goto_1

    .line 556
    :pswitch_9
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterStrategy(I)V

    goto :goto_1

    .line 559
    :pswitch_a
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterOffset(I)V

    goto :goto_1

    .line 562
    :pswitch_b
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterOffsetPercent(I)V

    goto/16 :goto_1

    .line 565
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 568
    :pswitch_d
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setFlingMode(I)V

    goto/16 :goto_1

    .line 571
    :pswitch_e
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setDragMode(I)V

    goto/16 :goto_1

    .line 574
    :pswitch_f
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateOutAllowed(Z)V

    goto/16 :goto_1

    .line 577
    :pswitch_10
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateOutOfOffAxisAllowed(Z)V

    goto/16 :goto_1

    .line 581
    :pswitch_11
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateInAnimationAllowed(Z)V

    goto/16 :goto_1

    .line 585
    :pswitch_12
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setTrackpadNavigationEnabled(Z)V

    goto/16 :goto_1

    .line 589
    :pswitch_13
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->setTrackpadNavigationTiltEnabled(Z)V

    goto/16 :goto_1

    .line 592
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController;->lerper()Lcom/google/android/pano/widget/Lerper;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/Lerper;->setDivisor(F)V

    goto/16 :goto_1

    .line 595
    :pswitch_15
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    goto/16 :goto_1

    .line 599
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->setSensitivityX(F)V

    goto/16 :goto_1

    .line 602
    :pswitch_17
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->setSensitivityY(F)V

    goto/16 :goto_1

    .line 605
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->setLockAxis(Z)V

    goto/16 :goto_1

    .line 608
    :pswitch_19
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->setOvershootProtection(F)V

    goto/16 :goto_1

    .line 613
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 614
    return-void

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_18
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2132
    :goto_0
    if-eqz p1, :cond_0

    .line 2133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2134
    .local v0, "p":Landroid/view/ViewParent;
    if-ne v0, p0, :cond_1

    .line 2135
    const/4 v1, 0x1

    .line 2142
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_0
    return v1

    .line 2137
    .restart local v0    # "p":Landroid/view/ViewParent;
    :cond_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object p1, v0

    .line 2140
    check-cast p1, Landroid/view/View;

    .line 2141
    goto :goto_0
.end method

.method private static isDirectionGrowing(I)Z
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 2128
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1777
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1778
    .local v4, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1780
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1782
    :cond_0
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1783
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1784
    .local v1, "childWidthSpec":I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1786
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1787
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1791
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1803
    .end local v2    # "lpHeight":I
    :goto_1
    return-void

    .line 1789
    .end local v0    # "childHeightSpec":I
    .restart local v2    # "lpHeight":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0

    .line 1793
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v2    # "lpHeight":I
    :cond_2
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1794
    .restart local v0    # "childHeightSpec":I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1796
    .local v3, "lpWidth":I
    if-lez v3, :cond_3

    .line 1797
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1801
    .restart local v1    # "childWidthSpec":I
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1799
    .end local v1    # "childWidthSpec":I
    :cond_3
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_2
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1349
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1350
    .local v4, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1352
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    :cond_0
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1357
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1358
    .local v1, "childWidthSpec":I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1359
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1360
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1373
    .end local v2    # "lpHeight":I
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1374
    return-void

    .line 1362
    .end local v0    # "childHeightSpec":I
    .restart local v2    # "lpHeight":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0

    .line 1365
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v2    # "lpHeight":I
    :cond_2
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1366
    .restart local v0    # "childHeightSpec":I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1367
    .local v3, "lpWidth":I
    if-lez v3, :cond_3

    .line 1368
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0

    .line 1370
    .end local v1    # "childWidthSpec":I
    :cond_3
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private pruneInvisibleViewsInLayout()V
    .locals 13

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v10

    .line 1148
    .local v10, "selectedView":Landroid/view/View;
    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v11}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v11}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v4

    .line 1151
    .local v4, "firstIndex":I
    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    .local v0, "child":Landroid/view/View;
    if-ne v0, v10, :cond_5

    .line 1191
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "firstIndex":I
    :cond_1
    :goto_0
    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v11}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v11}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1193
    :cond_2
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int v2, v11, v12

    .line 1194
    .local v2, "count":I
    if-nez v2, :cond_3

    .line 1195
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    .line 1197
    :cond_3
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    if-le v2, v11, :cond_a

    .line 1237
    .end local v2    # "count":I
    :cond_4
    :goto_1
    return-void

    .line 1155
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "firstIndex":I
    :cond_5
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v11, v4

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1156
    .local v9, "nextChild":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1160
    .local v7, "last":Landroid/view/View;
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v11, :cond_8

    .line 1161
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    if-gtz v11, :cond_1

    .line 1171
    :cond_6
    const/4 v5, 0x0

    .line 1172
    .local v5, "foundFocus":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ge v6, v11, :cond_7

    .line 1173
    add-int v1, v4, v6

    .line 1174
    .local v1, "childIndex":I
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->childHasFocus(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1175
    const/4 v5, 0x1

    .line 1179
    .end local v1    # "childIndex":I
    :cond_7
    if-nez v5, :cond_1

    .line 1182
    const/4 v6, 0x0

    :goto_3
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ge v6, v11, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1184
    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v0, v12}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->saveInvisibleView(Landroid/view/View;I)V

    .line 1185
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 1186
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    .line 1187
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    .line 1182
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1167
    .end local v5    # "foundFocus":Z
    .end local v6    # "i":I
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    if-lez v11, :cond_6

    goto/16 :goto_0

    .line 1172
    .restart local v1    # "childIndex":I
    .restart local v5    # "foundFocus":Z
    .restart local v6    # "i":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1200
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v4    # "firstIndex":I
    .end local v5    # "foundFocus":Z
    .end local v6    # "i":I
    .end local v7    # "last":Landroid/view/View;
    .end local v9    # "nextChild":Landroid/view/View;
    .restart local v2    # "count":I
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v8

    .line 1201
    .local v8, "lastIndex":I
    add-int/lit8 v11, v8, -0x1

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1202
    .restart local v0    # "child":Landroid/view/View;
    if-eq v0, v10, :cond_4

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1206
    .local v3, "first":Landroid/view/View;
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v11, :cond_d

    .line 1207
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getWidth()I

    move-result v12

    if-lt v11, v12, :cond_4

    .line 1217
    :cond_b
    const/4 v5, 0x0

    .line 1218
    .restart local v5    # "foundFocus":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v2, :cond_c

    .line 1219
    add-int/lit8 v11, v8, -0x1

    sub-int v1, v11, v6

    .line 1220
    .restart local v1    # "childIndex":I
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->childHasFocus(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1221
    const/4 v5, 0x1

    .line 1225
    .end local v1    # "childIndex":I
    :cond_c
    if-nez v5, :cond_4

    .line 1228
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1230
    iget-object v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v12, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v0, v12}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->saveInvisibleView(Landroid/view/View;I)V

    .line 1231
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 1232
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    .line 1233
    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    .line 1228
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1213
    .end local v5    # "foundFocus":Z
    .end local v6    # "i":I
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_b

    goto/16 :goto_1

    .line 1218
    .restart local v1    # "childIndex":I
    .restart local v5    # "foundFocus":Z
    .restart local v6    # "i":I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method private recycleExpandableView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1140
    sget v1, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 1141
    .local v0, "holder":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    if-eqz v0, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mItemViewType:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    .line 1144
    :cond_0
    return-void
.end method

.method private requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "newFocus"    # Landroid/view/View;

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2147
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2148
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2149
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 673
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->copyFrom(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V

    .line 674
    iput v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    .line 675
    iput v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    .line 676
    iput-boolean v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    .line 677
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 678
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 679
    .local v3, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->close()V

    .line 680
    iget-object v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 681
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v5, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v6, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    .end local v3    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_0
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 684
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 685
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 686
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 687
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    .line 684
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 689
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V

    .line 690
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-virtual {v4, v5}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V

    .line 691
    iput v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 692
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 693
    iput-boolean v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 694
    return-void
.end method

.method private restoreLoadingState()V
    .locals 26

    .prologue
    .line 1659
    const/high16 v22, -0x80000000

    .line 1660
    .local v22, "viewLoc":I
    const/16 v18, 0x0

    .line 1661
    .local v18, "scrollPosition":F
    const/4 v9, -0x1

    .line 1662
    .local v9, "fillWindowLeft":I
    const/4 v10, -0x1

    .line 1663
    .local v10, "fillWindowRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasFocus()Z

    move-result v12

    .line 1664
    .local v12, "hasFocus":Z
    const/4 v4, 0x0

    .local v4, "centerX":I
    const/4 v5, 0x0

    .line 1665
    .local v5, "centerY":I
    const/4 v7, 0x0

    .line 1666
    .local v7, "expandableChildStates":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1667
    .local v8, "expandedChildStates":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    move/from16 v23, v0

    if-ltz v23, :cond_2

    .line 1669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    move/from16 v19, v0

    .line 1670
    .local v19, "selection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    move/from16 v18, v0

    .line 1683
    :goto_0
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 1685
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 1686
    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v23

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1687
    :cond_0
    const-string v23, "ScrollAdapterView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "invalid selection "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    .end local v19    # "selection":I
    :cond_1
    :goto_1
    return-void

    .line 1671
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->isValid()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1673
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->heuristicGetPersistentIndex()I

    move-result v19

    .line 1674
    .restart local v19    # "selection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    move/from16 v22, v0

    goto :goto_0

    .line 1675
    .end local v19    # "selection":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    move/from16 v19, v0

    .line 1678
    .restart local v19    # "selection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 1693
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v23, v0

    rem-int v23, v19, v23

    sub-int v20, v19, v23

    .line 1695
    .local v20, "startIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 1697
    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move/from16 v13, v22

    .line 1699
    .local v13, "left":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v21

    .line 1706
    .local v21, "top":I
    :goto_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    .line 1707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    .line 1708
    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    .line 1709
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 1711
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillVisibleViewsInLayout()V

    .line 1712
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v6

    .line 1713
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_8

    .line 1714
    const-string v23, "ScrollAdapterView"

    const-string v24, "unable to restore selection view"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1697
    .end local v6    # "child":Landroid/view/View;
    .end local v13    # "left":I
    .end local v21    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v25, v0

    div-int v25, v19, v25

    mul-int v24, v24, v25

    add-int v13, v23, v24

    goto :goto_2

    .line 1701
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v13

    .line 1703
    .restart local v13    # "left":I
    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    move/from16 v21, v22

    .restart local v21    # "top":I
    :goto_4
    goto :goto_3

    .end local v21    # "top":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v25, v0

    div-int v25, v19, v25

    mul-int v24, v24, v25

    add-int v21, v23, v24

    goto :goto_4

    .line 1717
    .restart local v6    # "child":Landroid/view/View;
    .restart local v21    # "top":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->loadView(Landroid/view/View;I)V

    .line 1718
    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController;->getFinalX()I

    move-result v11

    .line 1723
    .local v11, "finalLocation":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1724
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v17

    .line 1725
    .local v17, "scrollCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v23

    move/from16 v0, v23

    if-gt v0, v11, :cond_e

    .line 1726
    :goto_6
    move/from16 v0, v17

    if-ge v0, v11, :cond_9

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v24, v0

    add-int v14, v23, v24

    .line 1728
    .local v14, "nextAdapterIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v16

    .line 1729
    .local v16, "nextView":Landroid/view/View;
    if-nez v16, :cond_c

    .line 1730
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1760
    .end local v14    # "nextAdapterIndex":I
    .end local v16    # "nextView":Landroid/view/View;
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_10

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollController;->setFinalX(I)V

    goto/16 :goto_1

    .line 1721
    .end local v11    # "finalLocation":I
    .end local v17    # "scrollCenter":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/pano/widget/ScrollController;->getFinalY()I

    move-result v11

    goto :goto_5

    .line 1733
    .restart local v11    # "finalLocation":I
    .restart local v14    # "nextAdapterIndex":I
    .restart local v16    # "nextView":Landroid/view/View;
    .restart local v17    # "scrollCenter":I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v16

    .line 1735
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v15

    .line 1736
    .local v15, "nextScrollCenter":I
    if-gt v15, v11, :cond_9

    .line 1739
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1740
    move/from16 v17, v15

    .line 1741
    goto :goto_6

    .line 1756
    :cond_d
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1757
    move/from16 v17, v15

    .line 1743
    .end local v14    # "nextAdapterIndex":I
    .end local v15    # "nextScrollCenter":I
    .end local v16    # "nextView":Landroid/view/View;
    :cond_e
    move/from16 v0, v17

    if-le v0, v11, :cond_9

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 1745
    .restart local v14    # "nextAdapterIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v16

    .line 1746
    .restart local v16    # "nextView":Landroid/view/View;
    if-nez v16, :cond_f

    .line 1747
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1750
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v16

    .line 1752
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v15

    .line 1753
    .restart local v15    # "nextScrollCenter":I
    if-ge v15, v11, :cond_d

    goto :goto_7

    .line 1763
    .end local v14    # "nextAdapterIndex":I
    .end local v15    # "nextScrollCenter":I
    .end local v16    # "nextView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollController;->setFinalY(I)V

    goto/16 :goto_1

    .line 1765
    .end local v11    # "finalLocation":I
    .end local v17    # "scrollCenter":I
    :cond_11
    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1768
    :cond_12
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1769
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 1772
    :cond_13
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectionInternal(IFZ)V

    goto/16 :goto_1
.end method

.method private scheduleScrollTask()V
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    if-nez v0, :cond_0

    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    .line 1040
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1042
    :cond_0
    return-void
.end method

.method private scrollStateTransition(Z)V
    .locals 9
    .param p1, "forceStopLongScroll"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 749
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-ne v0, v2, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 751
    .local v7, "currentFocusedChild":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v8

    .line 755
    .local v8, "index":I
    if-ltz v8, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-direct {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 757
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 761
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "currentFocusedChild":Landroid/view/View;
    .end local v8    # "index":I
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->getCurrVelocity()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 765
    :cond_1
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v8

    .line 766
    .restart local v8    # "index":I
    if-ltz v8, :cond_2

    .line 768
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-direct {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->getLastDirection()I

    move-result v2

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollAndFocusTo(Landroid/view/View;IZIZ)V

    .line 776
    .end local v8    # "index":I
    :cond_2
    :goto_0
    return-void

    .line 773
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    iput v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    goto :goto_0
.end method

.method private scrollTaskRunInternal()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1061
    iput-boolean v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    .line 1063
    iget-boolean v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    if-eqz v5, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    .line 1066
    :cond_0
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v5}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->invalidate()V

    .line 1068
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v4, :cond_2

    .line 1069
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    .line 1127
    :cond_2
    :goto_0
    return-void

    .line 1073
    :cond_3
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestLayout()V

    .line 1076
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    goto :goto_0

    .line 1079
    :cond_4
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->restoreLoadingState()V

    .line 1080
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->computeAndSetScrollPosition()V

    .line 1082
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v2, 0x1

    .line 1084
    .local v2, "noChildBeforeFill":Z
    :goto_1
    if-nez v2, :cond_5

    .line 1085
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 1086
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 1090
    :cond_5
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->pruneInvisibleViewsInLayout()V

    .line 1093
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillVisibleViewsInLayout()V

    .line 1095
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 1099
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 1100
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 1104
    :cond_6
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollStateTransition(Z)V

    .line 1108
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v0, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 1109
    .local v0, "index":I
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v1, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 1110
    .local v1, "mainPos":F
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v3, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 1111
    .local v3, "secondPos":F
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireScrollChange()V

    .line 1112
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1113
    const-string v4, "ScrollAdapterView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scroll event finished,  index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mainPos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " secondPos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_7
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->applyTransformations()V

    .line 1120
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1121
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    goto/16 :goto_0

    .end local v0    # "index":I
    .end local v1    # "mainPos":F
    .end local v2    # "noChildBeforeFill":Z
    .end local v3    # "secondPos":F
    :cond_8
    move v2, v4

    .line 1082
    goto/16 :goto_1

    .line 1124
    .restart local v0    # "index":I
    .restart local v1    # "mainPos":F
    .restart local v2    # "noChildBeforeFill":Z
    .restart local v3    # "secondPos":F
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->invalidate()V

    .line 1125
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    goto/16 :goto_0
.end method

.method private selectedItemCanScale()Z
    .locals 1

    .prologue
    .line 3381
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSelectionInternal(IFZ)V
    .locals 10
    .param p1, "adapterIndex"    # I
    .param p2, "scrollPosition"    # F
    .param p3, "fireEvent"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2384
    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v6}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v6

    if-ge p1, v6, :cond_0

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v6, p1}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2386
    :cond_0
    const-string v6, "ScrollAdapterView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid selection index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_1
    :goto_0
    return-void

    .line 2389
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v5

    .line 2390
    .local v5, "viewIndex":I
    iget-boolean v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v6

    if-lt v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 2392
    :cond_3
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 2393
    iput p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    .line 2394
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    goto :goto_0

    .line 2397
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2398
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v2

    .line 2399
    .local v2, "scrollCenter":I
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v3

    .line 2401
    .local v3, "scrollCenterOffAxis":I
    cmpl-float v6, p2, v8

    if-lez v6, :cond_5

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v6, v5

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2402
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 2403
    .local v1, "nextCenter":I
    sub-int v6, v1, v2

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v0, v6

    .line 2407
    .end local v1    # "nextCenter":I
    .local v0, "deltaMain":I
    :goto_1
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_6

    .line 2408
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    add-int v7, v2, v0

    invoke-virtual {v6, v7, v3}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    .line 2412
    :goto_2
    invoke-direct {p0, v4, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 2413
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 2414
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->applyTransformations()V

    .line 2415
    if-eqz p3, :cond_1

    .line 2416
    invoke-direct {p0, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 2417
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireScrollChange()V

    .line 2418
    cmpl-float v6, p2, v8

    if-nez v6, :cond_1

    .line 2419
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    goto :goto_0

    .line 2405
    .end local v0    # "deltaMain":I
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v0, v6

    .restart local v0    # "deltaMain":I
    goto :goto_1

    .line 2410
    :cond_6
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    add-int v7, v2, v0

    invoke-virtual {v6, v3, v7}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    goto :goto_2
.end method

.method private stopDragBy()V
    .locals 2

    .prologue
    .line 796
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 797
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 798
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->stopDrag()V

    .line 799
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 801
    :cond_0
    return-void
.end method

.method private transferFocusTo(Landroid/view/View;I)V
    .locals 3
    .param p1, "topItem"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2425
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2426
    .local v1, "oldSelection":Landroid/view/View;
    if-ne p1, v1, :cond_0

    .line 2439
    :goto_0
    return-void

    .line 2429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2431
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2432
    if-eqz p2, :cond_2

    .line 2433
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z

    .line 2438
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemSelected()V

    goto :goto_0

    .line 2435
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method private updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V
    .locals 4
    .param p1, "flingEv"    # Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .prologue
    .line 1931
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->time:J

    iget-wide v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFlingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1932
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    .line 1933
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    sget-object v1, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1934
    sget-object v0, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    .line 1939
    :cond_0
    :goto_0
    iget-wide v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->time:J

    iput-wide v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFlingTime:J

    .line 1940
    return-void

    .line 1937
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    goto :goto_0
.end method

.method private updateScrollInfo(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    .prologue
    const/4 v10, 0x0

    .line 2291
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v5

    .line 2292
    .local v5, "scrollCenter":I
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v6

    .line 2293
    .local v6, "scrollCenterOff":I
    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter(IIZ)I

    move-result v2

    .line 2295
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 2296
    const/4 v8, -0x1

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2299
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2300
    .local v7, "view":Landroid/view/View;
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v0

    .line 2301
    .local v0, "center":I
    if-le v5, v0, :cond_3

    .line 2302
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v8, v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 2303
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v3

    .line 2304
    .local v3, "nextCenter":I
    sub-int v8, v5, v0

    int-to-float v8, v8

    sub-int v9, v3, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 2323
    .end local v3    # "nextCenter":I
    :goto_1
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v1

    .line 2324
    .local v1, "centerOffAxis":I
    if-le v6, v1, :cond_7

    .line 2325
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 2326
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v3

    .line 2327
    .restart local v3    # "nextCenter":I
    sub-int v8, v6, v1

    int-to-float v8, v8

    sub-int v9, v3, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 2349
    .end local v3    # "nextCenter":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v8

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 2350
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    :goto_3
    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    .line 2351
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v8}, Lcom/google/android/pano/widget/ScrollAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2352
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget v9, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-interface {v8, v9}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    goto :goto_0

    .line 2307
    .end local v1    # "centerOffAxis":I
    :cond_2
    sub-int v8, v5, v0

    int-to-float v8, v8

    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_1

    .line 2309
    :cond_3
    if-ne v5, v0, :cond_4

    .line 2310
    iput v10, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_1

    .line 2312
    :cond_4
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v8, v2, v8

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v9

    if-lt v8, v9, :cond_5

    .line 2313
    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v2, v8

    .line 2314
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2315
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v4

    .line 2316
    .local v4, "previousCenter":I
    sub-int v8, v5, v4

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_1

    .line 2320
    .end local v4    # "previousCenter":I
    :cond_5
    sub-int v8, v5, v0

    int-to-float v8, v8

    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_1

    .line 2331
    .restart local v1    # "centerOffAxis":I
    :cond_6
    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSizeInOffAxis(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto :goto_2

    .line 2334
    :cond_7
    if-ne v6, v1, :cond_8

    .line 2335
    iput v10, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto :goto_2

    .line 2337
    :cond_8
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v9

    if-lt v8, v9, :cond_9

    .line 2338
    add-int/lit8 v2, v2, -0x1

    .line 2339
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2340
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v4

    .line 2341
    .restart local v4    # "previousCenter":I
    sub-int v8, v6, v4

    int-to-float v8, v8

    sub-int v9, v1, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto/16 :goto_2

    .line 2345
    .end local v4    # "previousCenter":I
    :cond_9
    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSizeInOffAxis(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto/16 :goto_2

    .line 2350
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    goto/16 :goto_3
.end method

.method private updateViewsLocations(Z)V
    .locals 65
    .param p1, "onLayout"    # Z

    .prologue
    .line 2666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v28

    .line 2667
    .local v28, "lastExpandable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    move-object/from16 v61, v0

    if-nez v61, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->selectedItemCanScale()Z

    move-result v61

    if-nez v61, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    move-object/from16 v61, v0

    if-eqz v61, :cond_1

    :cond_0
    if-nez v28, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v61

    if-nez v61, :cond_3

    .line 3009
    :cond_2
    return-void

    .line 2673
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v46

    .line 2674
    .local v46, "scrollCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v47

    .line 2676
    .local v47, "scrollCenterOffAxis":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2677
    .local v13, "expandedCount":I
    const/4 v7, -0x1

    .line 2678
    .local v7, "center":I
    const/16 v36, -0x1

    .line 2679
    .local v36, "nextCenter":I
    const/4 v11, -0x1

    .line 2680
    .local v11, "expandIdx":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v19

    .line 2681
    .local v19, "firstExpandable":I
    const/4 v5, 0x0

    .line 2682
    .local v5, "alignExtraOffset":I
    move/from16 v23, v19

    .local v23, "idx":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 2683
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2684
    .local v54, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v8

    .line 2685
    .local v8, "centerMain":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v9

    .line 2686
    .local v9, "centerOffAxis":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_6

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getHeight()I

    move-result v58

    .line 2687
    .local v58, "viewSizeOffAxis":I
    :goto_1
    move/from16 v0, v46

    if-gt v8, v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    const/16 v62, 0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v58

    invoke-direct {v0, v1, v2, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPositionSecondAxis(III)Z

    move-result v61

    if-eqz v61, :cond_5

    .line 2690
    :cond_4
    move/from16 v11, v23

    .line 2691
    move v7, v8

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    move-object/from16 v61, v0

    if-eqz v61, :cond_5

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v62

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;->getItemAlignmentExtraOffset(ILandroid/view/View;)I

    move-result v5

    .line 2682
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 2686
    .end local v58    # "viewSizeOffAxis":I
    :cond_6
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getWidth()I

    move-result v58

    goto :goto_1

    .line 2698
    .end local v8    # "centerMain":I
    .end local v9    # "centerOffAxis":I
    .end local v54    # "view":Landroid/view/View;
    :cond_7
    const/16 v61, -0x1

    move/from16 v0, v61

    if-eq v11, v0, :cond_2

    .line 2702
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    add-int v37, v11, v61

    .line 2703
    .local v37, "nextExpandIdx":I
    const/16 v35, 0x0

    .line 2704
    .local v35, "nextAlignExtraOffset":I
    move/from16 v0, v37

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    .line 2705
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 2706
    .local v41, "nextView":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v36

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    move-object/from16 v61, v0

    if-eqz v61, :cond_8

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v62

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;->getItemAlignmentExtraOffset(ILandroid/view/View;)I

    move-result v35

    .line 2714
    .end local v41    # "nextView":Landroid/view/View;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    sub-int v43, v11, v61

    .line 2715
    .local v43, "previousExpandIdx":I
    move/from16 v0, v43

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2716
    const/16 v43, -0x1

    .line 2720
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v60

    .line 2721
    .local v60, "xindex":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v51

    .line 2722
    .local v51, "thisExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    const/16 v38, 0x0

    .line 2723
    .local v38, "nextExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    const/16 v61, -0x1

    move/from16 v0, v37

    move/from16 v1, v61

    if-eq v0, v1, :cond_a

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v38

    .line 2727
    :cond_a
    const/16 v44, 0x0

    .line 2728
    .local v44, "previousExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    const/16 v61, -0x1

    move/from16 v0, v43

    move/from16 v1, v61

    if-eq v0, v1, :cond_b

    .line 2729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    sub-int v61, v60, v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v44

    .line 2733
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    sub-int v34, v61, v13

    .line 2734
    .local v34, "newExpandedAdded":I
    add-int v11, v11, v34

    .line 2735
    const/16 v61, -0x1

    move/from16 v0, v37

    move/from16 v1, v61

    if-eq v0, v1, :cond_c

    .line 2736
    add-int v37, v37, v34

    .line 2738
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v28

    .line 2742
    const/4 v14, 0x0

    .line 2743
    .local v14, "expandedSize":I
    const/16 v39, 0x0

    .line 2744
    .local v39, "nextExpandedSize":I
    const/high16 v45, 0x3f800000    # 1.0f

    .line 2745
    .local v45, "progress":F
    add-int/lit8 v61, v28, -0x1

    move/from16 v0, v61

    if-ge v11, v0, :cond_16

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v61

    sub-int v61, v36, v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    sub-int v62, v36, v7

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    div-float v45, v61, v62

    .line 2748
    if-eqz v51, :cond_d

    .line 2749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_14

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 2752
    :goto_3
    int-to-float v0, v14

    move/from16 v61, v0

    mul-float v61, v61, v45

    move/from16 v0, v61

    float-to-int v14, v0

    .line 2753
    move-object/from16 v0, v51

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    .line 2755
    :cond_d
    if-eqz v38, :cond_e

    .line 2756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_15

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    .line 2759
    :goto_4
    const/high16 v61, 0x3f800000    # 1.0f

    sub-float v61, v61, v45

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v62, v0

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v39, v0

    .line 2760
    const/high16 v61, 0x3f800000    # 1.0f

    sub-float v61, v61, v45

    move-object/from16 v0, v38

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    .line 2771
    :cond_e
    :goto_5
    add-int v52, v14, v39

    .line 2772
    .local v52, "totalExpandedSize":I
    const/16 v18, 0x0

    .local v18, "extraSpaceLow":I
    const/16 v17, 0x0

    .line 2774
    .local v17, "extraSpaceHigh":I
    const v29, 0x7fffffff

    .line 2775
    .local v29, "low":I
    const/4 v15, 0x0

    .line 2776
    .local v15, "expandedStart":I
    const/16 v40, 0x0

    .line 2777
    .local v40, "nextExpandedStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v61

    sub-int v61, v28, v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v62, v0

    add-int v61, v61, v62

    add-int/lit8 v61, v61, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v62, v0

    div-int v42, v61, v62

    .line 2779
    .local v42, "numOffAxis":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    move/from16 v61, v0

    if-eqz v61, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v61

    if-eqz v61, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    move-object/from16 v61, v0

    if-eqz v61, :cond_18

    const/4 v6, 0x1

    .line 2781
    .local v6, "canAnimateExpandedSize":Z
    :goto_6
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v42

    if-ge v0, v1, :cond_34

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v62, v0

    mul-int v62, v62, v26

    add-int v55, v61, v62

    .line 2783
    .local v55, "viewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v61, v0

    add-int v61, v61, v55

    add-int/lit8 v10, v61, -0x1

    .line 2784
    .local v10, "endViewIndex":I
    move/from16 v0, v28

    if-lt v10, v0, :cond_f

    .line 2785
    add-int/lit8 v10, v28, -0x1

    .line 2788
    :cond_f
    const/16 v33, 0x0

    .line 2789
    .local v33, "maxSize":I
    move/from16 v27, v55

    .local v27, "k":I
    :goto_8
    move/from16 v0, v27

    if-gt v0, v10, :cond_1c

    .line 2790
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2791
    .restart local v54    # "view":Landroid/view/View;
    sget v61, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2792
    .local v22, "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    if-eqz v6, :cond_10

    .line 2794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_19

    .line 2795
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    .line 2796
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    move/from16 v61, v0

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTranslationX()F

    move-result v62

    add-float v61, v61, v62

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    .line 2802
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_1a

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredWidth()I

    move-result v61

    :goto_a
    move/from16 v0, v33

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 2804
    if-nez v26, :cond_12

    .line 2805
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_1b

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v56

    .line 2807
    .local v56, "viewLow":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v61

    if-eqz v61, :cond_11

    .line 2808
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    move/from16 v61, v0

    sub-int v56, v56, v61

    .line 2810
    :cond_11
    move/from16 v0, v56

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 2811
    move/from16 v29, v56

    .line 2789
    .end local v56    # "viewLow":I
    :cond_12
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_8

    .line 2712
    .end local v6    # "canAnimateExpandedSize":Z
    .end local v10    # "endViewIndex":I
    .end local v14    # "expandedSize":I
    .end local v15    # "expandedStart":I
    .end local v17    # "extraSpaceHigh":I
    .end local v18    # "extraSpaceLow":I
    .end local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    .end local v26    # "j":I
    .end local v27    # "k":I
    .end local v29    # "low":I
    .end local v33    # "maxSize":I
    .end local v34    # "newExpandedAdded":I
    .end local v38    # "nextExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local v39    # "nextExpandedSize":I
    .end local v40    # "nextExpandedStart":I
    .end local v42    # "numOffAxis":I
    .end local v43    # "previousExpandIdx":I
    .end local v44    # "previousExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local v45    # "progress":F
    .end local v51    # "thisExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local v52    # "totalExpandedSize":I
    .end local v54    # "view":Landroid/view/View;
    .end local v55    # "viewIndex":I
    .end local v60    # "xindex":I
    :cond_13
    const/16 v37, -0x1

    goto/16 :goto_2

    .line 2749
    .restart local v14    # "expandedSize":I
    .restart local v34    # "newExpandedAdded":I
    .restart local v38    # "nextExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local v39    # "nextExpandedSize":I
    .restart local v43    # "previousExpandIdx":I
    .restart local v44    # "previousExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local v45    # "progress":F
    .restart local v51    # "thisExpanded":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local v60    # "xindex":I
    :cond_14
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto/16 :goto_3

    .line 2756
    :cond_15
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    goto/16 :goto_4

    .line 2763
    :cond_16
    if-eqz v51, :cond_e

    .line 2764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_17

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 2767
    :goto_c
    const/high16 v61, 0x3f800000    # 1.0f

    move-object/from16 v0, v51

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    goto/16 :goto_5

    .line 2764
    :cond_17
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto :goto_c

    .line 2779
    .restart local v15    # "expandedStart":I
    .restart local v17    # "extraSpaceHigh":I
    .restart local v18    # "extraSpaceLow":I
    .restart local v29    # "low":I
    .restart local v40    # "nextExpandedStart":I
    .restart local v42    # "numOffAxis":I
    .restart local v52    # "totalExpandedSize":I
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 2798
    .restart local v6    # "canAnimateExpandedSize":Z
    .restart local v10    # "endViewIndex":I
    .restart local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    .restart local v26    # "j":I
    .restart local v27    # "k":I
    .restart local v33    # "maxSize":I
    .restart local v54    # "view":Landroid/view/View;
    .restart local v55    # "viewIndex":I
    :cond_19
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    .line 2799
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    move/from16 v61, v0

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTranslationY()F

    move-result v62

    add-float v61, v61, v62

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    goto/16 :goto_9

    .line 2802
    :cond_1a
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredHeight()I

    move-result v61

    goto/16 :goto_a

    .line 2805
    :cond_1b
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v56

    goto/16 :goto_b

    .line 2816
    .end local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    .end local v54    # "view":Landroid/view/View;
    :cond_1c
    const/high16 v32, -0x80000000

    .line 2817
    .local v32, "maxSelectedSize":I
    add-int v31, v29, v33

    .line 2818
    .local v31, "maxHigh":I
    move/from16 v27, v55

    :goto_d
    move/from16 v0, v27

    if-gt v0, v10, :cond_22

    .line 2819
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2820
    .restart local v54    # "view":Landroid/view/View;
    move/from16 v59, v29

    .line 2821
    .local v59, "viewStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_1e

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredWidth()I

    move-result v57

    .line 2823
    .local v57, "viewMeasuredSize":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v61

    packed-switch v61, :pswitch_data_0

    .line 2833
    :goto_f
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_20

    .line 2834
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->isLayoutRequested()Z

    move-result v61

    if-eqz v61, :cond_1f

    .line 2835
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2836
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v61

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredWidth()I

    move-result v62

    add-int v62, v62, v59

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v63

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredHeight()I

    move-result v64

    add-int v63, v63, v64

    move-object/from16 v0, v54

    move/from16 v1, v59

    move/from16 v2, v61

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2850
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->selectedItemCanScale()Z

    move-result v61

    if-eqz v61, :cond_1d

    .line 2851
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemSize(ILandroid/view/View;)I

    move-result v61

    move/from16 v0, v32

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 2818
    :cond_1d
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 2821
    .end local v57    # "viewMeasuredSize":I
    :cond_1e
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredHeight()I

    move-result v57

    goto :goto_e

    .line 2825
    .restart local v57    # "viewMeasuredSize":I
    :pswitch_1
    div-int/lit8 v61, v33, 0x2

    div-int/lit8 v62, v57, 0x2

    sub-int v61, v61, v62

    add-int v59, v59, v61

    .line 2826
    goto :goto_f

    .line 2828
    :pswitch_2
    sub-int v61, v33, v57

    add-int v59, v59, v61

    .line 2829
    goto :goto_f

    .line 2839
    :cond_1f
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v61

    sub-int v61, v59, v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_10

    .line 2842
    :cond_20
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->isLayoutRequested()Z

    move-result v61

    if-eqz v61, :cond_21

    .line 2843
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2844
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v61

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v62

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredWidth()I

    move-result v63

    add-int v62, v62, v63

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getMeasuredHeight()I

    move-result v63

    add-int v63, v63, v59

    move-object/from16 v0, v54

    move/from16 v1, v61

    move/from16 v2, v59

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_10

    .line 2847
    :cond_21
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v61

    sub-int v61, v59, v61

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_10

    .line 2856
    .end local v54    # "view":Landroid/view/View;
    .end local v57    # "viewMeasuredSize":I
    .end local v59    # "viewStart":I
    :cond_22
    move/from16 v27, v55

    :goto_11
    move/from16 v0, v27

    if-gt v0, v10, :cond_23

    .line 2857
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2858
    .restart local v54    # "view":Landroid/view/View;
    sget v61, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2859
    .restart local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    .line 2860
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    .line 2861
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->computeScrollCenter(I)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    .line 2856
    add-int/lit8 v27, v27, 0x1

    goto :goto_11

    .line 2863
    .end local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    .end local v54    # "view":Landroid/view/View;
    :cond_23
    move/from16 v0, v55

    if-gt v0, v11, :cond_26

    if-gt v11, v10, :cond_26

    const/16 v24, 0x1

    .line 2864
    .local v24, "isTransitionFrom":Z
    :goto_12
    move/from16 v0, v55

    move/from16 v1, v37

    if-gt v0, v1, :cond_27

    move/from16 v0, v37

    if-gt v0, v10, :cond_27

    const/16 v25, 0x1

    .line 2866
    .local v25, "isTransitionTo":Z
    :goto_13
    const/high16 v61, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v61

    if-eq v0, v1, :cond_2b

    .line 2867
    const/16 v16, 0x0

    .line 2868
    .local v16, "extraSpace":I
    if-eqz v24, :cond_28

    .line 2869
    sub-int v61, v32, v33

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    mul-float v61, v61, v45

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2873
    :cond_24
    :goto_14
    if-lez v16, :cond_2b

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v61

    if-eqz v61, :cond_29

    .line 2876
    add-int v31, v31, v16

    .line 2877
    add-int v52, v52, v16

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v61

    packed-switch v61, :pswitch_data_1

    .line 2887
    :pswitch_3
    const/16 v30, 0x0

    .line 2895
    .local v30, "lowExtraSpace":I
    :goto_15
    add-int v18, v18, v30

    .line 2896
    sub-int v61, v16, v30

    add-int v17, v17, v61

    .line 2897
    move/from16 v27, v55

    :goto_16
    move/from16 v0, v27

    if-gt v0, v10, :cond_2b

    .line 2898
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2899
    .restart local v54    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v61

    if-eqz v61, :cond_25

    .line 2900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_2a

    .line 2901
    move-object/from16 v0, v54

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2905
    :goto_17
    sget v61, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2907
    .restart local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    .line 2897
    .end local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    :cond_25
    add-int/lit8 v27, v27, 0x1

    goto :goto_16

    .line 2863
    .end local v16    # "extraSpace":I
    .end local v24    # "isTransitionFrom":Z
    .end local v25    # "isTransitionTo":Z
    .end local v30    # "lowExtraSpace":I
    .end local v54    # "view":Landroid/view/View;
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_12

    .line 2864
    .restart local v24    # "isTransitionFrom":Z
    :cond_27
    const/16 v25, 0x0

    goto/16 :goto_13

    .line 2870
    .restart local v16    # "extraSpace":I
    .restart local v25    # "isTransitionTo":Z
    :cond_28
    if-eqz v25, :cond_24

    .line 2871
    sub-int v61, v32, v33

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    const/high16 v62, 0x3f800000    # 1.0f

    sub-float v62, v62, v45

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_14

    .line 2880
    :pswitch_4
    div-int/lit8 v30, v16, 0x2

    .line 2881
    .restart local v30    # "lowExtraSpace":I
    goto :goto_15

    .line 2883
    .end local v30    # "lowExtraSpace":I
    :pswitch_5
    move/from16 v30, v16

    .line 2884
    .restart local v30    # "lowExtraSpace":I
    goto :goto_15

    .line 2893
    .end local v30    # "lowExtraSpace":I
    :cond_29
    div-int/lit8 v30, v16, 0x2

    .restart local v30    # "lowExtraSpace":I
    goto :goto_15

    .line 2903
    .restart local v54    # "view":Landroid/view/View;
    :cond_2a
    move-object/from16 v0, v54

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_17

    .line 2913
    .end local v16    # "extraSpace":I
    .end local v30    # "lowExtraSpace":I
    .end local v54    # "view":Landroid/view/View;
    :cond_2b
    if-eqz v6, :cond_2f

    .line 2914
    move/from16 v27, v55

    :goto_18
    move/from16 v0, v27

    if-gt v0, v10, :cond_2f

    .line 2915
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v54

    .line 2916
    .restart local v54    # "view":Landroid/view/View;
    sget v61, Lcom/google/android/pano/R$id;->ScrollAdapterViewChild:I

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2917
    .restart local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_2d

    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getLeft()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v50, v0

    .line 2918
    .local v50, "target":F
    :goto_19
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    move/from16 v61, v0

    cmpl-float v61, v61, v50

    if-eqz v61, :cond_2c

    .line 2919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_2e

    .line 2920
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    move/from16 v61, v0

    sub-float v61, v61, v50

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2921
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v61

    const/16 v62, 0x0

    invoke-virtual/range {v61 .. v62}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2914
    :cond_2c
    :goto_1a
    add-int/lit8 v27, v27, 0x1

    goto :goto_18

    .line 2917
    .end local v50    # "target":F
    :cond_2d
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->getTop()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v50, v0

    goto :goto_19

    .line 2923
    .restart local v50    # "target":F
    :cond_2e
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    move/from16 v61, v0

    sub-float v61, v61, v50

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2924
    invoke-virtual/range {v54 .. v54}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v61

    const/16 v62, 0x0

    invoke-virtual/range {v61 .. v62}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1a

    .line 2930
    .end local v22    # "h":Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
    .end local v50    # "target":F
    .end local v54    # "view":Landroid/view/View;
    :cond_2f
    if-eqz v24, :cond_32

    .line 2931
    move/from16 v15, v31

    .line 2933
    const/high16 v61, 0x3f800000    # 1.0f

    cmpl-float v61, v45, v61

    if-nez v61, :cond_31

    move/from16 v61, v14

    :goto_1b
    add-int v31, v31, v61

    .line 2939
    :cond_30
    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    move/from16 v61, v0

    add-int v29, v31, v61

    .line 2781
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 2933
    :cond_31
    const/16 v61, 0x0

    goto :goto_1b

    .line 2934
    :cond_32
    if-eqz v25, :cond_30

    .line 2935
    move/from16 v40, v31

    .line 2936
    const/high16 v61, 0x3f800000    # 1.0f

    cmpl-float v61, v45, v61

    if-nez v61, :cond_33

    move/from16 v61, v39

    :goto_1d
    add-int v31, v31, v61

    goto :goto_1c

    :cond_33
    add-int v61, v14, v39

    goto :goto_1d

    .line 2941
    .end local v10    # "endViewIndex":I
    .end local v24    # "isTransitionFrom":Z
    .end local v25    # "isTransitionTo":Z
    .end local v27    # "k":I
    .end local v31    # "maxHigh":I
    .end local v32    # "maxSelectedSize":I
    .end local v33    # "maxSize":I
    .end local v55    # "viewIndex":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    int-to-float v0, v5

    move/from16 v62, v0

    mul-float v62, v62, v45

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v63, v0

    const/high16 v64, 0x3f800000    # 1.0f

    sub-float v64, v64, v45

    mul-float v63, v63, v64

    add-float v62, v62, v63

    move/from16 v0, v62

    float-to-int v0, v0

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Lcom/google/android/pano/widget/ScrollController$Axis;->setAlignExtraOffset(I)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExpandedSize(I)V

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExtraSpaceLow(I)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExtraSpaceHigh(I)V

    .line 2948
    const/16 v26, 0x0

    :goto_1e
    move/from16 v0, v26

    if-ge v0, v13, :cond_37

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2951
    .local v53, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    move-object/from16 v0, v53

    move-object/from16 v1, v51

    if-eq v0, v1, :cond_36

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_36

    move-object/from16 v0, v53

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_36

    .line 2952
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->hasFocus()Z

    move-result v61

    if-eqz v61, :cond_35

    .line 2953
    move-object/from16 v0, v53

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2954
    .local v12, "expandableView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 2956
    .end local v12    # "expandableView":Landroid/view/View;
    :cond_35
    invoke-virtual/range {v53 .. v53}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->close()V

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    move-object/from16 v61, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v62, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    move/from16 v63, v0

    invoke-virtual/range {v61 .. v63}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->saveInvisibleView(Landroid/view/View;I)V

    .line 2958
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    move-object/from16 v61, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v62, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    move/from16 v63, v0

    invoke-virtual/range {v61 .. v63}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2961
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1e

    .line 2963
    :cond_36
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1e

    .line 2966
    .end local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_37
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v48

    .local v48, "size":I
    :goto_1f
    move/from16 v0, v26

    move/from16 v1, v48

    if-ge v0, v1, :cond_3e

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2968
    .restart local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    move-object/from16 v0, v53

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_3b

    move/from16 v49, v15

    .line 2969
    .local v49, "start":I
    :goto_20
    move-object/from16 v0, v53

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_39

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_38

    const/high16 v61, 0x3f800000    # 1.0f

    cmpl-float v61, v45, v61

    if-eqz v61, :cond_39

    .line 2970
    :cond_38
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-virtual/range {v61 .. v62}, Landroid/view/View;->setVisibility(I)V

    .line 2972
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v61, v0

    if-nez v61, :cond_3c

    .line 2973
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->isLayoutRequested()Z

    move-result v61

    if-eqz v61, :cond_3a

    .line 2974
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2976
    :cond_3a
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/view/View;->getMeasuredWidth()I

    move-result v63

    add-int v63, v63, v49

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getMeasuredHeight()I

    move-result v64

    move-object/from16 v0, v61

    move/from16 v1, v49

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2966
    :goto_21
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1f

    .end local v49    # "start":I
    :cond_3b
    move/from16 v49, v40

    .line 2968
    goto :goto_20

    .line 2979
    .restart local v49    # "start":I
    :cond_3c
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->isLayoutRequested()Z

    move-result v61

    if-eqz v61, :cond_3d

    .line 2980
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2982
    :cond_3d
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/view/View;->getMeasuredWidth()I

    move-result v63

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getMeasuredHeight()I

    move-result v64

    add-int v64, v64, v49

    move-object/from16 v0, v61

    move/from16 v1, v62

    move/from16 v2, v49

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_21

    .line 2986
    .end local v49    # "start":I
    .end local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_3e
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_22
    move/from16 v0, v26

    move/from16 v1, v48

    if-ge v0, v1, :cond_42

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2988
    .restart local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    move-object/from16 v0, v53

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_41

    move/from16 v49, v15

    .line 2989
    .restart local v49    # "start":I
    :goto_23
    move-object/from16 v0, v53

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_40

    const/high16 v61, 0x3f800000    # 1.0f

    cmpl-float v61, v45, v61

    if-nez v61, :cond_40

    .line 2990
    :cond_3f
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    const/16 v62, 0x4

    invoke-virtual/range {v61 .. v62}, Landroid/view/View;->setVisibility(I)V

    .line 2986
    :cond_40
    add-int/lit8 v26, v26, 0x1

    goto :goto_22

    .end local v49    # "start":I
    :cond_41
    move/from16 v49, v40

    .line 2988
    goto :goto_23

    .line 2996
    .end local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasFocus()Z

    move-result v61

    if-eqz v61, :cond_2

    .line 2997
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v20

    .line 2998
    .local v20, "focusedChild":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v21

    .line 2999
    .local v21, "focusedIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v61

    move/from16 v0, v21

    move/from16 v1, v61

    if-lt v0, v1, :cond_2

    .line 3000
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v48

    :goto_24
    move/from16 v0, v26

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 3002
    .restart local v53    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    move-object/from16 v0, v53

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v61

    move/from16 v0, v61

    move/from16 v1, v21

    if-ne v0, v1, :cond_43

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->getVisibility()I

    move-result v61

    if-nez v61, :cond_43

    .line 3004
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/View;->requestFocus()Z

    .line 3000
    :cond_43
    add-int/lit8 v26, v26, 0x1

    goto :goto_24

    .line 2823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2878
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addOnScrollListener(Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;)V
    .locals 1
    .param p1, "onScrollListener"    # Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3297
    :cond_0
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v1, 0x200000

    .line 1922
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->deliverGenericMotionEvent(Landroid/view/MotionEvent;)V

    .line 1925
    const/4 v0, 0x1

    .line 1927
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 2038
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 2042
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dragBy(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->dragBy(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 790
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 792
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1019
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 1020
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->drawVisualIndicator(Landroid/graphics/Canvas;)V

    .line 1021
    return-void
.end method

.method public firstExpandableIndex()I
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public fling(FF)V
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController;->fling(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 782
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 784
    :cond_0
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2527
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return v2

    .line 2530
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2531
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2532
    .local v0, "lastChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2533
    .local v1, "maxEdge":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    .line 2537
    .end local v0    # "lastChild":Landroid/view/View;
    .end local v1    # "maxEdge":I
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1460
    const v1, 0x7fffffff

    .line 1461
    .local v1, "minDistance":I
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    if-gez v2, :cond_1

    const/4 v0, -0x1

    .line 1463
    .local v0, "focusIndex":I
    :goto_0
    if-gez v0, :cond_2

    .line 1473
    .end local p2    # "i":I
    :cond_0
    :goto_1
    return p2

    .line 1461
    .end local v0    # "focusIndex":I
    .restart local p2    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    goto :goto_0

    .line 1468
    .restart local v0    # "focusIndex":I
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1470
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_3

    .line 1471
    add-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    sub-int p2, v2, p2

    goto :goto_1

    :cond_3
    move p2, v0

    .line 1473
    goto :goto_1
.end method

.method getExpandableChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2599
    if-eqz p1, :cond_0

    .line 2600
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2601
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2602
    .local v2, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2603
    iget v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2607
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    return-object p1

    .line 2600
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getExpandableView(I)Landroid/view/View;
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 2579
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    .line 806
    .local v0, "first":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    goto :goto_0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    .line 965
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 966
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsForFling(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)I
    .locals 7
    .param p1, "flingEv"    # Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .prologue
    const/16 v6, 0x11

    const/4 v3, 0x1

    .line 1943
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    .line 1946
    .local v0, "direction":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1947
    .local v1, "firstChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1948
    const/4 v2, 0x0

    .line 1976
    :cond_0
    :goto_0
    return v2

    .line 1950
    :cond_1
    const/4 v2, 0x0

    .line 1951
    .local v2, "pageItems":I
    if-eq v0, v6, :cond_2

    const/16 v4, 0x42

    if-ne v0, v4, :cond_5

    .line 1952
    :cond_2
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v4, :cond_3

    .line 1953
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v4, v4, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSizeForExpandableItem()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1955
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V

    .line 1956
    sget-object v4, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    aget v4, v4, v5

    mul-int/2addr v2, v4

    .line 1957
    if-ne v0, v6, :cond_4

    .line 1958
    iget v4, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    add-int/2addr v2, v4

    .line 1976
    :cond_3
    :goto_1
    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1960
    :cond_4
    iget v4, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    sub-int/2addr v2, v4

    goto :goto_1

    .line 1964
    :cond_5
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v4, v3, :cond_3

    .line 1965
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v4, v4, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSizeForExpandableItem()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1967
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V

    .line 1968
    sget-object v4, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    aget v4, v4, v5

    mul-int/2addr v2, v4

    .line 1969
    const/16 v4, 0x21

    if-ne v0, v4, :cond_6

    .line 1970
    iget v4, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    add-int/2addr v2, v4

    goto :goto_1

    .line 1972
    :cond_6
    iget v4, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    sub-int/2addr v2, v4

    goto :goto_1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    .line 812
    .local v0, "last":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2512
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2522
    :cond_0
    :goto_0
    return v2

    .line 2515
    :cond_1
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2516
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2517
    .local v0, "lastChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2518
    .local v1, "maxEdge":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    .line 2522
    .end local v0    # "lastChild":Landroid/view/View;
    .end local v1    # "maxEdge":I
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSelectedExpandedView()Landroid/view/View;
    .locals 3

    .prologue
    .line 929
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v0

    .line 930
    .local v0, "ev":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    goto :goto_0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 949
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 950
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 4

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 955
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v3, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 957
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 960
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-wide v1

    .line 958
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleArrowKey(IIZZ)Z
    .locals 22
    .param p1, "direction"    # I
    .param p2, "repeats"    # I
    .param p3, "forceFindNextExpandable"    # Z
    .param p4, "page"    # Z

    .prologue
    .line 2154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v12

    .line 2155
    .local v12, "currentTop":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 2156
    .local v10, "currentExpandable":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 2157
    .local v14, "focused":Landroid/view/View;
    if-ne v12, v10, :cond_0

    if-eqz v14, :cond_0

    if-nez p3, :cond_0

    .line 2159
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 2160
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    if-eq v0, v14, :cond_0

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2161
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z

    .line 2162
    const/4 v3, 0x1

    .line 2259
    .end local v20    # "v":Landroid/view/View;
    :goto_0
    return v3

    .line 2165
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->isDirectionGrowing(I)Z

    move-result v15

    .line 2166
    .local v15, "isGrowing":Z
    const/16 v16, 0x0

    .line 2167
    .local v16, "isOnOffAxis":Z
    const/16 v3, 0x42

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/16 v3, 0x11

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 2168
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    const/16 v16, 0x1

    .line 2173
    :cond_2
    :goto_1
    if-eq v12, v10, :cond_8

    if-nez p3, :cond_8

    .line 2175
    instance-of v3, v12, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    move-object v3, v12

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findFocus()Landroid/view/View;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v5, v3, v6, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 2178
    .local v18, "nextFocused":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getTopItem(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 2179
    .local v4, "nextTop":Landroid/view/View;
    if-ne v4, v12, :cond_8

    .line 2182
    const/4 v3, 0x0

    goto :goto_0

    .line 2168
    .end local v4    # "nextTop":Landroid/view/View;
    .end local v18    # "nextFocused":Landroid/view/View;
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 2169
    :cond_4
    const/16 v3, 0x82

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    const/16 v3, 0x21

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 2170
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_6

    const/16 v16, 0x1

    :goto_3
    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 2175
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .line 2187
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v11

    .line 2188
    .local v11, "currentExpandableIndex":I
    if-gez v11, :cond_9

    .line 2189
    const/4 v3, 0x0

    goto :goto_0

    .line 2191
    :cond_9
    const/4 v4, 0x0

    .line 2192
    .restart local v4    # "nextTop":Landroid/view/View;
    if-eqz v16, :cond_f

    .line 2193
    if-eqz v15, :cond_c

    add-int/lit8 v3, v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v5

    if-ge v3, v5, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_c

    .line 2196
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2255
    :cond_a
    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollAndFocusTo(Landroid/view/View;IZIZ)V

    .line 2256
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPlaySoundEffects:Z

    if-eqz v3, :cond_b

    .line 2257
    invoke-static/range {p1 .. p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->playSoundEffect(I)V

    .line 2259
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2197
    :cond_c
    if-nez v15, :cond_d

    add-int/lit8 v3, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v5

    if-lt v3, v5, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 2199
    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .line 2201
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2204
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v9

    .line 2205
    .local v9, "adapterIndex":I
    move v13, v9

    .line 2206
    .local v13, "focusAdapterIndex":I
    add-int/lit8 v19, p2, 0x1

    .local v19, "totalCount":I
    :cond_10
    :goto_5
    if-lez v19, :cond_18

    .line 2207
    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int v17, v13, v3

    .line 2209
    .local v17, "nextFocusAdapterIndex":I
    :goto_6
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3}, Lcom/google/android/pano/widget/ScrollAdapter;->getCount()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    :cond_11
    if-nez v15, :cond_17

    if-gez v17, :cond_17

    .line 2211
    :cond_12
    if-eq v13, v9, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3, v13}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2213
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    if-eqz v3, :cond_14

    .line 2214
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2216
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2217
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 2220
    .end local v21    # "view":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2207
    .end local v17    # "nextFocusAdapterIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v17, v13, v3

    goto :goto_6

    .line 2220
    .restart local v17    # "nextFocusAdapterIndex":I
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2225
    :cond_17
    move/from16 v13, v17

    .line 2226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3, v13}, Lcom/google/android/pano/widget/ScrollAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2227
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 2230
    .end local v17    # "nextFocusAdapterIndex":I
    :cond_18
    if-eqz v15, :cond_1c

    .line 2232
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    if-gt v13, v3, :cond_1b

    .line 2233
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2237
    :goto_7
    if-nez v4, :cond_1a

    .line 2238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2251
    :cond_1a
    :goto_8
    if-nez v4, :cond_a

    .line 2252
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2236
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_7

    .line 2242
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    if-lt v13, v3, :cond_1d

    .line 2243
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2247
    :goto_9
    if-nez v4, :cond_1a

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_8

    .line 2246
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_9
.end method

.method protected internalKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2046
    packed-switch p1, :pswitch_data_0

    .line 2068
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2048
    :pswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2053
    :pswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2058
    :pswitch_2
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2063
    :pswitch_3
    const/16 v1, 0x82

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2046
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lastExpandableIndex()I
    .locals 1

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 1004
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v2, v2, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1007
    .local v0, "offsetX":I
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v2, v2, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 1009
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1011
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1012
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1013
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1015
    .end local v0    # "offsetX":I
    .end local v1    # "offsetY":I
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    .line 2074
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->internalKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2079
    sparse-switch p1, :sswitch_data_0

    .line 2096
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2082
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2083
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v6

    .line 2084
    .local v6, "index":I
    invoke-virtual {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2085
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2086
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    .line 2087
    .local v3, "adapterIndex":I
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v1, v3}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2089
    const/4 v0, 0x1

    goto :goto_0

    .line 2079
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1033
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1034
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 1035
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-nez v15, :cond_1

    .line 1379
    const-string v15, "ScrollAdapterView"

    const-string v16, "onMeasure: Adapter not available "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 1453
    .end local p2    # "heightMeasureSpec":I
    :cond_0
    return-void

    .line 1383
    .restart local p2    # "heightMeasureSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v15, v15, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingRight()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/ScrollController$Axis;->setPadding(II)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v15, v15, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingBottom()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/pano/widget/ScrollController$Axis;->setPadding(II)V

    .line 1386
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 1387
    .local v13, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1388
    .local v4, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 1389
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1390
    .local v5, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingRight()I

    move-result v16

    sub-int v3, v15, v16

    .line 1391
    .local v3, "clientWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v15

    sub-int v15, v5, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 1393
    .local v2, "clientHeightSize":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/pano/widget/ScrollAdapter;->getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1395
    .local v8, "scrapView":Landroid/view/View;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v8, v15, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureScrapChild(Landroid/view/View;II)V

    .line 1396
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    .line 1397
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    .line 1400
    .end local v8    # "scrapView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    if-lez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    .line 1404
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-nez v15, :cond_3

    .line 1405
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    .line 1408
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 1409
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 1413
    :cond_4
    if-eqz v13, :cond_5

    const/high16 v15, -0x80000000

    if-ne v13, v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1415
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    mul-int v16, v16, v17

    add-int v11, v15, v16

    .line 1417
    .local v11, "size":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v11, v15

    .line 1418
    const/high16 v15, -0x80000000

    if-ne v13, v15, :cond_e

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1424
    .end local v11    # "size":I
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    const/high16 v15, -0x80000000

    if-ne v4, v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v15, :cond_8

    .line 1426
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    mul-int v16, v16, v17

    add-int v11, v15, v16

    .line 1428
    .restart local v11    # "size":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v11, v15

    .line 1429
    const/high16 v15, -0x80000000

    if-ne v4, v15, :cond_10

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1431
    .end local v11    # "size":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v15, :cond_11

    .end local p2    # "heightMeasureSpec":I
    :goto_5
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 1433
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->setMeasuredDimension(II)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v10

    .line 1437
    .local v10, "scrollMin":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v15, :cond_12

    .end local v5    # "heightSize":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingHigh()I

    move-result v15

    sub-int v9, v5, v15

    .line 1439
    .local v9, "scrollMax":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v15

    invoke-virtual {v15, v10, v10}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMin(II)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v15

    invoke-virtual {v15, v9, v9}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMax(II)V

    .line 1442
    const/4 v7, 0x0

    .local v7, "j":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .restart local v11    # "size":I
    :goto_7
    if-ge v7, v11, :cond_13

    .line 1443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 1444
    .local v12, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget-object v15, v12, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 1442
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1400
    .end local v7    # "j":I
    .end local v9    # "scrollMax":I
    .end local v10    # "scrollMin":I
    .end local v11    # "size":I
    .end local v12    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .restart local v5    # "heightSize":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v15, :cond_b

    if-nez v4, :cond_a

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    div-int v15, v2, v15

    goto/16 :goto_0

    :cond_b
    if-nez v13, :cond_c

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    div-int v15, v3, v15

    goto/16 :goto_0

    .line 1415
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    goto/16 :goto_1

    .restart local v11    # "size":I
    :cond_e
    move v14, v11

    .line 1418
    goto/16 :goto_2

    .line 1426
    .end local v11    # "size":I
    :cond_f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    goto/16 :goto_3

    .restart local v11    # "size":I
    :cond_10
    move v5, v11

    .line 1429
    goto/16 :goto_4

    .end local v11    # "size":I
    :cond_11
    move/from16 p2, p1

    .line 1431
    goto/16 :goto_5

    .end local p2    # "heightMeasureSpec":I
    .restart local v10    # "scrollMin":I
    :cond_12
    move v5, v14

    .line 1437
    goto :goto_6

    .line 1447
    .end local v5    # "heightSize":I
    .restart local v7    # "j":I
    .restart local v9    # "scrollMax":I
    .restart local v11    # "size":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v6

    .local v6, "i":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v15

    if-ge v6, v15, :cond_0

    .line 1448
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1449
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->isLayoutRequested()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1450
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 1447
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_8
.end method

.method public onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 14
    .param p1, "event"    # Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x4

    const/4 v8, 0x1

    const v12, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    .line 1981
    iget v10, p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    move v7, v9

    .line 2033
    :goto_1
    return v7

    :sswitch_0
    move-object v4, p1

    .line 1983
    check-cast v4, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 1984
    .local v4, "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getItemsForFling(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)I

    move-result v5

    .line 1985
    .local v5, "pageItems":I
    iget v7, v4, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v7, v10, v9, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 1986
    goto :goto_1

    .line 1990
    .end local v4    # "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    .end local v5    # "pageItems":I
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    goto :goto_0

    .line 1993
    :sswitch_2
    iget-boolean v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    if-eqz v10, :cond_0

    move-object v6, p1

    .line 1996
    check-cast v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    .line 1997
    .local v6, "tiltEv":Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;
    iget-object v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v10}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-ne v10, v13, :cond_0

    .line 2000
    :cond_1
    const/4 v2, 0x0

    .local v2, "dragX":F
    const/4 v3, 0x0

    .line 2001
    .local v3, "dragY":F
    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-le v10, v8, :cond_4

    .line 2002
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 2003
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float v3, v10, v12

    .line 2014
    :goto_2
    cmpl-float v10, v2, v7

    if-nez v10, :cond_2

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_0

    .line 2015
    :cond_2
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-eq v7, v13, :cond_8

    .line 2017
    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    .line 2018
    iput v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    .line 2019
    iput v13, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    :goto_3
    move v7, v8

    .line 2029
    goto :goto_1

    .line 2005
    :cond_3
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float v2, v10, v12

    goto :goto_2

    .line 2007
    :cond_4
    iget v10, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v10, :cond_6

    .line 2008
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    move v2, v7

    :goto_4
    goto :goto_2

    :cond_5
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float v2, v10, v12

    goto :goto_4

    .line 2011
    :cond_6
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    move v3, v7

    :goto_5
    goto :goto_2

    :cond_7
    iget v10, v6, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    iget v11, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float v3, v10, v12

    goto :goto_5

    .line 2021
    :cond_8
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    sub-float v0, v2, v7

    .line 2022
    .local v0, "dragDeltaX":F
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    sub-float v1, v3, v7

    .line 2023
    .local v1, "dragDeltaY":F
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v7, v0, v1}, Lcom/google/android/pano/widget/ScrollController;->dragBy(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2024
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 2026
    :cond_9
    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    .line 2027
    iput v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    goto :goto_3

    .line 1981
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedExpandedView()Landroid/view/View;

    move-result-object v0

    .line 3014
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3015
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3021
    :goto_0
    return v1

    .line 3017
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3018
    if-eqz v0, :cond_1

    .line 3019
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 3021
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3205
    instance-of v1, p1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    if-nez v1, :cond_0

    .line 3206
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3213
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 3209
    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    .line 3210
    .local v0, "ss":Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3211
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 3212
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 3186
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 3187
    .local v3, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3188
    .local v2, "ss":Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    .line 3189
    .local v1, "lastIndex":I
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v0

    .line 3190
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 3200
    .end local v3    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v3

    .line 3193
    .restart local v3    # "superState":Landroid/os/Parcelable;
    :cond_0
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->saveVisibleViews()V

    .line 3194
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->saveVisibleViews()V

    .line 3195
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    iput v6, v5, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    .line 3196
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v6

    iput v6, v5, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    .line 3197
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3198
    .local v4, "view":Landroid/view/View;
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->getChildStates()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    .line 3199
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->getChildStates()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    move-object v3, v2

    .line 3200
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSize(I)V

    .line 981
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSize(I)V

    .line 982
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 983
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1132
    .local v0, "receiveFocus":Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1133
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 1137
    :cond_0
    return-void

    .line 1131
    .end local v0    # "receiveFocus":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollAndFocusTo(Landroid/view/View;IZIZ)V
    .locals 6
    .param p1, "topItem"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "easeFling"    # Z
    .param p4, "duration"    # I
    .param p5, "page"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2444
    if-nez p1, :cond_0

    .line 2445
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 2464
    :goto_0
    return-void

    .line 2448
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v4

    sub-int v1, v3, v4

    .line 2449
    .local v1, "delta":I
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v2, v0

    .line 2451
    .local v2, "deltaOffAxis":I
    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 2452
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 2453
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/pano/widget/ScrollController;->startScrollByMain(IIZIZ)V

    .line 2461
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 2463
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    goto :goto_0

    .line 2449
    .end local v2    # "deltaOffAxis":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v4

    sub-int v2, v3, v4

    goto :goto_1

    .line 2458
    .restart local v2    # "deltaOffAxis":I
    :cond_3
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    goto :goto_2
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 898
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/google/android/pano/widget/ScrollAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    move-object v0, p1

    .line 901
    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapter;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 902
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v0}, Lcom/google/android/pano/widget/ScrollAdapter;->getExpandAdapter()Lcom/google/android/pano/widget/ScrollAdapterBase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    .line 903
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/google/android/pano/widget/ScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 904
    instance-of v0, p1, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    :goto_0
    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    .line 906
    instance-of v0, p1, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    :goto_1
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    .line 908
    iput v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 909
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 910
    iput v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 911
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->clear()V

    .line 912
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->clear()V

    .line 913
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 914
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 915
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    .line 916
    return-void

    .restart local p1    # "adapter":Landroid/widget/Adapter;
    :cond_1
    move-object v0, v1

    .line 904
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 906
    goto :goto_1
.end method

.method public setDragMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController;->setDragMode(I)V

    .line 649
    return-void
.end method

.method public setFlingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController;->setFlingMode(I)V

    .line 636
    return-void
.end method

.method public setGridSetting(I)V
    .locals 0
    .param p1, "gridSetting"    # I

    .prologue
    .line 1259
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    .line 1260
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestLayout()V

    .line 1261
    return-void
.end method

.method public setHighItemTransform(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 2506
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->ensureSimpleItemTransform()V

    .line 2507
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    check-cast v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->setHighItemTransform(Landroid/animation/Animator;)V

    .line 2508
    return-void
.end method

.method public setLowItemTransform(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 2501
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->ensureSimpleItemTransform()V

    .line 2502
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    check-cast v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->setLowItemTransform(Landroid/animation/Animator;)V

    .line 2503
    return-void
.end method

.method public setNavigateInAnimationAllowed(Z)V
    .locals 0
    .param p1, "navigateInAnimation"    # Z

    .prologue
    .line 3346
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateInAnimationAllowed:Z

    .line 3347
    return-void
.end method

.method public setNavigateOutAllowed(Z)V
    .locals 0
    .param p1, "navigateOut"    # Z

    .prologue
    .line 3334
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    .line 3335
    return-void
.end method

.method public setNavigateOutOfOffAxisAllowed(Z)V
    .locals 0
    .param p1, "navigateOut"    # Z

    .prologue
    .line 3327
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    .line 3328
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 617
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    .line 618
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController;->setOrientation(I)V

    .line 619
    return-void
.end method

.method public setScrollCenterDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "scrollCenterDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 1029
    return-void
.end method

.method public setScrollCenterOffset(I)V
    .locals 1
    .param p1, "scrollCenterOffset"    # I

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterOffset(I)V

    .line 2480
    return-void
.end method

.method public setScrollCenterOffsetPercent(I)V
    .locals 1
    .param p1, "scrollCenterOffsetPercent"    # I

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterOffsetPercent(I)V

    .line 2484
    return-void
.end method

.method public setScrollCenterStrategy(I)V
    .locals 1
    .param p1, "scrollCenterStrategy"    # I

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterStrategy(I)V

    .line 2472
    return-void
.end method

.method public setSelectedSize(I)V
    .locals 0
    .param p1, "selectedScale"    # I

    .prologue
    .line 3364
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    .line 3365
    return-void
.end method

.method public setSelectedTakesMoreSpace(Z)V
    .locals 1
    .param p1, "selectedTakesMoreSpace"    # Z

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 3374
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 817
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectionInternal(IFZ)V

    .line 818
    return-void
.end method

.method public setSpace(I)V
    .locals 2
    .param p1, "space"    # I

    .prologue
    .line 3351
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    .line 3353
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    .line 3354
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    .line 3355
    return-void
.end method

.method public setTrackpadNavigationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    .line 653
    return-void
.end method

.method public setTrackpadNavigationTiltEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    .line 665
    return-void
.end method
