.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 45
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f080005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    .line 55
    const v3, 0x7f0c003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 57
    const v3, 0x7f0c003a

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    .line 62
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0

    .line 61
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f070041

    if-ne v0, v1, :cond_1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 93
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    .line 94
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f07001a

    if-ne v0, v1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public hasFullWidthNotifications()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisibleSoon()V

    .line 171
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 172
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 80
    .local v1, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 82
    .end local v1    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 83
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 182
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 187
    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 152
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 108
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 111
    const/4 v1, 0x1

    .line 113
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 194
    .local v0, "barConsumedEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 195
    const v4, 0x8caa

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 201
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    :cond_3
    move v1, v3

    .line 195
    goto :goto_0
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 18
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F

    .prologue
    .line 211
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    if-eqz v6, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelExpandedFractionSum:F

    move/from16 p2, v0

    .line 221
    const v6, 0x3f99999a    # 1.2f

    mul-float v6, v6, p2

    const v7, 0x3e4ccccd    # 0.2f

    sub-float p2, v6, v7

    .line 222
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 236
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    .line 237
    .local v1, "H":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 238
    .local v5, "ph":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    .local v2, "alpha":F
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 240
    int-to-float v6, v1

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    const/4 v2, 0x0

    .line 242
    :goto_1
    mul-float/2addr v2, v2

    .line 244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_2

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelExpandedFractionSum:F

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateHeadsUp(ZF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 251
    return-void

    .line 226
    .end local v1    # "H":I
    .end local v2    # "alpha":F
    .end local v5    # "ph":F
    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 228
    .local v4, "k":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .line 229
    .local v3, "color":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 241
    .end local v3    # "color":I
    .end local v4    # "k":F
    .restart local v1    # "H":I
    .restart local v2    # "alpha":F
    .restart local v5    # "ph":F
    :cond_4
    int-to-float v6, v1

    sub-float v6, v5, v6

    int-to-float v7, v1

    div-float v2, v6, v7

    goto :goto_1

    .line 248
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 8
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 119
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isLayoutRtl()Z

    move-result v0

    .line 121
    .local v0, "isLayoutRtl":Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-eqz v7, :cond_2

    .line 123
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v7

    add-float/2addr v5, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/4 v5, 0x0

    .line 145
    :goto_1
    return-object v5

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 134
    .local v3, "w":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v1, v3, v6

    .line 142
    .local v1, "region":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 144
    :cond_3
    if-eqz v0, :cond_6

    cmpg-float v6, v4, v1

    if-gez v6, :cond_5

    .line 145
    .local v2, "showSettings":Z
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .end local v2    # "showSettings":Z
    :cond_5
    move v2, v5

    .line 144
    goto :goto_2

    :cond_6
    sub-float v6, v3, v1

    cmpg-float v6, v6, v4

    if-ltz v6, :cond_4

    move v2, v5

    goto :goto_2

    .line 145
    .restart local v2    # "showSettings":Z
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 71
    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 164
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
