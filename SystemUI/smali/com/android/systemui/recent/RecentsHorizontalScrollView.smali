.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mOnScrollListener:Ljava/lang/Runnable;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 61
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 62
    invoke-static {p1, p2, p0, v4}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    .line 63
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 306
    return-void
.end method

.method private update()V
    .locals 15

    .prologue
    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 93
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 94
    .local v11, "v":Landroid/view/View;
    invoke-direct {p0, v11}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 95
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13, v11}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v11    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v9

    .line 98
    .local v9, "transitioner":Landroid/animation/LayoutTransition;
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 100
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 102
    .local v7, "recycledViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 103
    const/4 v6, 0x0

    .line 104
    .local v6, "old":Landroid/view/View;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 105
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "old":Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 106
    .restart local v6    # "old":Landroid/view/View;
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 107
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v14, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2, v6, v14}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 112
    .local v12, "view":Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v13, :cond_2

    .line 113
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->addViewCallback(Landroid/view/View;)V

    .line 116
    :cond_2
    new-instance v5, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 123
    .local v5, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v13, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 131
    new-instance v3, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    invoke-direct {v3, p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    .line 137
    .local v3, "launchAppListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 138
    .local v1, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v8, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 139
    .local v8, "thumbnailView":Landroid/view/View;
    new-instance v4, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    invoke-direct {v4, p0, v12, v8}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 146
    .local v4, "longClickListener":Landroid/view/View$OnLongClickListener;
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/view/View;->setClickable(Z)V

    .line 147
    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v8, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    const v13, 0x7f070055

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "appTitle":Landroid/view/View;
    const-string v13, " "

    invoke-virtual {v0, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "appTitle":Landroid/view/View;
    .end local v1    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v3    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v4    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v5    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v6    # "old":Landroid/view/View;
    .end local v8    # "thumbnailView":Landroid/view/View;
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 162
    new-instance v10, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 172
    .local v10, "updateScroll":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 198
    return-void
.end method

.method public drawFadedEdges(Landroid/graphics/Canvas;IIII)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingTop:I

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    .line 246
    :cond_0
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .param p1, "persistentTaskId"    # I

    .prologue
    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 84
    .local v0, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 88
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 81
    .restart local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 222
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 223
    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 230
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-object v1

    .line 223
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 215
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "contentView":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 209
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 299
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 301
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 302
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 281
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 282
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 283
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 285
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    .line 286
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 315
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 323
    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .prologue
    const/high16 v7, -0x80000000

    .line 336
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 337
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 347
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 349
    .local v1, "childWidthMeasureSpec":I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 351
    .local v2, "childheightMeasureSpec":I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 353
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    .line 355
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 357
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 358
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 374
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 370
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 68
    return-void
.end method

.method public setOnScrollListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    .line 258
    return-void
.end method
