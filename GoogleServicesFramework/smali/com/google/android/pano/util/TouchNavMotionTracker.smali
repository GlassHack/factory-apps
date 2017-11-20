.class public Lcom/google/android/pano/util/TouchNavMotionTracker;
.super Ljava/lang/Object;
.source "TouchNavMotionTracker.java"


# instance fields
.field private mCurrX:F

.field private mCurrY:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mMaxFlingVelocityX:F

.field private final mMaxFlingVelocityY:F

.field private final mMinFlingVelocityX:F

.field private final mMinFlingVelocityY:F

.field private final mMinScrollX:F

.field private final mMinScrollY:F

.field private mPrevX:F

.field private mPrevY:F

.field private final mResolutionX:F

.field private final mResolutionY:F

.field private mScrollX:F

.field private mScrollY:F

.field private mVelX:F

.field private mVelY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(FFF)V
    .locals 5
    .param p1, "resolutionX"    # F
    .param p2, "resolutionY"    # F
    .param p3, "minScrollDist"    # F

    .prologue
    const v4, 0x449ec000    # 1270.0f

    const/high16 v3, 0x43480000    # 200.0f

    const v0, 0x40c9999a    # 6.3f

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .end local p1    # "resolutionX":F
    :goto_0
    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    .line 57
    cmpl-float v1, p2, v2

    if-lez v1, :cond_1

    .end local p2    # "resolutionY":F
    :goto_1
    iput p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    .line 59
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityX:F

    .line 60
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityY:F

    .line 61
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityX:F

    .line 62
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityY:F

    .line 63
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollX:F

    .line 64
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollY:F

    .line 65
    return-void

    .restart local p1    # "resolutionX":F
    .restart local p2    # "resolutionY":F
    :cond_0
    move p1, v0

    .line 55
    goto :goto_0

    .end local p1    # "resolutionX":F
    :cond_1
    move p2, v0

    .line 57
    goto :goto_1
.end method

.method public static buildTrackerForDevice(Landroid/view/InputDevice;F)Lcom/google/android/pano/util/TouchNavMotionTracker;
    .locals 5
    .param p0, "device"    # Landroid/view/InputDevice;
    .param p1, "minScrollDist"    # F

    .prologue
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 70
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    if-nez v0, :cond_2

    move v1, v3

    .line 71
    .local v1, "resolutionX":F
    :goto_0
    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    .line 72
    const v1, 0x40c9999a    # 6.3f

    .line 74
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 75
    if-nez v0, :cond_3

    move v2, v3

    .line 76
    .local v2, "resolutionY":F
    :goto_1
    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 77
    const v2, 0x40c9999a    # 6.3f

    .line 80
    :cond_1
    new-instance v3, Lcom/google/android/pano/util/TouchNavMotionTracker;

    invoke-direct {v3, v1, v2, p1}, Lcom/google/android/pano/util/TouchNavMotionTracker;-><init>(FFF)V

    return-object v3

    .line 70
    .end local v1    # "resolutionX":F
    .end local v2    # "resolutionY":F
    :cond_2
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v1

    goto :goto_0

    .line 75
    .restart local v1    # "resolutionX":F
    :cond_3
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 88
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    iput-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 183
    iput-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    :cond_1
    return-void
.end method

.method public computeVelocity()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 118
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityX:F

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    .line 119
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMaxFlingVelocityY:F

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    .line 120
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPhysicalX(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionX:F

    div-float v0, p1, v0

    return v0
.end method

.method public getPhysicalY(F)F
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 164
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mResolutionY:F

    div-float v0, p1, v0

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    return v0
.end method

.method public getXVel()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelX:F

    return v0
.end method

.method public getYVel()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mVelY:F

    return v0
.end method

.method public setDownEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "downEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    if-eq p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mDownEvent:Landroid/view/MotionEvent;

    .line 95
    return-void
.end method

.method public setNewValues(FF)Z
    .locals 2
    .param p1, "currX"    # F
    .param p2, "currY"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrX:F

    .line 107
    iput p2, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrY:F

    .line 108
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrX:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollX:F

    .line 109
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrY:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    .line 110
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mMinScrollY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePrevValues()V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrX:F

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevX:F

    .line 169
    iget v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mCurrY:F

    iput v0, p0, Lcom/google/android/pano/util/TouchNavMotionTracker;->mPrevY:F

    .line 170
    return-void
.end method
