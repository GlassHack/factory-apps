.class public Lcom/google/android/pano/util/TouchNavSpaceTracker;
.super Ljava/lang/Object;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;,
        Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;,
        Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    }
.end annotation


# static fields
.field private static final DIRECTIONS:[I

.field private static final DIRECTION_BOUNDARIES:[F


# instance fields
.field private mDampedSensitivity:F

.field private mDampingDuration:F

.field private mFlickMaxDistance:F

.field private mFlickMaxDuration:J

.field private mFlickMaxSquared:F

.field private mFlickMinDistance:F

.field private mFlickMinSquared:F

.field private mHandler:Landroid/os/Handler;

.field protected mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

.field private mLPFCurrX:F

.field private mLPFCurrY:F

.field private mLPFEnabled:Z

.field private mMovementBlockTime:J

.field private mPhysicalHeight:F

.field private mPhysicalPosition:Landroid/graphics/PointF;

.field private mPhysicalWidth:F

.field private mPixelHeight:F

.field protected mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

.field private mPixelWidth:F

.field private mPixelsPerMm:F

.field private mPrevPhysPosition:Landroid/graphics/PointF;

.field private mSensitivity:F

.field private mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

.field protected final mTouchParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/pano/util/TouchNavMotionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mUnscaledFlickMaxDistance:F

.field private mUnscaledFlickMinDistance:F

.field private mWasBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTION_BOUNDARIES:[F

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTIONS:[I

    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        -0x3fd01221
        -0x4004ac2f
        -0x4069341c
        -0x4136f025
        0x3ec90fdb
        0x3f96cbe4
        0x3ffb53d1
        0x402feddf
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x1
        0x3
        0x2
        0x6
        0x4
        0xc
        0x8
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, v0, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;-><init>(Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;)V

    .line 390
    return-void
.end method

.method public constructor <init>(Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;)V
    .locals 6
    .param p1, "keyListener"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;
    .param p2, "pixelSpaceListener"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    .line 339
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    .line 348
    iput-boolean v5, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    .line 351
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

    .line 353
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampingDuration:F

    .line 354
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampedSensitivity:F

    .line 355
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    .line 357
    iput v3, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mUnscaledFlickMinDistance:F

    .line 358
    iput v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mUnscaledFlickMaxDistance:F

    .line 360
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinDistance:F

    .line 361
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDistance:F

    .line 362
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinDistance:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinSquared:F

    .line 363
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDistance:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxSquared:F

    .line 364
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDuration:J

    .line 366
    iput-boolean v5, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    .line 374
    new-instance v0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;-><init>(Lcom/google/android/pano/util/TouchNavSpaceTracker;)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    .line 394
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    .line 395
    iput-object p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    .line 397
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    .line 398
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    .line 399
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    .line 400
    iput v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    .line 401
    iput v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    .line 402
    iput v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    .line 403
    return-void
.end method

.method private calculateSensitivity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "downEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 842
    .local v1, "moveDuration":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mMovementBlockTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 843
    const/4 v3, 0x0

    .line 844
    .local v3, "sensitivity":F
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    .line 855
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    if-eqz v4, :cond_0

    .line 857
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    .line 858
    iget-object v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    .line 860
    :cond_0
    return v3

    .line 845
    .end local v3    # "sensitivity":F
    :cond_1
    long-to-float v4, v1

    iget v5, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampingDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 846
    iget-object v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

    long-to-float v5, v1

    iget v6, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampingDuration:F

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 850
    .local v0, "elapsedFraction":F
    iget v4, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampedSensitivity:F

    iget v5, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    iget v6, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampedSensitivity:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 852
    .restart local v3    # "sensitivity":F
    goto :goto_0

    .line 853
    .end local v0    # "elapsedFraction":F
    .end local v3    # "sensitivity":F
    :cond_2
    iget v3, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    .restart local v3    # "sensitivity":F
    goto :goto_0
.end method

.method private checkForLongClick(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 732
    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 737
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private clampPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    .line 789
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    .line 794
    :cond_1
    :goto_1
    return-void

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 787
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    goto :goto_0

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    goto :goto_1
.end method

.method private getDpadDirection(FF)I
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 798
    neg-float v2, p2

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 800
    .local v1, "polar":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTION_BOUNDARIES:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 801
    sget-object v2, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTION_BOUNDARIES:[F

    aget v2, v2, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 805
    :cond_0
    sget-object v2, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTIONS:[I

    aget v2, v2, v0

    return v2

    .line 800
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPhysicalX(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 825
    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 828
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getPhysicalY(F)F
    .locals 2
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 832
    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 835
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getPixelX(F)F
    .locals 2
    .param p1, "xMm"    # F

    .prologue
    .line 817
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    div-float/2addr v0, v1

    return v0
.end method

.method private getPixelY(F)F
    .locals 2
    .param p1, "yMm"    # F

    .prologue
    .line 821
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method private getPrimaryDpadDirection(FF)I
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 809
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 810
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x4

    .line 812
    :goto_0
    return v0

    .line 810
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 812
    :cond_1
    cmpl-float v0, p2, v2

    if-lez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getScaledValue(FF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "factor"    # F

    .prologue
    .line 864
    mul-float v0, p1, p2

    return v0
.end method

.method private getTrackerForDevice(Landroid/view/InputDevice;)Lcom/google/android/pano/util/TouchNavMotionTracker;
    .locals 3
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 868
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/util/TouchNavMotionTracker;

    .line 869
    .local v0, "tracker":Lcom/google/android/pano/util/TouchNavMotionTracker;
    if-nez v0, :cond_0

    .line 870
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->buildTrackerForDevice(Landroid/view/InputDevice;F)Lcom/google/android/pano/util/TouchNavMotionTracker;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 873
    :cond_0
    return-object v0
.end method

.method private setPhysicalSizeInternal(FF)V
    .locals 2
    .param p1, "widthMm"    # F
    .param p2, "heightMm"    # F

    .prologue
    .line 767
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    .line 768
    iput p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    .line 769
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 775
    :cond_1
    return-void
.end method

.method private updatePhysicalSize()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 778
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 779
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    iget v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSizeInternal(FF)V

    .line 781
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPixelPosition()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 763
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    const/high16 v6, 0x200000

    if-eq v5, v6, :cond_2

    .line 569
    :cond_0
    const/16 v19, 0x0

    .line 709
    :cond_1
    :goto_0
    return v19

    .line 571
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v14

    .line 572
    .local v14, "device":Landroid/view/InputDevice;
    if-nez v14, :cond_3

    .line 573
    const/16 v19, 0x0

    goto :goto_0

    .line 575
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getTrackerForDevice(Landroid/view/InputDevice;)Lcom/google/android/pano/util/TouchNavMotionTracker;

    move-result-object v31

    .line 576
    .local v31, "tracker":Lcom/google/android/pano/util/TouchNavMotionTracker;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 577
    .local v10, "action":I
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 579
    and-int/lit16 v5, v10, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    const/16 v25, 0x1

    .line 581
    .local v25, "pointerUp":Z
    :goto_1
    if-eqz v25, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 584
    .local v27, "skipIndex":I
    :goto_2
    const/16 v29, 0x0

    .local v29, "sumX":F
    const/16 v30, 0x0

    .line 585
    .local v30, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 586
    .local v11, "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v11, :cond_7

    .line 587
    move/from16 v0, v27

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 586
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 579
    .end local v11    # "count":I
    .end local v20    # "i":I
    .end local v25    # "pointerUp":Z
    .end local v27    # "skipIndex":I
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    .line 581
    .restart local v25    # "pointerUp":Z
    :cond_5
    const/16 v27, -0x1

    goto :goto_2

    .line 588
    .restart local v11    # "count":I
    .restart local v20    # "i":I
    .restart local v27    # "skipIndex":I
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float v29, v29, v5

    .line 589
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float v30, v30, v5

    goto :goto_4

    .line 591
    :cond_7
    if-eqz v25, :cond_9

    add-int/lit8 v15, v11, -0x1

    .line 592
    .local v15, "div":I
    :goto_5
    int-to-float v5, v15

    div-float v12, v29, v5

    .line 593
    .local v12, "currX":F
    int-to-float v5, v15

    div-float v13, v30, v5

    .line 594
    .local v13, "currY":F
    new-instance v3, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    .line 597
    .local v3, "pe":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    const/16 v19, 0x0

    .line 599
    .local v19, "handled":Z
    and-int/lit16 v5, v10, 0xff

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 601
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v5, :cond_8

    .line 603
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 604
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 606
    :cond_8
    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setNewValues(FF)Z

    .line 607
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->updatePrevValues()V

    .line 608
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setDownEvent(Landroid/view/MotionEvent;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v5, :cond_1

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    invoke-interface {v5, v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onDown(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;)Z

    move-result v5

    or-int v19, v19, v5

    goto/16 :goto_0

    .end local v3    # "pe":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .end local v12    # "currX":F
    .end local v13    # "currY":F
    .end local v15    # "div":I
    .end local v19    # "handled":Z
    :cond_9
    move v15, v11

    .line 591
    goto :goto_5

    .line 615
    .restart local v3    # "pe":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .restart local v12    # "currX":F
    .restart local v13    # "currY":F
    .restart local v15    # "div":I
    .restart local v19    # "handled":Z
    :pswitch_1
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v5

    if-nez v5, :cond_a

    .line 616
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setDownEvent(Landroid/view/MotionEvent;)V

    .line 617
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v5, :cond_a

    .line 619
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 620
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 623
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v5, :cond_b

    .line 624
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 625
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 626
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 627
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 629
    :cond_b
    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setNewValues(FF)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 630
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getScrollX()F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v21

    .line 631
    .local v21, "physDx":F
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getScrollY()F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v22

    .line 632
    .local v22, "physDy":F
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->calculateSensitivity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v26

    .line 634
    .local v26, "sensitivity":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getScaledValue(FF)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getScaledValue(FF)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->clampPosition()V

    .line 639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    .line 641
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v16

    .line 642
    .local v16, "downEvent":Landroid/view/MotionEvent;
    new-instance v4, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    .line 647
    .local v4, "pDownEvent":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v23

    .line 648
    .local v23, "pixelX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v24

    .line 649
    .local v24, "pixelY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v5, v4, v3, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onMove(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v5

    or-int v19, v19, v5

    .line 651
    .end local v4    # "pDownEvent":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .end local v16    # "downEvent":Landroid/view/MotionEvent;
    .end local v23    # "pixelX":F
    .end local v24    # "pixelY":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 656
    .end local v19    # "handled":Z
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->updatePrevValues()V

    goto/16 :goto_0

    .line 654
    .restart local v19    # "handled":Z
    :cond_d
    or-int/lit8 v19, v19, 0x1

    .local v19, "handled":I
    goto :goto_6

    .line 659
    .end local v21    # "physDx":F
    .end local v22    # "physDy":F
    .end local v26    # "sensitivity":F
    .local v19, "handled":Z
    :cond_e
    or-int/lit8 v19, v19, 0x1

    .line 661
    .local v19, "handled":I
    goto/16 :goto_0

    .line 664
    .local v19, "handled":Z
    :pswitch_2
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v16

    .line 665
    .restart local v16    # "downEvent":Landroid/view/MotionEvent;
    if-nez v16, :cond_f

    .line 666
    const-string v5, "TouchNavSpaceTracker"

    const-string v6, "Up event without down event"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v7

    invoke-interface {v5, v3, v6, v7}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v5

    or-int v19, v19, v5

    .line 669
    goto/16 :goto_0

    .line 671
    :cond_f
    new-instance v4, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    .line 676
    .restart local v4    # "pDownEvent":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->computeVelocity()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v5, :cond_10

    .line 678
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getXVel()F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v32

    .line 679
    .local v32, "velX":F
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getYVel()F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v33

    .line 680
    .local v33, "velY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-interface {v5, v4, v3, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onFling(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v5

    or-int v19, v19, v5

    .line 681
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v7

    sub-long v17, v5, v7

    .line 683
    .local v17, "duration":J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDuration:J

    cmp-long v5, v17, v5

    if-gez v5, :cond_10

    .line 685
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getX()F

    move-result v6

    sub-float v34, v5, v6

    .line 686
    .local v34, "xDist":F
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getY()F

    move-result v6

    sub-float v35, v5, v6

    .line 687
    .local v35, "yDist":F
    mul-float v5, v34, v34

    mul-float v6, v35, v35

    add-float v28, v5, v6

    .line 688
    .local v28, "sqDist":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinSquared:F

    cmpl-float v5, v28, v5

    if-lez v5, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxSquared:F

    cmpg-float v5, v28, v5

    if-gez v5, :cond_10

    .line 689
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getDpadDirection(FF)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPrimaryDpadDirection(FF)I

    move-result v7

    invoke-interface {v5, v4, v3, v6, v7}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onFlick(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;II)Z

    .line 699
    .end local v17    # "duration":J
    .end local v28    # "sqDist":F
    .end local v32    # "velX":F
    .end local v33    # "velY":F
    .end local v34    # "xDist":F
    .end local v35    # "yDist":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v23

    .line 700
    .restart local v23    # "pixelX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v24

    .line 701
    .restart local v24    # "pixelY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v5, v3, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v5

    or-int v19, v19, v5

    .line 702
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->clear()V

    goto/16 :goto_0

    .line 706
    .end local v4    # "pDownEvent":Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .end local v16    # "downEvent":Landroid/view/MotionEvent;
    .end local v23    # "pixelX":F
    .end local v24    # "pixelY":F
    :pswitch_3
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/pano/util/TouchNavMotionTracker;->clear()V

    goto/16 :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v2, 0x200000

    const/4 v0, 0x0

    .line 717
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->checkForLongClick(ILandroid/view/KeyEvent;)V

    .line 725
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v2, 0x200000

    const/4 v0, 0x0

    .line 744
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 749
    :cond_1
    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPhysicalDensity(F)V
    .locals 1
    .param p1, "pixelsPerMm"    # F

    .prologue
    .line 467
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    .line 468
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->updatePhysicalSize()V

    .line 471
    :cond_0
    return-void
.end method

.method public setPhysicalPosition(FF)V
    .locals 1
    .param p1, "xMm"    # F
    .param p2, "yMm"    # F

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 423
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 424
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 425
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 427
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->clampPosition()V

    .line 428
    return-void
.end method

.method public setPhysicalSize(FF)V
    .locals 2
    .param p1, "widthMm"    # F
    .param p2, "heightMm"    # F

    .prologue
    .line 452
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSizeInternal(FF)V

    goto :goto_0
.end method

.method public setPixelPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPhysicalX(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPhysicalY(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    .line 441
    return-void
.end method

.method public setPixelSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 482
    iput p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    .line 483
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    .line 484
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->updatePhysicalSize()V

    .line 485
    return-void
.end method
