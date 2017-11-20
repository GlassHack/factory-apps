.class public Lcom/google/glass/touchpad/ClutchDetector;
.super Ljava/lang/Object;
.source "ClutchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/touchpad/ClutchDetector$1;,
        Lcom/google/glass/touchpad/ClutchDetector$MoveListener;,
        Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;,
        Lcom/google/glass/touchpad/ClutchDetector$StateListener;,
        Lcom/google/glass/touchpad/ClutchDetector$Handler;,
        Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;,
        Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;,
        Lcom/google/glass/touchpad/ClutchDetector$FingerListener;
    }
.end annotation


# static fields
.field private static final AUTOSCROLL_SPEED_FACTOR:F = 0.005f

.field private static final AUTOSCROLL_THRESHOLD_SQUARE:F = 144.0f

.field private static final DISTANCE_UNITS_PER_STEP:F = 1.0f

.field private static final FOCUS_ON_CENTER_THRESHOLD_SQUARE:F = 0.36f

.field private static final MIN_MOVE_BY_PIXELS:F = 1.0f

.field static final MIN_TOUCH_ZOOM_THRESHOLD:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MIN_ZOOM_STEPS:I = 0x2

.field private static final VISIBLE_PIXELS_PER_DISTANCE_UNIT:F = 0.93261534f


# instance fields
.field private clutchOffsetX:F

.field private clutchOffsetY:F

.field private clutchPitch:F

.field private clutchYaw:F

.field private contentWidth:F

.field private currentScale:F

.field private currentZoomStep:I

.field private firstZoom:Z

.field private final gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private final handler:Lcom/google/glass/touchpad/ClutchDetector$Handler;

.field private isInClutchMode:Z

.field private isStarted:Z

.field private lastHoverOnCenterPitch:F

.field private lastHoverOnCenterYaw:F

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private moveListener:Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

.field private orientationHelper:Lcom/google/glass/input/OrientationHelper;

.field final orientationListener:Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private orientationOffsetsSet:Z

.field private scaleListener:Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

.field private stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;


# direct methods
.method constructor <init>(Lcom/google/android/glass/touchpad/GestureDetector;Landroid/os/Looper;)V
    .locals 4
    .param p1, "gestureDetector"    # Lcom/google/android/glass/touchpad/GestureDetector;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->firstZoom:Z

    .line 149
    iput v2, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterPitch:F

    .line 154
    iput v2, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterYaw:F

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentScale:F

    .line 175
    iput-boolean v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    .line 180
    iput-boolean v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->isInClutchMode:Z

    .line 217
    const-string v0, "null gestureDetector"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/touchpad/GestureDetector;

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 218
    const-string v0, "null looper"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Lcom/google/glass/touchpad/ClutchDetector$Handler;

    invoke-direct {v0, p2, p0, v1}, Lcom/google/glass/touchpad/ClutchDetector$Handler;-><init>(Landroid/os/Looper;Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->handler:Lcom/google/glass/touchpad/ClutchDetector$Handler;

    .line 221
    new-instance v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;

    invoke-direct {v0, p0}, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;-><init>(Lcom/google/glass/touchpad/ClutchDetector;)V

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationListener:Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;

    .line 223
    new-instance v0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;-><init>(Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    .line 224
    new-instance v0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;-><init>(Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/glass/touchpad/GestureDetector;->setTwoFingerScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$TwoFingerScrollListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentZoomStep:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/touchpad/ClutchDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentZoomStep:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentScale:F

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentScale:F

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/touchpad/ClutchDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationOffsetsSet:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/glass/touchpad/ClutchDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationOffsetsSet:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchPitch:F

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchPitch:F

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchYaw:F

    return v0
.end method

.method static synthetic access$1402(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchYaw:F

    return p1
.end method

.method static synthetic access$1500(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchOffsetX:F

    return v0
.end method

.method static synthetic access$1502(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchOffsetX:F

    return p1
.end method

.method static synthetic access$1600(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchOffsetY:F

    return v0
.end method

.method static synthetic access$1602(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->clutchOffsetY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterPitch:F

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterPitch:F

    return p1
.end method

.method static synthetic access$1800(Lcom/google/glass/touchpad/ClutchDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterYaw:F

    return v0
.end method

.method static synthetic access$1802(Lcom/google/glass/touchpad/ClutchDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->lastHoverOnCenterYaw:F

    return p1
.end method

.method static synthetic access$1900(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->handler:Lcom/google/glass/touchpad/ClutchDetector$Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$MoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->moveListener:Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/touchpad/ClutchDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isInClutchMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/touchpad/ClutchDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->isInClutchMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/touchpad/ClutchDetector;->exitClutchMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->scaleListener:Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/touchpad/ClutchDetector;->initCurrentZoomStep()V

    return-void
.end method

.method private exitClutchMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isInClutchMode:Z

    .line 331
    iput-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationOffsetsSet:Z

    .line 332
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    invoke-interface {v0}, Lcom/google/glass/touchpad/ClutchDetector$StateListener;->onClutchModeExited()V

    .line 335
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/touchpad/ClutchDetector;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v8, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-direct {v8, p0}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    .line 191
    .local v8, "gestureDetector":Lcom/google/android/glass/touchpad/GestureDetector;
    new-instance v7, Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Lcom/google/glass/touchpad/ClutchDetector;-><init>(Lcom/google/android/glass/touchpad/GestureDetector;Landroid/os/Looper;)V

    .line 192
    .local v7, "clutchDetector":Lcom/google/glass/touchpad/ClutchDetector;
    new-instance v0, Lcom/google/glass/input/OrientationHelper;

    iget-object v2, v7, Lcom/google/glass/touchpad/ClutchDetector;->orientationListener:Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;

    .line 194
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/input/OrientationHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;ZIILcom/google/glass/time/Clock;)V

    .line 195
    .local v0, "orientationHelper":Lcom/google/glass/input/OrientationHelper;
    invoke-virtual {v7, v0}, Lcom/google/glass/touchpad/ClutchDetector;->setOrientationHelper(Lcom/google/glass/input/OrientationHelper;)V

    .line 196
    return-object v7
.end method

.method private initCurrentZoomStep()V
    .locals 5

    .prologue
    .line 342
    iget-boolean v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->firstZoom:Z

    if-nez v3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->firstZoom:Z

    .line 347
    const/high16 v3, 0x3fc00000    # 1.5f

    iget v4, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentScale:F

    div-float v1, v3, v4

    .line 348
    .local v1, "scaleFactor":F
    iget v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->contentWidth:F

    mul-float v2, v3, v1

    .line 349
    .local v2, "visibleContentWidth":F
    const v3, 0x3f6ebfe1

    div-float v0, v2, v3

    .line 350
    .local v0, "distance":F
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentZoomStep:I

    goto :goto_0
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMoveListener(Lcom/google/glass/touchpad/ClutchDetector$MoveListener;)V
    .locals 0
    .param p1, "moveListener"    # Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->moveListener:Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    .line 257
    return-void
.end method

.method setOrientationHelper(Lcom/google/glass/input/OrientationHelper;)V
    .locals 2
    .param p1, "orientationHelper"    # Lcom/google/glass/input/OrientationHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "cannot set orientationHelper when ClutchDetector is started!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 282
    const-string v0, "null orientationHelper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/OrientationHelper;

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    .line 283
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleListener(Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;)V
    .locals 0
    .param p1, "scaleListener"    # Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->scaleListener:Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    .line 248
    return-void
.end method

.method public setStateListener(Lcom/google/glass/touchpad/ClutchDetector$StateListener;)V
    .locals 2
    .param p1, "stateListener"    # Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set StateListener while ClutchDetector is started!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 238
    const-string v0, "null StateListener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    iput-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    .line 239
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(F)V
    .locals 6
    .param p1, "contentWidth"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 294
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "start(contentWidth: [%s])"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->stateListener:Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Cannot start ClutchDetector without StateListener!"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Cannot start ClutchDetector without OrientationHelper!"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 298
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    if-eqz v0, :cond_2

    .line 306
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 295
    goto :goto_0

    .line 301
    :cond_2
    iput-boolean v1, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    .line 303
    iput p1, p0, Lcom/google/glass/touchpad/ClutchDetector;->contentWidth:F

    .line 304
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->currentScale:F

    .line 305
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->start()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isStarted:Z

    .line 320
    iget-boolean v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->isInClutchMode:Z

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/google/glass/touchpad/ClutchDetector;->exitClutchMode()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    goto :goto_0
.end method
