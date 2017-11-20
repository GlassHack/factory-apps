.class public final Lcom/google/android/pano/widget/TrackpadNavigation;
.super Ljava/lang/Object;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/TrackpadNavigation$1;,
        Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;,
        Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;,
        Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;,
        Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;,
        Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
    }
.end annotation


# static fields
.field private static sGradientSensitivityEnabled:Z

.field private static final sKeyRepeatDelay:[J

.field private static sTempRect:Landroid/graphics/Rect;

.field private static sVisualIndicator:Z


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mAlwaysInTapRegionWithoutOverShoot:Z

.field private mBlockMovementKeyUpTime:J

.field private mBlockMovementOnKeyDown:Z

.field private mBoxCenterX:F

.field private mBoxCenterXWithoutOvershoot:F

.field private mBoxCenterY:F

.field private mBoxCenterYWithoutOvershoot:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDisableDpadNavigate:Z

.field private mDynamicSensitivityX:F

.field private mDynamicSensitivityY:F

.field private mFirstTrackingTs:J

.field private mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

.field private mFlingMinimalDistance:F

.field private mFlingSensitivity:F

.field private mGenerateFling:Z

.field private mInBlockMovementOnKeyDown:Z

.field private mInitialBoxCenterX:F

.field private mInitialBoxCenterY:F

.field private mInverseX:Z

.field private mInverseY:Z

.field private mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

.field private mLastDeviceId:I

.field private mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

.field private mLockAxis:Z

.field private mLockAxisBias:F

.field private mLockedAxis:I

.field private mLockedAxisTime:J

.field private mMotionRangeY:F

.field private mOvershootProtection:F

.field private mRepeatKeyEnabled:Z

.field private mSensitivityX:F

.field private mSensitivityY:F

.field private mThreshold:F

.field private mThresholdSquared:F

.field private mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTotalSwipes:I

.field private mTouchSlop:F

.field private mTouchSlopSquared:F

.field private mTracking:Z

.field private mTrackingPointerId:I

.field private mTranslateDpadCenter:Z

.field private mView:Landroid/view/View;

.field private mVisualFlingDirection:I

.field private mVisualFlingType:I

.field private mVisualPaint:Landroid/graphics/Paint;

.field private mVisualScale:F

.field private mXSwipes:I

.field private mXSwipesLastDirection:I

.field private mYSwipes:I

.field private mYSwipesLastDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sKeyRepeatDelay:[J

    .line 258
    sput-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sGradientSensitivityEnabled:Z

    .line 310
    sput-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    return-void

    .line 157
    nop

    :array_0
    .array-data 8
        0x190
        0xc8
        0x64
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    .line 279
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    .line 312
    const/high16 v2, 0x3e000000    # 0.125f

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    .line 314
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    .line 316
    iput v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 336
    new-instance v2, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    invoke-direct {v2, v5}, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    .line 337
    new-instance v2, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    invoke-direct {v2, v5}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 341
    iput-boolean v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 344
    iput-boolean v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 352
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mRepeatKeyEnabled:Z

    .line 354
    new-instance v2, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-direct {v2, p0, v5}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation;Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    .line 357
    iput-object p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 359
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 360
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 361
    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 362
    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 363
    iput v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingSensitivity:F

    .line 364
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 365
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 368
    iput v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 369
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 370
    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sKeyRepeatDelay:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/TrackpadNavigation;JIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/TrackpadNavigation;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    return-void
.end method

.method private calculateDynamicSensitivityValues()V
    .locals 4

    .prologue
    .line 779
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    .line 781
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    mul-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    .line 783
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sGradientSensitivityEnabled:Z

    if-eqz v0, :cond_0

    .line 784
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f2aaaaa

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMotionRangeY:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    .line 787
    :cond_0
    return-void

    .line 779
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    goto :goto_0

    .line 781
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    goto :goto_1
.end method

.method private configureDeviceMetrics(Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 489
    invoke-static {p1}, Lcom/google/android/pano/widget/InputDeviceProfile;->getProfile(Landroid/view/InputDevice;)Lcom/google/android/pano/widget/InputDeviceProfile;

    move-result-object v0

    .line 493
    .local v0, "profile":Lcom/google/android/pano/widget/InputDeviceProfile;
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateDpadCenter()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    .line 494
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getThreshold()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 495
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getOvershootProtection()F

    move-result v2

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    .line 496
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateFling()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    .line 497
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getBlockMovementOnKeyDown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    .line 498
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v2, :cond_0

    .line 499
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 500
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 501
    const/high16 v2, 0x3e000000    # 0.125f

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    .line 504
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v2

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMotionRangeY:F

    .line 505
    return-void
.end method

.method private static dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .prologue
    .line 545
    :goto_0
    if-eqz p0, :cond_1

    .line 546
    instance-of v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 547
    check-cast v0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;->onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 557
    :goto_1
    return v0

    .line 551
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 552
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 557
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dispatchKeyEvent(JIIII)V
    .locals 15
    .param p1, "time"    # J
    .param p3, "key"    # I
    .param p4, "metaState"    # I
    .param p5, "source"    # I
    .param p6, "deviceId"    # I

    .prologue
    .line 804
    iget-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDisableDpadNavigate:Z

    if-eqz v1, :cond_0

    .line 820
    :goto_0
    return-void

    .line 808
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x400

    move-wide/from16 v1, p1

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 811
    .local v0, "kv":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 812
    .local v14, "rootView":Landroid/view/View;
    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v13

    .line 813
    .local v13, "dpadKeyEventHandled":Z
    if-nez v13, :cond_1

    .line 814
    invoke-static/range {p3 .. p3}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v1

    invoke-static {v14, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->requestAutoFocus(Landroid/view/View;I)V

    .line 816
    :cond_1
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "kv":Landroid/view/KeyEvent;
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x400

    move-wide/from16 v1, p1

    move-wide/from16 v3, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 819
    .restart local v0    # "kv":Landroid/view/KeyEvent;
    invoke-virtual {v14, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    .line 515
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    .line 516
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 517
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 518
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 519
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->stopSendingRepeatKeys()V

    .line 520
    return-void
.end method

.method private static getAxis(I)I
    .locals 1
    .param p0, "dpadKey"    # I

    .prologue
    .line 959
    packed-switch p0, :pswitch_data_0

    .line 967
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 962
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDirection(I)I
    .locals 1
    .param p0, "dpadKey"    # I

    .prologue
    .line 975
    packed-switch p0, :pswitch_data_0

    .line 985
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 977
    :pswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 979
    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    .line 981
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 983
    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDirectionText(I)Ljava/lang/String;
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 1091
    sparse-switch p0, :sswitch_data_0

    .line 1105
    const-string v0, "unknown"

    .line 1108
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1093
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_0
    const-string v0, "left"

    .line 1094
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1096
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_1
    const-string v0, "right"

    .line 1097
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1099
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_2
    const-string v0, "up"

    .line 1100
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1102
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_3
    const-string v0, "down"

    .line 1103
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1091
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFlingDirection(FF)I
    .locals 8
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x82

    const/16 v1, 0x42

    const/16 v2, 0x21

    const/16 v0, 0x11

    .line 824
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    .line 826
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-lez v2, :cond_2

    .line 827
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 827
    goto :goto_0

    .line 828
    :cond_2
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-gez v2, :cond_4

    .line 829
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 831
    :cond_4
    cmpl-float v2, p1, v7

    if-ltz v2, :cond_5

    .line 832
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 834
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz v2, :cond_6

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_2

    .line 837
    :cond_7
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-lez v0, :cond_9

    .line 838
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 839
    :cond_9
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-gez v0, :cond_b

    .line 840
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v0, :cond_a

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_3

    .line 842
    :cond_b
    cmpl-float v0, p2, v7

    if-ltz v0, :cond_d

    .line 843
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v0, :cond_c

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_c
    move v2, v3

    goto :goto_4

    .line 845
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v0, :cond_e

    :goto_5
    move v0, v3

    goto :goto_0

    :cond_e
    move v3, v2

    goto :goto_5
.end method

.method private getKey(FF)I
    .locals 7
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/16 v1, 0x16

    const/16 v0, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x13

    const/4 v6, 0x0

    .line 942
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 943
    cmpl-float v2, p1, v6

    if-lez v2, :cond_1

    .line 944
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz v2, :cond_0

    .line 955
    .local v0, "key":I
    :goto_0
    return v0

    .end local v0    # "key":I
    :cond_0
    move v0, v1

    .line 944
    goto :goto_0

    .line 946
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz v2, :cond_2

    move v0, v1

    .restart local v0    # "key":I
    :cond_2
    goto :goto_0

    .line 949
    .end local v0    # "key":I
    :cond_3
    cmpl-float v1, p2, v6

    if-lez v1, :cond_5

    .line 950
    iget-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v1, :cond_4

    move v0, v2

    .restart local v0    # "key":I
    :goto_1
    goto :goto_0

    .end local v0    # "key":I
    :cond_4
    move v0, v3

    goto :goto_1

    .line 952
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz v1, :cond_6

    move v0, v3

    .restart local v0    # "key":I
    :goto_2
    goto :goto_0

    .end local v0    # "key":I
    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public static getVisualIndicator()Z
    .locals 1

    .prologue
    .line 1170
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    return v0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 523
    iput-boolean v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 524
    iput-boolean v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 525
    iput-boolean v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 528
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 529
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 530
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 531
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 532
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 533
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 539
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 541
    iget-object v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    new-instance v1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    iget-wide v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(IJ)V

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 542
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 635
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 638
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 639
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    .line 638
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 565
    .local v7, "upPointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    if-ne v0, v1, :cond_3

    .line 567
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 568
    if-eq v6, v7, :cond_1

    .line 569
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 570
    iput-boolean v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 573
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 574
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 575
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 576
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 577
    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 578
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 567
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    goto :goto_0

    .line 587
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handleSingleMove(JFFLandroid/view/MotionEvent;)V
    .locals 20
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 646
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 647
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 648
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-eqz v3, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    sub-long v3, p1, v3

    const-wide/16 v7, 0x12c

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    .line 651
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 653
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-eqz v3, :cond_2

    .line 654
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    .line 655
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 656
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 657
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 771
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    if-eqz v3, :cond_3

    .line 662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 663
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    sub-long v3, p1, v3

    const-wide/16 v7, 0x320

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 669
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float v14, v3, v4

    .line 670
    .local v14, "deltaX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float v16, v3, v4

    .line 671
    .local v16, "deltaY":F
    mul-float v3, v14, v14

    mul-float v4, v16, v16

    add-float v12, v3, v4

    .line 673
    .local v12, "deltaSquared":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float v15, v3, v4

    .line 674
    .local v15, "deltaXNoOverShoot":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float v17, v3, v4

    .line 675
    .local v17, "deltaYNoOverShoot":F
    mul-float v3, v15, v15

    mul-float v4, v17, v17

    add-float v13, v3, v4

    .line 678
    .local v13, "deltaSquaredNoOvershoot":F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 680
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    cmpl-float v3, v13, v3

    if-lez v3, :cond_4

    .line 681
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 683
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    if-nez v3, :cond_5

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    div-float v4, v15, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    div-float v5, v17, v5

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->set(JFF)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    invoke-static {v3, v4}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 689
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    cmpl-float v3, v12, v3

    if-lez v3, :cond_6

    .line 690
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 692
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    cmpl-float v3, v12, v3

    if-lez v3, :cond_b

    .line 693
    const/16 v18, 0x0

    .line 694
    .local v18, "dpadKeyEventHandled":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->getKey(FF)I

    move-result v6

    .line 695
    .local v6, "key":I
    sget-boolean v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v3, :cond_7

    .line 696
    const-string v3, "TrackpadNavigation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_7
    packed-switch v6, :pswitch_data_0

    .line 736
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 737
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 738
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 739
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    .line 741
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mRepeatKeyEnabled:Z

    if-eqz v3, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->startSendingRepeatKeys(IIII)V

    .line 746
    :cond_8
    float-to-double v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v11, v3

    .line 747
    .local v11, "delta":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 748
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 749
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v4, v14

    div-float/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    .line 751
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float v4, v4, v16

    div-float/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 753
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    if-eqz v3, :cond_b

    .line 754
    invoke-static {v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->getAxis(I)I

    move-result v19

    .line 755
    .local v19, "lockAxis":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    move/from16 v0, v19

    if-eq v3, v0, :cond_10

    .line 756
    :cond_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    .line 757
    const v3, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 765
    :cond_a
    :goto_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    .line 768
    .end local v6    # "key":I
    .end local v11    # "delta":F
    .end local v18    # "dpadKeyEventHandled":Z
    .end local v19    # "lockAxis":I
    :cond_b
    sget-boolean v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v3, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 700
    .restart local v6    # "key":I
    .restart local v18    # "dpadKeyEventHandled":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-ltz v3, :cond_c

    .line 701
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 705
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 706
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto/16 :goto_1

    .line 703
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_3

    .line 709
    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-gtz v3, :cond_d

    .line 710
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 714
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto/16 :goto_1

    .line 712
    :cond_d
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_4

    .line 718
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-ltz v3, :cond_e

    .line 719
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 723
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 724
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    goto/16 :goto_1

    .line 721
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_5

    .line 727
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-gtz v3, :cond_f

    .line 728
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 732
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 733
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    goto/16 :goto_1

    .line 730
    :cond_f
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_6

    .line 759
    .restart local v11    # "delta":F
    .restart local v19    # "lockAxis":I
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    const v4, 0x3e4ccccd    # 0.2f

    sub-float v10, v3, v4

    .line 760
    .local v10, "biasValue":F
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v10, v3

    if-ltz v3, :cond_a

    .line 761
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    goto/16 :goto_2

    .line 698
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 851
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v4, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 855
    .local v6, "eventTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    move-object/from16 v28, v0

    .line 856
    .local v28, "lastEvt":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 857
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    if-eqz v4, :cond_3

    .line 859
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 862
    .local v3, "kv":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 863
    new-instance v3, Landroid/view/KeyEvent;

    .end local v3    # "kv":Landroid/view/KeyEvent;
    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    move-wide v4, v6

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 866
    .restart local v3    # "kv":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 912
    .end local v3    # "kv":Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    new-instance v5, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    const/16 v10, 0xa

    invoke-direct {v5, v10, v6, v7}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(IJ)V

    invoke-static {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 914
    sget-boolean v4, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v4, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 867
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-nez v4, :cond_2

    .line 868
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 869
    .local v27, "index":I
    if-ltz v27, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    sub-long v29, v6, v4

    .line 876
    .local v29, "timeDiff":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v5, v10

    mul-float v25, v4, v5

    .line 877
    .local v25, "deltax":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v5, v10

    mul-float v26, v4, v5

    .line 878
    .local v26, "deltay":F
    move-wide/from16 v0, v29

    long-to-float v4, v0

    div-float v9, v26, v4

    .line 879
    .local v9, "velocityY":F
    move-wide/from16 v0, v29

    long-to-float v4, v0

    div-float v8, v25, v4

    .line 884
    .local v8, "velocityX":F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    :cond_4
    const-wide/16 v4, 0x190

    cmp-long v4, v29, v4

    if-gez v4, :cond_7

    .line 887
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/pano/widget/TrackpadNavigation;->getFlingDirection(FF)I

    move-result v16

    .line 888
    .local v16, "direction":I
    sget-boolean v4, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v4, :cond_5

    .line 889
    const-string v4, "TrackpadNavigation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "long swipe "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirectionText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_5
    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    move-object/from16 v0, v28

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    add-int/lit8 v17, v4, 0x1

    .line 893
    .local v17, "repeats":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    invoke-virtual/range {v5 .. v17}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->set(JFFIIFFIIII)V

    .line 896
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iget v4, v4, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    invoke-static {v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    goto/16 :goto_1

    .line 891
    .end local v17    # "repeats":I
    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    .line 900
    .end local v16    # "direction":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0xc8

    cmp-long v4, v29, v4

    if-gez v4, :cond_2

    .line 902
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->getKey(FF)I

    move-result v21

    .line 903
    .local v21, "key":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    .line 904
    invoke-static/range {v21 .. v21}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v24

    move-object/from16 v18, p0

    move-wide/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    .line 907
    sget-boolean v4, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v4, :cond_2

    .line 908
    const-string v4, "TrackpadNavigation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "short swipe "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    invoke-static {v10}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirectionText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static requestAutoFocus(Landroid/view/View;I)V
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "direction"    # I

    .prologue
    .line 990
    if-nez p0, :cond_1

    .line 1014
    .end local p0    # "rootView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 994
    .restart local p0    # "rootView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 997
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    .line 1001
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1002
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 1003
    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1005
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "rootView":Landroid/view/View;
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1008
    :cond_2
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 1012
    .restart local p0    # "rootView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private resetBiasValues()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    .line 510
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 511
    return-void
.end method

.method private setBiasedValue(F)V
    .locals 0
    .param p1, "biasedValue"    # F

    .prologue
    .line 774
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    .line 775
    return-void
.end method

.method private setupFlingLimit()V
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingSensitivity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    .line 402
    return-void
.end method


# virtual methods
.method public deliverGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 486
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 460
    const-string v1, "TrackpadNavigation"

    const-string v2, "cannot handle event without device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 464
    .local v0, "deviceId":I
    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-eq v0, v1, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 466
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->configureDeviceMetrics(Landroid/view/InputDevice;)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 474
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 477
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 480
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 483
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x17

    .line 920
    iget-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-ne v1, v2, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 922
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 938
    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    return-void

    .line 924
    .restart local v0    # "keyCode":I
    :pswitch_0
    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    .line 926
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 927
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    goto :goto_0

    .line 931
    :pswitch_1
    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_0

    .line 933
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    goto :goto_0

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawVisualIndicator(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1017
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-nez v1, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1020
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 1022
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1025
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int v10, v1, v2

    .line 1026
    .local v10, "centerX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v11, v1, v2

    .line 1027
    .local v11, "centerY":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-eqz v1, :cond_2

    .line 1028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getThreshold()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float v9, v1, v2

    .line 1031
    .local v9, "boxRadius":F
    int-to-float v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v7, v1, v2

    .line 1032
    .local v7, "boxCenterX":F
    int-to-float v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v8, v1, v2

    .line 1033
    .local v8, "boxCenterY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v9, v2

    sub-float v2, v7, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v3, v9, v3

    sub-float v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v4, v9, v4

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v5, v9, v5

    add-float/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v9, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    sub-float v2, v7, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v3, v9, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v4, v9, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v5, v9, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1047
    float-to-double v1, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v9, v1

    .line 1048
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    sub-float v2, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    sub-float v3, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    add-float v4, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    add-float v5, v8, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1052
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    add-float v2, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    sub-float v3, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v1, v9, v1

    sub-float v4, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v1, v9, v1

    add-float v5, v8, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1056
    int-to-float v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1059
    .end local v7    # "boxCenterX":F
    .end local v8    # "boxCenterY":F
    .end local v9    # "boxRadius":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_5

    .line 1060
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1062
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-eqz v1, :cond_4

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v12, v1, 0x8

    .line 1064
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-lez v1, :cond_7

    add-int v1, v10, v12

    int-to-float v14, v1

    .line 1065
    .local v14, "x":F
    :goto_1
    int-to-float v15, v11

    .line 1066
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1069
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_5

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v12, v1, 0x8

    .line 1071
    .restart local v12    # "offset":I
    int-to-float v14, v10

    .line 1072
    .restart local v14    # "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-lez v1, :cond_8

    add-int v1, v11, v12

    int-to-float v15, v1

    .line 1073
    .restart local v15    # "y":F
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1077
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    if-eqz v1, :cond_6

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1080
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    invoke-static {v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirectionText(I)Ljava/lang/String;

    move-result-object v13

    .line 1081
    .local v13, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    if-nez v1, :cond_9

    const-string v1, "short swipe "

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iget v3, v3, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit16 v2, v10, -0xc8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1086
    .end local v13    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1064
    .restart local v12    # "offset":I
    :cond_7
    sub-int v1, v10, v12

    int-to-float v14, v1

    goto/16 :goto_1

    .line 1072
    .restart local v14    # "x":F
    :cond_8
    sub-int v1, v11, v12

    int-to-float v15, v1

    goto/16 :goto_2

    .line 1081
    .end local v12    # "offset":I
    .end local v14    # "x":F
    .restart local v13    # "text":Ljava/lang/String;
    :cond_9
    const-string v1, "long swipe "

    goto :goto_3

    :cond_a
    const-string v1, ""

    goto :goto_4
.end method

.method public getBoxMovedX()F
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBoxMovedY()F
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPositionMovedX()F
    .locals 2

    .prologue
    .line 615
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPositionMovedY()F
    .locals 2

    .prologue
    .line 619
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    return v0
.end method

.method public setLockAxis(Z)V
    .locals 0
    .param p1, "lockAxis"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    .line 431
    return-void
.end method

.method public setOvershootProtection(F)V
    .locals 1
    .param p1, "overshootProtection"    # F

    .prologue
    .line 408
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    .line 412
    return-void
.end method

.method public setSensitivityX(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 376
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 379
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 380
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 381
    return-void
.end method

.method public setSensitivityY(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 387
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 390
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 391
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 392
    return-void
.end method

.method public setThreshold(F)V
    .locals 2
    .param p1, "threshold"    # F

    .prologue
    .line 415
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    .line 416
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    .line 417
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    .line 418
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    .line 419
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setupFlingLimit()V

    .line 420
    return-void
.end method
