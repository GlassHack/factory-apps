.class public Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.super Landroid/widget/FrameLayout;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mContentHolder:Landroid/view/ViewGroup;

.field private mContentSlider:Landroid/view/ViewGroup;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mStartTouchTime:J

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;

.field private final mTouchSensitivityDelay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    .line 65
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

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

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 126
    .local v0, "densityScale":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    int-to-float v3, v4

    .line 127
    .local v3, "pagingTouchSlop":F
    new-instance v4, Lcom/android/systemui/SwipeHelper;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, v0, v3}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 130
    .local v2, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 131
    .local v1, "maxHeight":I
    new-instance v4, Lcom/android/systemui/ExpandHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0, v2, v1}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 133
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    .line 134
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    .line 136
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 140
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    const-string v0, "HeadsUpNotificationView"

    const-string v1, "User swiped heads up to dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onHeadsUpDismissed()V

    .line 217
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 170
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 172
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 173
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 226
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 69
    return-void
.end method

.method public setMargin(I)V
    .locals 2
    .param p1, "notificationPanelMarginPx"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 4
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpanded(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentSlider:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 204
    :cond_0
    return-void
.end method
