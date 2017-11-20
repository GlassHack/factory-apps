.class public Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.super Ljava/lang/Object;
.source "BaseScrollAdapterFragment.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

.field private mAnimationDuration:I

.field private volatile mFadedOut:Z

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field private mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectedView:Landroid/view/View;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFadedOut:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFadedOut:Z

    return p1
.end method


# virtual methods
.method public ensureList()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "root":Landroid/view/View;
    if-nez v0, :cond_2

    .line 95
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not created yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_2
    instance-of v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_4

    .line 98
    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView;

    .end local v0    # "root":Landroid/view/View;
    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    .line 107
    :goto_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestFocusFromTouch()Z

    .line 109
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/pano/R$integer;->dialog_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAnimationDuration:I

    .line 115
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->addOnScrollListener(Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;)V

    goto :goto_0

    .line 101
    .restart local v0    # "root":Landroid/view/View;
    :cond_4
    sget v1, Lcom/google/android/pano/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/ScrollAdapterView;

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 102
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-nez v1, :cond_5

    .line 103
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No scroll adapter view exists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_5
    sget v1, Lcom/google/android/pano/R$id;->selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    goto :goto_1
.end method

.method public getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object v0
.end method

.method public getScrollAdapterView()Lcom/google/android/pano/widget/ScrollAdapterView;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->ensureList()V

    .line 63
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    return-object v0
.end method

.method public hasCreatedView()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    sget v1, Lcom/google/android/pano/R$layout;->settings_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 46
    return-object v0
.end method

.method public declared-synchronized onScrolled(Landroid/view/View;IFF)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "mainPosition"    # F
    .param p4, "secondPosition"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 166
    monitor-enter p0

    float-to-double v6, p3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 167
    .local v1, "hasFocus":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 168
    if-eqz p1, :cond_4

    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 173
    .local v4, "selectorHeight":I
    if-nez v4, :cond_0

    .line 174
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 175
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v5}, Lcom/google/android/pano/dialog/LiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/pano/R$dimen;->action_fragment_selector_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v3, v5, v6

    .line 180
    .local v3, "scaleY":F
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;-><init>(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAnimationDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 185
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-boolean v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mFadedOut:Z

    if-eqz v5, :cond_3

    .line 188
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 194
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 195
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectedView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "animation":Landroid/view/ViewPropertyAnimator;
    .end local v3    # "scaleY":F
    .end local v4    # "selectorHeight":I
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .end local v1    # "hasFocus":Z
    :cond_2
    move v1, v5

    .line 166
    goto :goto_0

    .line 192
    .restart local v0    # "animation":Landroid/view/ViewPropertyAnimator;
    .restart local v1    # "hasFocus":Z
    .restart local v3    # "scaleY":F
    .restart local v4    # "selectorHeight":I
    :cond_3
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 166
    .end local v0    # "animation":Landroid/view/ViewPropertyAnimator;
    .end local v3    # "scaleY":F
    .end local v4    # "selectorHeight":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 197
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 198
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x0

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 201
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectedView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAnimationDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;-><init>(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectedView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->ensureList()V

    .line 51
    return-void
.end method

.method public setAdapter(Lcom/google/android/pano/widget/ScrollAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/google/android/pano/widget/ScrollAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 72
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 75
    :cond_0
    return-void
.end method
