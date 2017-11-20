.class public Lcom/android/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# instance fields
.field private mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private final mPauseListener:Landroid/animation/Animator$AnimatorListener;

.field private final mResumeListener:Landroid/animation/Animator$AnimatorListener;

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 4
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 43
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 46
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 47
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 48
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 50
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 52
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    .line 58
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    .line 331
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$3;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I
    .locals 3
    .param p1, "frame"    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p2, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .locals 8
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;
    .param p3, "pt"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 236
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 237
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 239
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 241
    .local v0, "vX":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 243
    .local v1, "vY":I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 244
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 245
    return-void
.end method

.method private updateEdgeSwiping()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_0
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public fadeInSecurity(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 129
    return-void
.end method

.method public fadeOutSecurity(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 124
    return-void
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBouncerStateChanged(Z)V
    .locals 2
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 358
    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_0
.end method

.method public onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 135
    .local v0, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 140
    .end local v0    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iput-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 148
    :cond_2
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 3

    .prologue
    .line 207
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 152
    return-void
.end method

.method public onPageEndWarp()V
    .locals 3

    .prologue
    .line 213
    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 5
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 186
    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v3, p2, :cond_0

    .line 204
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 190
    .local v2, "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 192
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 196
    .local v1, "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v3}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 197
    .local v0, "challengeOverlapping":Z
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, p2, :cond_2

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 203
    .end local v0    # "challengeOverlapping":Z
    .end local v1    # "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_2
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 8
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v7, -0x1

    .line 155
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_1

    .line 156
    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 157
    .local v2, "isCameraPage":Z
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/android/keyguard/CameraWidgetFrame;

    .line 159
    .local v0, "camera":Lcom/android/keyguard/CameraWidgetFrame;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetPager;->isWarping()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CameraWidgetFrame;->setUseFastTransition(Z)V

    .line 161
    .end local v0    # "camera":Lcom/android/keyguard/CameraWidgetFrame;
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 162
    .local v4, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 163
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v1

    .line 164
    .local v1, "currentFlags":I
    if-eqz v2, :cond_4

    const/high16 v5, 0x2000000

    or-int v3, v1, v5

    .line 166
    .local v3, "newFlags":I
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 171
    .end local v1    # "currentFlags":I
    .end local v2    # "isCameraPage":Z
    .end local v3    # "newFlags":I
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_2

    .line 173
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 174
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v4}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 175
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 177
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_2
    iput v7, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 178
    return-void

    .line 162
    .restart local v2    # "isCameraPage":Z
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 164
    .restart local v1    # "currentFlags":I
    :cond_4
    const v5, -0x2000001

    and-int v3, v1, v5

    goto :goto_1
.end method

.method public onScrollPositionChanged(FI)V
    .locals 3
    .param p1, "scrollPosition"    # F
    .param p2, "challengeTop"    # I

    .prologue
    .line 324
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 326
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 327
    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5
    .param p1, "scrollState"    # I

    .prologue
    const/4 v4, 0x3

    .line 256
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 260
    .local v0, "challengeOverlapping":Z
    if-nez p1, :cond_8

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 262
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 264
    if-nez v0, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_6

    .line 266
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 267
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 272
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 277
    :cond_3
    if-eq p1, v4, :cond_4

    .line 278
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 280
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 282
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 283
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 287
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 319
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_5
    :goto_3
    iput p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_0

    .line 269
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_1

    .line 285
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_2

    .line 288
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_8
    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 294
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 298
    if-eq p1, v4, :cond_9

    .line 299
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 304
    :cond_9
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 306
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 317
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_3

    .line 310
    :cond_b
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_4
.end method

.method public setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/keyguard/ChallengeLayout;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 78
    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p1, "pagedView"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 73
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V
    .locals 0
    .param p1, "container"    # Lcom/android/keyguard/KeyguardSecurityView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    .line 106
    return-void
.end method

.method public showBouncer(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f05004b

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "what":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->announceCurrentSecurityMethod()V

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->showBouncer()V

    .line 115
    return-void

    .line 109
    .end local v0    # "what":Ljava/lang/CharSequence;
    :cond_0
    const v1, 0x7f05004c

    goto :goto_0
.end method

.method public showUsabilityHints()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardViewStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardViewStateManager$4;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_0
    return-void
.end method
