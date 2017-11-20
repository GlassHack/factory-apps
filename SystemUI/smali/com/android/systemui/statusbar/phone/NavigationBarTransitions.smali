.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mRequestedMode:I

.field private mVertical:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 44
    const v0, 0x7f020074

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 46
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private alphaForMode(I)F
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 95
    .local v0, "isOpaque":Z
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x3f333333    # 0.7f

    :goto_1
    return v1

    .line 94
    .end local v0    # "isOpaque":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    .restart local v0    # "isOpaque":Z
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private applyLightsOut(ZZZ)V
    .locals 11
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 137
    if-nez p3, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v8, :cond_0

    .line 179
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    .line 141
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f07000e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, "navButtons":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "lowLights":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 148
    if-eqz p1, :cond_1

    move v4, v7

    .line 149
    .local v4, "navButtonsAlpha":F
    :goto_1
    if-eqz p1, :cond_2

    .line 151
    .local v2, "lowLightsAlpha":F
    :goto_2
    if-nez p2, :cond_4

    .line 152
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 154
    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "lowLightsAlpha":F
    .end local v4    # "navButtonsAlpha":F
    :cond_1
    move v4, v2

    .line 148
    goto :goto_1

    .restart local v4    # "navButtonsAlpha":F
    :cond_2
    move v2, v7

    .line 149
    goto :goto_2

    .restart local v2    # "lowLightsAlpha":F
    :cond_3
    move v5, v6

    .line 154
    goto :goto_3

    .line 156
    :cond_4
    if-eqz p1, :cond_6

    const/16 v0, 0x2ee

    .line 157
    .local v0, "duration":I
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 164
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 156
    .end local v0    # "duration":I
    :cond_6
    const/16 v0, 0xfa

    goto :goto_4

    .line 167
    .restart local v0    # "duration":I
    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V

    goto :goto_5
.end method

.method private applyMode(IZZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->alphaForMode(I)F

    move-result v0

    .line 80
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    .line 90
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fadeContent(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 128
    :cond_0
    return-void
.end method

.method private static maxVisibleQuiescentAlpha(FLandroid/view/View;)F
    .locals 1
    .param p0, "max"    # F
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 114
    .end local p0    # "max":F
    :cond_0
    return p0
.end method

.method private setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 131
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p1    # "button":Landroid/view/View;
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setQuiescentAlpha(FZ)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBackButtonQuiescentAlpha(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "backAlpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    .line 105
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 108
    :cond_0
    return-void
.end method

.method public init(Z)V
    .locals 3
    .param p1, "isVertical"    # Z

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    .line 52
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    .line 54
    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    .line 75
    return-void
.end method

.method public setContentVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->fadeContent(Landroid/view/View;F)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->fadeContent(Landroid/view/View;F)V

    .line 122
    return-void

    .line 119
    .end local v0    # "alpha":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVertical(Z)V
    .locals 2
    .param p1, "isVertical"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    .line 59
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 66
    const/4 p1, 0x0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 69
    return-void
.end method
