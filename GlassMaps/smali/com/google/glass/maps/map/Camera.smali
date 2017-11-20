.class public Lcom/google/glass/maps/map/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_BUILD:Z = false

.field public static final DEFAULT_BEARING:F = 0.0f

.field public static final DEFAULT_FOV:F = 30.0f

.field public static final DEFAULT_LOOKAHEAD:F = 0.0f

.field public static final DEFAULT_POSITION:Lcom/google/glass/maps/map/CameraPosition;

.field public static final DEFAULT_VIEWING_ANGLE:F = 0.0f

.field static final FAR_CAMERA_HEIGHT:F

.field private static final FAR_MAX_VISIBLE_ANGLE:F = 75.0f

.field private static final FAR_PLANE_DEPTH:F = 20.0f

.field private static final FIXED_FOCAL_RATIO:F

.field public static final FIXED_ONE:I = 0x10000

.field private static final LOG_E_TO_LOG_2:F

.field public static final MAX_FOV:F = 90.0f

.field private static final NEAR_PLANE_DEPTH:F = 0.1f

.field public static final NO_STATE_TOKEN:J = 0x0L

.field private static final WORLD_UP:Lcom/google/android/maps/driveabout/model/ab;

.field private static final ZERO_VISIBILITY_DISTANCE:F = 262144.0f

.field private static final sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mCachedCameraAxis:[D

.field private mCachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

.field private mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

.field private mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

.field private mCachedScaleFactor:F

.field private mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

.field private volatile mCameraStateToken:J

.field private mCenter:Lcom/google/android/maps/driveabout/model/ab;

.field private mCenterOffsetX:F

.field private mCombinedMatrix:[F

.field private mDistance:F

.field private mFixedFocalRatio:F

.field private mFocalRatio:F

.field private mFov:F

.field private mInverseCombinedMatrix:[F

.field private mMVPMatrix:[F

.field private mModelViewMatrix:[F

.field private mPosition:Lcom/google/glass/maps/map/CameraPosition;

.field private mProjectionMatrix:[F

.field private final mRenderThread:Ljava/lang/Thread;

.field private mScreenDensity:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTmpBuffer:[F

.field private final mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

.field private mViewportMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/google/glass/maps/map/Camera;->LOG_E_TO_LOG_2:F

    .line 48
    const/high16 v0, 0x48800000    # 262144.0f

    const-wide v1, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/google/glass/maps/map/Camera;->FAR_CAMERA_HEIGHT:F

    .line 52
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v6, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    sput-object v0, Lcom/google/glass/maps/map/Camera;->WORLD_UP:Lcom/google/android/maps/driveabout/model/ab;

    .line 82
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    const-wide v1, 0x4042b5e225fa658cL    # 37.420964

    const-wide v4, -0x3fa17b1f14983d79L    # -122.076228

    .line 83
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    sput-object v0, Lcom/google/glass/maps/map/Camera;->DEFAULT_POSITION:Lcom/google/glass/maps/map/CameraPosition;

    .line 92
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/glass/maps/map/Camera;->FIXED_FOCAL_RATIO:F

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/glass/maps/map/Camera;->sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/map/CameraPosition;IIF)V
    .locals 6

    .prologue
    .line 205
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/Camera;-><init>(Lcom/google/glass/maps/map/CameraPosition;IIFLjava/lang/Thread;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/map/CameraPosition;IIFLjava/lang/Thread;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Lcom/google/glass/maps/map/Camera;->FIXED_FOCAL_RATIO:F

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mFixedFocalRatio:F

    .line 166
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    .line 167
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    .line 168
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    .line 169
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    .line 170
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    .line 171
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    .line 174
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mTmpBuffer:[F

    .line 177
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    .line 189
    sget-object v0, Lcom/google/glass/maps/map/Camera;->sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/Camera;->mCameraStateToken:J

    .line 224
    iput p3, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    .line 225
    iput p2, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    .line 226
    iput p4, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    .line 227
    iput-object p5, p0, Lcom/google/glass/maps/map/Camera;->mRenderThread:Ljava/lang/Thread;

    .line 228
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/Camera;->setFov(F)V

    .line 229
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/Camera;->setPositionUnchecked(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 230
    return-void
.end method

.method private applyLookAhead()V
    .locals 12

    .prologue
    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 388
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    .line 389
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 390
    invoke-virtual {v2}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    .line 391
    iget-object v4, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 392
    invoke-virtual {v4}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    .line 393
    iget v6, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    float-to-double v6, v6

    .line 394
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    sub-double/2addr v2, v4

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    .line 396
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    .line 397
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 398
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 400
    return-void
.end method

.method private calculateDistance()V
    .locals 6

    .prologue
    .line 403
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41f00000    # 30.0f

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 404
    invoke-virtual {v3}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 409
    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-double v2, v2

    const/high16 v4, 0x43800000    # 256.0f

    iget v5, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    .line 411
    mul-double/2addr v0, v2

    .line 412
    double-to-float v0, v0

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFixedFocalRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    .line 413
    return-void
.end method

.method private final checkOnRenderThread()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method private computeCombinedMatrices()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v1, 0x0

    .line 1117
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    if-nez v0, :cond_0

    .line 1118
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeModelViewMatrix()V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    if-nez v0, :cond_1

    .line 1121
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeProjectionMatrix()V

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    if-nez v0, :cond_2

    .line 1124
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeViewportMatrix()V

    .line 1128
    :cond_2
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    .line 1129
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1132
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    .line 1134
    new-array v0, v6, [F

    .line 1135
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    iget-object v4, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1136
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    iget-object v6, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1138
    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    .line 1139
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 1140
    return-void
.end method

.method private computeModelViewMatrix()V
    .locals 7

    .prologue
    .line 1082
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    .line 1084
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v0

    .line 1085
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 1087
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 1088
    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 1090
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 1091
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 1092
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 1094
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getUp()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    .line 1095
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/map/Camera;->lookAt([FFFFFFF)V

    .line 1096
    return-void
.end method

.method private computeProjectionMatrix()V
    .locals 8

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    .line 1062
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    .line 1065
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getAspectRatio()F

    move-result v0

    .line 1066
    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    float-to-double v1, v1

    const-wide v3, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v5, v6, v1

    .line 1067
    neg-float v4, v5

    .line 1068
    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mCenterOffsetX:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 1069
    mul-float v2, v4, v0

    sub-float/2addr v2, v1

    .line 1070
    mul-float/2addr v0, v5

    sub-float v3, v0, v1

    .line 1071
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1073
    return-void
.end method

.method private computeViewportMatrix()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1099
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    .line 1102
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1103
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, -0x41000000    # -0.5f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1104
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 1105
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/16 v1, 0xf

    aput v5, v0, v1

    .line 1108
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1109
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    .line 1110
    return-void
.end method

.method private getCameraAxis()[D
    .locals 10

    .prologue
    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    const-wide v4, 0x4076800000000000L    # 360.0

    .line 446
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    if-nez v0, :cond_1

    .line 449
    const-wide v0, 0x4056800000000000L    # 90.0

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 450
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 451
    add-double/2addr v0, v4

    .line 455
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    .line 457
    mul-double/2addr v0, v6

    .line 458
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 459
    const/4 v6, 0x3

    new-array v6, v6, [D

    iput-object v6, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    .line 460
    iget-object v6, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v6, v7

    .line 461
    iget-object v6, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v7

    .line 462
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    return-object v0

    .line 452
    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_0

    .line 453
    sub-double/2addr v0, v4

    goto :goto_0
.end method

.method public static getMaxVisibleAngle(F)F
    .locals 2

    .prologue
    .line 935
    sget v0, Lcom/google/glass/maps/map/Camera;->FAR_CAMERA_HEIGHT:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 938
    const/high16 v0, 0x48800000    # 262144.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    .line 944
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0
.end method

.method public static getZoomToFitModelSize(FF)F
    .locals 3

    .prologue
    .line 625
    const/high16 v0, 0x41f00000    # 30.0f

    div-float v1, p0, p1

    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/glass/maps/map/Camera;->log2(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private invalidateCache(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1044
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    .line 1045
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

    .line 1046
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

    .line 1047
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    .line 1048
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedScaleFactor:F

    .line 1050
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    .line 1051
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    .line 1052
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    .line 1053
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    .line 1057
    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mViewportMatrix:[F

    .line 1059
    :cond_0
    return-void
.end method

.method static log2(F)F
    .locals 2

    .prologue
    .line 246
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/google/glass/maps/map/Camera;->LOG_E_TO_LOG_2:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static lookAt([FFFFFFF)V
    .locals 10

    .prologue
    .line 1159
    neg-float v0, p1

    .line 1160
    neg-float v1, p2

    .line 1161
    neg-float v2, p3

    .line 1164
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    div-float/2addr v3, v4

    .line 1165
    mul-float/2addr v0, v3

    .line 1166
    mul-float/2addr v1, v3

    .line 1167
    mul-float/2addr v2, v3

    .line 1170
    mul-float v3, v1, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    .line 1171
    mul-float v4, v2, p4

    mul-float v5, v0, p6

    sub-float/2addr v4, v5

    .line 1172
    mul-float v5, v0, p5

    mul-float v6, v1, p4

    sub-float/2addr v5, v6

    .line 1175
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v7

    div-float/2addr v6, v7

    .line 1176
    mul-float/2addr v3, v6

    .line 1177
    mul-float/2addr v4, v6

    .line 1178
    mul-float/2addr v5, v6

    .line 1181
    mul-float v6, v4, v2

    mul-float v7, v5, v1

    sub-float/2addr v6, v7

    .line 1182
    mul-float v7, v5, v0

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    .line 1183
    mul-float v8, v3, v1

    mul-float v9, v4, v0

    sub-float/2addr v8, v9

    .line 1185
    const/4 v9, 0x0

    aput v3, p0, v9

    .line 1186
    const/4 v3, 0x1

    aput v6, p0, v3

    .line 1187
    const/4 v3, 0x2

    neg-float v0, v0

    aput v0, p0, v3

    .line 1188
    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, p0, v0

    .line 1190
    const/4 v0, 0x4

    aput v4, p0, v0

    .line 1191
    const/4 v0, 0x5

    aput v7, p0, v0

    .line 1192
    const/4 v0, 0x6

    neg-float v1, v1

    aput v1, p0, v0

    .line 1193
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1195
    const/16 v0, 0x8

    aput v5, p0, v0

    .line 1196
    const/16 v0, 0x9

    aput v8, p0, v0

    .line 1197
    const/16 v0, 0xa

    neg-float v1, v2

    aput v1, p0, v0

    .line 1198
    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1200
    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1201
    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1202
    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1203
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 1205
    const/4 v0, 0x0

    neg-float v1, p1

    neg-float v2, p2

    neg-float v3, p3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1206
    return-void
.end method

.method private setPositionUnchecked(Lcom/google/glass/maps/map/CameraPosition;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/google/glass/maps/map/Camera;->sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/Camera;->mCameraStateToken:J

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/Camera;->invalidateCache(Z)V

    .line 363
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 365
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedCameraAxis:[D

    .line 367
    :cond_2
    iput-object p1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 368
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->calculateDistance()V

    .line 369
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 370
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 371
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->applyLookAhead()V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1022
    if-ne p0, p1, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return v0

    .line 1023
    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/map/Camera;

    if-eqz v2, :cond_3

    .line 1024
    check-cast p1, Lcom/google/glass/maps/map/Camera;

    .line 1025
    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    iget v3, p1, Lcom/google/glass/maps/map/Camera;->mDistance:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    iget-object v3, p1, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 1026
    invoke-virtual {v2, v3}, Lcom/google/glass/maps/map/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    iget v3, p1, Lcom/google/glass/maps/map/Camera;->mFov:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    iget v3, p1, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    iget v3, p1, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    iget v3, p1, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1033
    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 2

    .prologue
    .line 566
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v0

    return v0
.end method

.method public getCenter()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public getCenter(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 262
    return-void
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    return v0
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    return v0
.end method

.method public getFrustumClippedToAngle(F)Lcom/google/android/maps/driveabout/model/bg;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 959
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v0

    int-to-float v0, v0

    .line 960
    invoke-static {v0}, Lcom/google/glass/maps/map/Camera;->getMaxVisibleAngle(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 962
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v1

    sub-float v1, v0, v1

    .line 963
    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    .line 971
    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/glass/maps/map/Camera;->mFocalRatio:F

    mul-float/2addr v2, v3

    float-to-double v3, v1

    .line 972
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    .line 973
    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 976
    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    invoke-virtual {p0, v5, v2}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneCoordinates(FF)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 977
    iget v3, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneCoordinates(FF)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 979
    invoke-virtual {p0, v5, v1}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneCoordinates(FF)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 980
    iget v5, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, v5, v1}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneCoordinates(FF)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 983
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 984
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v3}, Lcom/google/glass/maps/map/CameraPosition;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    iget v5, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x51

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "pos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " farAngle: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " top:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :cond_1
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    return-object v0
.end method

.method public getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 900
    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 899
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/Camera;->getFrustumClippedToAngle(F)Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedFrustum:Lcom/google/android/maps/driveabout/model/bg;

    return-object v0
.end method

.method public getGroundPlaneCoordinates(FF)Lcom/google/android/maps/driveabout/model/ab;
    .locals 11

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 677
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    if-nez v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeCombinedMatrices()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mTmpBuffer:[F

    .line 685
    aput p1, v0, v3

    .line 686
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 687
    const/4 v2, 0x2

    aput v6, v0, v2

    .line 688
    const/4 v2, 0x3

    aput v6, v0, v2

    .line 689
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 694
    const/4 v2, 0x7

    aget v2, v0, v2

    div-float v2, v6, v2

    .line 695
    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    .line 696
    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v5, v1

    .line 697
    const/4 v1, 0x6

    aget v0, v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    .line 699
    cmpl-double v2, v0, v9

    if-ltz v2, :cond_1

    .line 701
    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 704
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    .line 705
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    .line 706
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v2

    .line 710
    sub-double v0, v9, v0

    div-double v0, v9, v0

    .line 711
    int-to-double v9, v2

    mul-double/2addr v3, v9

    iget-object v9, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v3, v9

    int-to-double v9, v7

    sub-double/2addr v3, v9

    mul-double/2addr v3, v0

    int-to-double v9, v7

    add-double/2addr v3, v9

    .line 712
    int-to-double v9, v2

    mul-double/2addr v5, v9

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    int-to-double v9, v2

    add-double/2addr v5, v9

    int-to-double v9, v8

    sub-double/2addr v5, v9

    mul-double/2addr v0, v5

    int-to-double v5, v8

    add-double v1, v0, v5

    .line 713
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    double-to-int v3, v3

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    goto :goto_0
.end method

.method public getGroundPlaneQuad(FFFF)Lcom/google/android/maps/driveabout/model/l;
    .locals 21

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    if-nez v2, :cond_0

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/maps/map/Camera;->computeCombinedMatrices()V

    .line 737
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v8

    .line 739
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v9

    .line 740
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v10

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    sub-int v11, v2, v8

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    sub-int v12, v2, v9

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/Camera;->mTmpBuffer:[F

    .line 749
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 750
    const/4 v3, 0x1

    aput p3, v2, v3

    .line 751
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 752
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 753
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 756
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 757
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 758
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 759
    const/4 v13, 0x6

    aget v13, v2, v13

    mul-float/2addr v3, v13

    float-to-double v13, v3

    .line 761
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_1

    .line 763
    const/4 v2, 0x0

    .line 830
    :goto_0
    return-object v2

    .line 767
    :cond_1
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v13, v17, v13

    div-double v13, v15, v13

    .line 768
    int-to-double v15, v10

    mul-double v3, v4, v15

    int-to-double v15, v11

    add-double/2addr v3, v15

    mul-double/2addr v3, v13

    int-to-double v15, v8

    add-double/2addr v3, v15

    .line 769
    int-to-double v15, v10

    mul-double v5, v6, v15

    int-to-double v15, v12

    add-double/2addr v5, v15

    mul-double/2addr v5, v13

    int-to-double v13, v9

    add-double/2addr v5, v13

    .line 770
    new-instance v13, Lcom/google/android/maps/driveabout/model/ab;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v13, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 776
    const/4 v3, 0x0

    aput p2, v2, v3

    .line 777
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 778
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 779
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 780
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 781
    const/4 v14, 0x6

    aget v14, v2, v14

    mul-float/2addr v3, v14

    float-to-double v14, v3

    .line 783
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_2

    .line 784
    const/4 v2, 0x0

    goto :goto_0

    .line 786
    :cond_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    .line 787
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v3, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    mul-double/2addr v3, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    .line 788
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v5, v6, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v5, v5, v16

    mul-double/2addr v5, v14

    int-to-double v14, v9

    add-double/2addr v5, v14

    .line 789
    new-instance v14, Lcom/google/android/maps/driveabout/model/ab;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v14, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 795
    const/4 v3, 0x1

    aput p4, v2, v3

    .line 796
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 797
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 798
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 799
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 800
    const/4 v15, 0x6

    aget v15, v2, v15

    mul-float/2addr v3, v15

    float-to-double v15, v3

    .line 802
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v15, v17

    if-ltz v3, :cond_3

    .line 803
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 805
    :cond_3
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v15, v19, v15

    div-double v15, v17, v15

    .line 806
    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v3, v4, v17

    int-to-double v0, v11

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    mul-double/2addr v3, v15

    int-to-double v0, v8

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    .line 807
    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v5, v6, v17

    int-to-double v0, v12

    move-wide/from16 v17, v0

    add-double v5, v5, v17

    mul-double/2addr v5, v15

    int-to-double v15, v9

    add-double/2addr v5, v15

    .line 808
    new-instance v15, Lcom/google/android/maps/driveabout/model/ab;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v15, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 814
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 815
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/Camera;->mInverseCombinedMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 816
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    .line 817
    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 818
    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    .line 819
    const/16 v16, 0x6

    aget v2, v2, v16

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 821
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v2, v16

    if-ltz v16, :cond_4

    .line 822
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 824
    :cond_4
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v2, v18, v2

    div-double v2, v16, v2

    .line 825
    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    .line 826
    int-to-double v10, v10

    mul-double/2addr v6, v10

    int-to-double v10, v12

    add-double/2addr v6, v10

    mul-double/2addr v2, v6

    int-to-double v6, v9

    add-double/2addr v2, v6

    .line 827
    new-instance v6, Lcom/google/android/maps/driveabout/model/ab;

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-direct {v6, v4, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 830
    invoke-static {v6, v15, v13, v14}, Lcom/google/android/maps/driveabout/model/l;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/l;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getLabelingFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;
    .locals 6

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    .line 920
    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mFocalRatio:F

    div-float/2addr v1, v2

    .line 921
    float-to-double v2, v0

    .line 922
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, v1

    add-double v1, v2, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    .line 921
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v1, v0

    .line 923
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v1

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/Camera;->getFrustumClippedToAngle(F)Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    goto :goto_0
.end method

.method public getLookAhead()F
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v0

    return v0
.end method

.method public getMVPMatrix()[F
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    if-nez v0, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeCombinedMatrices()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mMVPMatrix:[F

    return-object v0
.end method

.method public getModelSize(FF)F
    .locals 3

    .prologue
    .line 580
    mul-float v0, p2, p1

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFocalRatio:F

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getModelViewMatrix()[F
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    if-nez v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeModelViewMatrix()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mModelViewMatrix:[F

    return-object v0
.end method

.method public getPixelSize()F
    .locals 2

    .prologue
    .line 632
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/map/Camera;->getModelSize(FF)F

    move-result v0

    return v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeProjectionMatrix()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mProjectionMatrix:[F

    return-object v0
.end method

.method public getRight()Lcom/google/android/maps/driveabout/model/ab;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    const-wide v4, 0x4076800000000000L    # 360.0

    .line 490
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 494
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    .line 498
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    .line 499
    add-double/2addr v0, v4

    .line 503
    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 504
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    iput-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

    .line 514
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0

    .line 500
    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 501
    sub-double/2addr v0, v4

    goto :goto_0

    .line 508
    :cond_4
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 509
    sget-object v1, Lcom/google/glass/maps/map/Camera;->WORLD_UP:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->g(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 510
    const/high16 v1, 0x47800000    # 65536.0f

    invoke-static {v0, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 511
    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedRight:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_1
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedScaleFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 556
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedScaleFactor:F

    .line 558
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedScaleFactor:F

    return v0
.end method

.method public getSceneDepth(Lcom/google/android/maps/driveabout/model/ab;Z)F
    .locals 7

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->getCameraAxis()[D

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 610
    if-eqz p2, :cond_0

    .line 611
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->h(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mTmpPoint:Lcom/google/android/maps/driveabout/model/ab;

    .line 614
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double v0, v1, v3

    double-to-float v0, v0

    return v0
.end method

.method public getScreenCoordinates(Lcom/google/android/maps/driveabout/model/ab;)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 843
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 844
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/maps/map/Camera;->getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V

    .line 845
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 846
    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v3

    .line 847
    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v1, v4

    .line 848
    return-object v1
.end method

.method public getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 863
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    if-nez v0, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->computeCombinedMatrices()V

    .line 867
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    sub-int/2addr v0, v2

    .line 868
    const/high16 v2, 0x20000000

    if-lt v0, v2, :cond_2

    .line 869
    sub-int/2addr v0, v4

    .line 877
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v2

    .line 878
    int-to-float v0, v0

    aput v0, p2, v3

    .line 879
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v0

    iget-object v4, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aput v0, p2, v6

    .line 880
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v4

    int-to-float v4, v4

    aput v4, p2, v0

    .line 881
    const/4 v0, 0x3

    int-to-float v2, v2

    aput v2, p2, v0

    .line 884
    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCombinedMatrix:[F

    move-object v0, p2

    move-object v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 887
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x7

    aget v2, p2, v2

    div-float/2addr v0, v2

    .line 888
    aget v1, p2, v1

    mul-float/2addr v1, v0

    aput v1, p2, v3

    .line 889
    const/4 v1, 0x5

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aput v0, p2, v6

    .line 890
    return-void

    .line 870
    :cond_2
    const/high16 v2, -0x20000000

    if-ge v0, v2, :cond_1

    .line 871
    add-int/2addr v0, v4

    goto :goto_0
.end method

.method public getScreenDensity()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    return v0
.end method

.method public getScreenSize(FF)F
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mFocalRatio:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    return v0
.end method

.method public getShiftedZoom()F
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    return v0
.end method

.method public getStateToken()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/google/glass/maps/map/Camera;->mCameraStateToken:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public getUp()Lcom/google/android/maps/driveabout/model/ab;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x40f0000000000000L    # 65536.0

    const-wide/16 v6, 0x0

    const-wide v4, 0x4076800000000000L    # 360.0

    .line 522
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 526
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 529
    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 530
    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    .line 531
    add-double/2addr v0, v4

    .line 535
    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 536
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    .line 537
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    iput-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

    .line 547
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0

    .line 532
    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 533
    sub-double/2addr v0, v4

    goto :goto_0

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 541
    const/high16 v1, 0x46800000    # 16384.0f

    invoke-static {v0, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 542
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getRight()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->g(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 543
    const/high16 v1, 0x47800000    # 65536.0f

    invoke-static {v0, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 544
    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedUp:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_1
.end method

.method public getViewingAngle()F
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    return v0
.end method

.method public getWorldPosition()Lcom/google/android/maps/driveabout/model/ab;
    .locals 8

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->getCameraAxis()[D

    move-result-object v0

    .line 475
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget v2, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    neg-float v2, v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    .line 476
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    neg-float v3, v3

    float-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    .line 477
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    neg-float v4, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    .line 478
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    iput-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    .line 479
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCachedPosition:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1007
    .line 1009
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1010
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    add-int/2addr v0, v1

    .line 1011
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    add-int/2addr v0, v1

    .line 1012
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1013
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1015
    :goto_0
    add-int/2addr v0, v1

    .line 1016
    return v0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 1015
    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setCenterOffsetX(F)V
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mCenterOffsetX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 352
    iput p1, p0, Lcom/google/glass/maps/map/Camera;->mCenterOffsetX:F

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/Camera;->invalidateCache(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public setFixedFocalRatioForTesting(F)V
    .locals 0

    .prologue
    .line 1225
    iput p1, p0, Lcom/google/glass/maps/map/Camera;->mFixedFocalRatio:F

    .line 1226
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->calculateDistance()V

    .line 1227
    return-void
.end method

.method public setFov(F)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 332
    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 333
    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 334
    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    .line 335
    sget-object v0, Lcom/google/glass/maps/map/Camera;->sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/Camera;->mCameraStateToken:J

    .line 336
    iget v0, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mFocalRatio:F

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/Camera;->invalidateCache(Z)V

    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 340
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->applyLookAhead()V

    .line 343
    :cond_0
    return-void
.end method

.method public setPosition(Lcom/google/glass/maps/map/CameraPosition;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/Camera;->setPositionUnchecked(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 381
    return-void
.end method

.method public setScreenDimensions(IIF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 309
    sget-object v0, Lcom/google/glass/maps/map/Camera;->sStateTokenGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/Camera;->mCameraStateToken:J

    .line 310
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenWidth:I

    .line 311
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/Camera;->mScreenHeight:I

    .line 312
    iput p3, p0, Lcom/google/glass/maps/map/Camera;->mScreenDensity:F

    .line 313
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->calculateDistance()V

    .line 314
    invoke-direct {p0}, Lcom/google/glass/maps/map/Camera;->applyLookAhead()V

    .line 315
    invoke-direct {p0, v2}, Lcom/google/glass/maps/map/Camera;->invalidateCache(Z)V

    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 994
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 995
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 996
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    .line 997
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/map/Camera;->mDistance:F

    iget-object v2, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 999
    invoke-virtual {v2}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/map/Camera;->mPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 1000
    invoke-virtual {v3}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v3

    iget v4, p0, Lcom/google/glass/maps/map/Camera;->mFov:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x46

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
