.class public Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
.super Landroid/opengl/GLSurfaceView;
.source "PanoramaView.java"


# static fields
.field private static final MAX_TAP_DIST_PX:I = 0xa

.field private static final MAX_TAP_TIME_MS:I = 0x190

.field private static final MIN_MOVE_DIST_PX:I = 0x4

.field private static final PITCH_STEP_DEGREES:F = 0.12f

.field private static final TAG:Ljava/lang/String;

.field private static final YAW_STEP_DEGREES:F = 0.12f


# instance fields
.field private mDownPos:Landroid/graphics/PointF;

.field private mIgnoreNextActionUpForThrowing:Z

.field private mLastZoom:Z

.field private mMotionLast:Landroid/graphics/PointF;

.field private mMotionScale:F

.field private mPitchAngleDegrees:F

.field private mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

.field private mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

.field private mThrowDelta:Landroid/graphics/PointF;

.field private mTimeTouchDown:J

.field private mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mYawAngleDegrees:F

.field private mZoomCurrentDistance:F

.field private mZoomStartingDistance:F

.field private mZooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
    .param p3, "enableIntroAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 42
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    .line 52
    new-instance v1, Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    .line 53
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    .line 54
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    .line 70
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-eqz p3, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    new-instance v2, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$1;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setOnInitializedCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 89
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setEGLContextClientVersion(I)V

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setRenderMode(I)V

    .line 92
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    sget-object v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->TAG:Ljava/lang/String;

    const-string v2, "Error creating Panorama view renderer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    return-object v0
.end method

.method private computeAngleChange(FF)V
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const v3, 0x3df5c28f    # 0.12f

    .line 336
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getOrientation()F

    move-result v0

    .line 337
    .local v0, "orientation":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 338
    :cond_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    mul-float v2, v3, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 339
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    mul-float v2, v3, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x3c790000    # -270.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 341
    :cond_3
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    mul-float v2, v3, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 342
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    mul-float v2, v3, p1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    goto :goto_0

    .line 344
    :cond_4
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_6

    .line 345
    :cond_5
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    mul-float v2, v3, p1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 346
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    mul-float v2, v3, p2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    goto :goto_0

    .line 348
    :cond_6
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_7

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 349
    :cond_7
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    mul-float v2, v3, p2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 350
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    mul-float v2, v3, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    goto :goto_0
.end method

.method private getPinchDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 325
    .local v0, "dx":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 326
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private stopThrowInProgress()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->stopThrow()V

    .line 360
    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->getThrowDelta(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->computeAngleChange(FF)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPitchAngleRadians(F)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setYawAngleRadians(F)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowDelta:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    .line 319
    :pswitch_0
    const/4 v9, 0x0

    :goto_0
    return v9

    .line 218
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->stopThrowInProgress()V

    .line 219
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    .line 220
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTimeTouchDown:J

    .line 222
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerDown(FFJ)V

    .line 224
    const/4 v9, 0x1

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    .line 229
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    .line 230
    const/4 v9, 0x1

    goto :goto_0

    .line 233
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 234
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerMove(FFJ)V

    .line 239
    :cond_0
    iget-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    if-eqz v9, :cond_1

    .line 240
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    .line 241
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 245
    :cond_1
    iget-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    if-eqz v9, :cond_2

    .line 246
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    .line 247
    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    iget v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    div-float v8, v9, v10

    .line 248
    .local v8, "zoomRatio":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->pinchZoom(F)V

    .line 251
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getCurrentFieldOfViewDegrees()F

    move-result v9

    const/high16 v10, 0x42b40000    # 90.0f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    .line 282
    .end local v8    # "zoomRatio":F
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 255
    :cond_2
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v0, v9, v10

    .line 256
    .local v0, "deltaX":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v1, v9, v10

    .line 258
    .local v1, "deltaY":F
    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    mul-float/2addr v0, v9

    .line 259
    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionScale:F

    mul-float/2addr v1, v9

    .line 262
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getTargetYawDegrees()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 263
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getTargetPitchDegrees()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->computeAngleChange(FF)V

    .line 267
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 268
    .local v4, "dx":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 269
    .local v5, "dy":F
    float-to-double v9, v4

    float-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 270
    .local v2, "dist":D
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    cmpl-double v9, v2, v9

    if-ltz v9, :cond_3

    .line 272
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPitchAngleRadians(F)V

    .line 273
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setYawAngleRadians(F)V

    .line 277
    :cond_3
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->x:F

    .line 278
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mMotionLast:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->y:F

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    goto :goto_1

    .line 288
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "dist":D
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :pswitch_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    .line 289
    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    iget v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    div-float v8, v9, v10

    .line 290
    .restart local v8    # "zoomRatio":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->endPinchZoom(F)V

    .line 291
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 292
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    .line 293
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 297
    .end local v8    # "zoomRatio":F
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 298
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 299
    .local v7, "y":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 300
    .restart local v4    # "dx":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 301
    .restart local v5    # "dy":F
    float-to-double v9, v4

    float-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 302
    .restart local v2    # "dist":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTimeTouchDown:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x190

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    cmpg-double v9, v2, v9

    if-gez v9, :cond_4

    .line 304
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->toggleAutoSpin()V

    .line 306
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 307
    iget-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    if-nez v9, :cond_6

    .line 308
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerUp(FFJ)V

    .line 314
    :goto_2
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v9, :cond_5

    .line 315
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 317
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 311
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    goto :goto_2

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "autoRotationCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 163
    return-void
.end method

.method public setCompassModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setCompassMode(Z)V

    .line 130
    return-void
.end method

.method public setCompassModePitchOffsetDegrees(F)V
    .locals 1
    .param p1, "pitchOffsetDegrees"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setCompassModePitchOffsetDegrees(F)V

    .line 101
    return-void
.end method

.method public setFovDegrees(F)V
    .locals 1
    .param p1, "fovDegrees"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setFieldOfViewDegrees(F)V

    .line 193
    return-void
.end method

.method public setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 1
    .param p1, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 200
    return-void
.end method

.method public setPitchDegrees(F)V
    .locals 2
    .param p1, "pitchDegrees"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPitchAngleRadians(F)V

    .line 185
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 114
    new-instance v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)V

    invoke-virtual {p2, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setSensorVelocityCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 120
    return-void
.end method

.method public setTouchReleaseCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 139
    return-void
.end method

.method public setYawDegrees(F)V
    .locals 2
    .param p1, "yawDegrees"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setYawAngleRadians(F)V

    .line 174
    return-void
.end method
