.class public Lcom/google/android/apps/lightcycle/panorama/TargetManager;
.super Ljava/lang/Object;
.source "TargetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;,
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;
    }
.end annotation


# static fields
.field private static final ACTIVE_TARGET_ANIMATION_RATE:F = 0.1f

.field private static final CONTRASTCENTER:F = 0.9f

.field private static final CONTRASTWAVEMAG:F = 0.3f

.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final ENABLE_GLOW_ANIMATION:Z = false

.field private static final GLOWNEARESTOFFSET:F = 0.4f

.field private static final GLOWRATE:F = 0.010471967f

.field private static final HIT_TARGET_ANIMATION_RATE:F = 0.1f

.field private static final MAX_ACTIVE_TARGET_SCALE:F = 1.0f

.field private static final MAX_ANGLE_THRESHOLD_RAD:F

.field private static final MAX_ANGULAR_VELOCITY_RAD_PER_SEC:F = 0.6981317f

.field private static final MAX_TARGET_HIT_ANGLE_DEG:F = 3.5f

.field private static final MIN_ACTIVE_TARGET_SCALE:F = 0.4f

.field private static final MIN_ANGLE_THRESHOLD_RAD:F

.field private static final MIN_ANGULAR_VELOCITY_RAD_PER_SEC:F = 0.17453292f

.field private static final MIN_FIRST_TARGET_ALPHA:F = 0.75f

.field private static final MIN_TARGET_ALPHA:F = 0.0f

.field private static final MIN_TARGET_HIT_ANGLE_DEG:F = 2.0f

.field private static final VIEWFINDER_ALPHA:F = 0.4f


# instance fields
.field private activeTargetAlpha:F

.field private activeTargetIndex:I

.field private alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

.field private currentDeviceTransform:[F

.field private deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private halfSurfaceHeight:F

.field private halfSurfaceWidth:F

.field private hitTargetAlpha:F

.field private hitTargetTransform:[F

.field private mContext:Landroid/content/Context;

.field private mTargetInRange:Z

.field private mTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private projected:[F

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private targetHitAngleDeg:F

.field private targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

.field private targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private tempTransform:[F

.field private transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private unitVector:[F

.field private viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private viewfinderCoord:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->degreesToRadians(F)F

    move-result v0

    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    .line 58
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->degreesToRadians(F)F

    move-result v0

    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    .line 124
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    .line 125
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    .line 127
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargetInRange:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    .line 136
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 137
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 138
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 141
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetHitAngleDeg:F

    .line 144
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 145
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 148
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;-><init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .line 152
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    .line 153
    return-void

    .line 124
    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computeProximityAlphaAndScale([FLcom/google/android/apps/lightcycle/math/Vector3;Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;)V
    .locals 11
    .param p1, "targetTransform"    # [F
    .param p2, "camVector"    # Lcom/google/android/apps/lightcycle/math/Vector3;
    .param p3, "pair"    # Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .prologue
    const v10, 0x3ecccccd    # 0.4f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 466
    new-instance v4, Lcom/google/android/apps/lightcycle/math/Vector3;

    const/16 v5, 0x8

    aget v5, p1, v5

    neg-float v5, v5

    const/16 v6, 0x9

    aget v6, p1, v6

    neg-float v6, v6

    const/16 v7, 0xa

    aget v7, p1, v7

    neg-float v7, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 468
    .local v4, "targetVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-virtual {v4, p2}, Lcom/google/android/apps/lightcycle/math/Vector3;->dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F

    move-result v2

    .line 469
    .local v2, "dotProduct":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 472
    .local v0, "angle":F
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 473
    iput v8, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 474
    iput v8, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 493
    :goto_0
    return-void

    .line 477
    :cond_0
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 479
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    sget v6, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float v1, v5, v6

    .line 480
    .local v1, "angleRange":F
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float v5, v0, v5

    div-float/2addr v5, v1

    sub-float v3, v8, v5

    .line 481
    .local v3, "ratio":F
    mul-float v5, v3, v8

    add-float/2addr v5, v9

    iput v5, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 484
    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v3

    add-float/2addr v5, v10

    iput v5, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto :goto_0

    .line 489
    .end local v1    # "angleRange":F
    .end local v3    # "ratio":F
    :cond_1
    iput v9, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 490
    iput v10, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto :goto_0
.end method

.method private static degreesToRadians(F)F
    .locals 1
    .param p0, "degrees"    # F

    .prologue
    .line 598
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method private drawHitTarget([F[F)V
    .locals 2
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTarget([F[F[FLcom/google/android/apps/lightcycle/opengl/Sprite;)V

    .line 539
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 542
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    goto :goto_0
.end method

.method private drawTarget([F[F[FLcom/google/android/apps/lightcycle/opengl/Sprite;)V
    .locals 6
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F
    .param p3, "targetTransform"    # [F
    .param p4, "sprite"    # Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    move-object v2, p1

    move v3, v1

    move-object v4, p3

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 514
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 519
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float v2, v0, v1

    .line 520
    .local v2, "u":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float v3, v0, v1

    .line 524
    .local v3, "v":F
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 525
    return-void
.end method

.method private drawViewfinder([F)V
    .locals 7
    .param p1, "orthographicTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x42b40000    # 90.0f

    const v0, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    .line 550
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v5

    iget v2, v5, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    .line 552
    .local v2, "nearestRotation":F
    cmpl-float v5, v2, v3

    if-eqz v5, :cond_0

    const/high16 v5, -0x3d4c0000    # -90.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 555
    .local v1, "isLandscape":Z
    :goto_0
    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 556
    const/16 v5, 0x302

    const/16 v6, 0x303

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 557
    if-eqz v1, :cond_3

    .line 559
    .local v3, "viewFinderAngle":F
    :goto_1
    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 563
    .local v0, "alpha":F
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 564
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 565
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, p1, v5, v6, v3}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotatedCentered([FFFF)V

    .line 567
    return-void

    .line 552
    .end local v0    # "alpha":F
    .end local v1    # "isLandscape":Z
    .end local v3    # "viewFinderAngle":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isLandscape":Z
    :cond_3
    move v3, v4

    .line 557
    goto :goto_1
.end method

.method private getTargetContrastFactor()F
    .locals 4

    .prologue
    .line 458
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 460
    .local v0, "elapsed":J
    long-to-float v2, v0

    const v3, 0x3c2b929d

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    add-float/2addr v2, v3

    return v2
.end method

.method private normalize([F)V
    .locals 4
    .param p1, "vec4"    # [F

    .prologue
    const/4 v3, 0x3

    .line 570
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 571
    const/4 v0, 0x1

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 572
    const/4 v0, 0x2

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 573
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, v3

    .line 574
    return-void
.end method

.method private setRotationTranspose([FI[F)V
    .locals 3
    .param p1, "r"    # [F
    .param p2, "offset"    # I
    .param p3, "t"    # [F

    .prologue
    const/4 v2, 0x0

    .line 579
    const/4 v0, 0x0

    aget v1, p1, p2

    aput v1, p3, v0

    .line 580
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    aput v1, p3, v0

    .line 581
    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    aput v1, p3, v0

    .line 582
    const/4 v0, 0x3

    aput v2, p3, v0

    .line 583
    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    aput v1, p3, v0

    .line 584
    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x4

    aget v1, p1, v1

    aput v1, p3, v0

    .line 585
    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x5

    aget v1, p1, v1

    aput v1, p3, v0

    .line 586
    const/4 v0, 0x7

    aput v2, p3, v0

    .line 587
    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget v1, p1, v1

    aput v1, p3, v0

    .line 588
    const/16 v0, 0x9

    add-int/lit8 v1, p2, 0x7

    aget v1, p1, v1

    aput v1, p3, v0

    .line 589
    const/16 v0, 0xa

    add-int/lit8 v1, p2, 0x8

    aget v1, p1, v1

    aput v1, p3, v0

    .line 590
    const/16 v0, 0xb

    aput v2, p3, v0

    .line 591
    const/16 v0, 0xc

    aput v2, p3, v0

    .line 592
    const/16 v0, 0xd

    aput v2, p3, v0

    .line 593
    const/16 v0, 0xe

    aput v2, p3, v0

    .line 594
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p3, v0

    .line 595
    return-void
.end method

.method private setTargetHitAngle()V
    .locals 6

    .prologue
    const v5, 0x3e32b8c2

    .line 496
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAngularVelocitySquaredRad()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 498
    .local v2, "velRad":F
    const v4, 0x3f32b8c2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 499
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 500
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 501
    .local v1, "hitAngleRange":F
    const v3, 0x3f060a92

    .line 503
    .local v3, "velRange":F
    const/high16 v4, 0x40000000    # 2.0f

    sub-float v5, v2, v5

    div-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const v5, 0x3c8efa35

    mul-float v0, v4, v5

    .line 506
    .local v0, "hitAngleRadians":F
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetTargetHitAngleRadians(F)V

    .line 507
    return-void
.end method


# virtual methods
.method public drawTargetsOrthographic([F[F)V
    .locals 25
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F

    .prologue
    .line 321
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v21

    .line 322
    .local v21, "nearest":I
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    .line 323
    if-ltz v21, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargetInRange:Z

    .line 324
    if-ltz v21, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 331
    :goto_1
    const/high16 v16, 0x3f800000    # 1.0f

    .line 335
    .local v16, "contrastFactor":F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setTargetHitAngle()V

    .line 338
    new-instance v15, Lcom/google/android/apps/lightcycle/math/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    neg-float v4, v4

    invoke-direct {v15, v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 343
    .local v15, "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setContrastFactor(F)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    neg-float v0, v2

    move/from16 v17, v0

    .line 354
    .local v17, "deviceRise":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 356
    .local v22, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 357
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 358
    .local v6, "targetTransform":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 360
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->computeProximityAlphaAndScale([FLcom/google/android/apps/lightcycle/math/Vector3;Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v0, v2, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    move/from16 v23, v0

    .line 368
    .local v23, "targetAlpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v12, v2, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 371
    .local v12, "targetScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 372
    const/high16 v2, 0x3f400000    # 0.75f

    move/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 373
    const/high16 v12, 0x3f800000    # 1.0f

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float v9, v2, v3

    .line 385
    .local v9, "u":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float v10, v2, v3

    .line 389
    .local v10, "v":F
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v21

    if-ne v2, v0, :cond_4

    .line 394
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    sub-float/2addr v2, v3

    mul-float v14, v2, v23

    .line 395
    .local v14, "alphaTarget":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    mul-float v13, v2, v23

    .line 396
    .local v13, "alphaNearest":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v13}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 397
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v14}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 400
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    goto/16 :goto_2

    .line 409
    .end local v6    # "targetTransform":[F
    .end local v9    # "u":F
    .end local v10    # "v":F
    .end local v12    # "targetScale":F
    .end local v13    # "alphaNearest":F
    .end local v14    # "alphaTarget":F
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    .end local v23    # "targetAlpha":F
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 417
    .end local v17    # "deviceRise":F
    :catch_0
    move-exception v18

    .line 418
    .local v18, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 420
    .end local v18    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :goto_3
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 421
    return-void

    .line 323
    .end local v15    # "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    .end local v16    # "contrastFactor":F
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 328
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    goto/16 :goto_1

    .line 404
    .restart local v6    # "targetTransform":[F
    .restart local v9    # "u":F
    .restart local v10    # "v":F
    .restart local v12    # "targetScale":F
    .restart local v15    # "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    .restart local v16    # "contrastFactor":F
    .restart local v17    # "deviceRise":F
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    .restart local v23    # "targetAlpha":F
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 405
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    goto/16 :goto_2

    .line 409
    .end local v6    # "targetTransform":[F
    .end local v9    # "u":F
    .end local v10    # "v":F
    .end local v12    # "targetScale":F
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v23    # "targetAlpha":F
    :cond_5
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :try_start_4
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawHitTarget([F[F)V

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawViewfinder([F)V
    :try_end_4
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public drawTargetsPerspective([F)V
    .locals 8
    .param p1, "globalTransform"    # [F

    .prologue
    const/16 v7, 0x303

    .line 430
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v4

    .line 431
    .local v4, "nearest":I
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->getTargetContrastFactor()F

    move-result v0

    .line 434
    .local v0, "contrastFactor":F
    const/4 v6, 0x1

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 435
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 436
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setContrastFactor(F)V

    .line 438
    :try_start_0
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 439
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 440
    .local v5, "targetTransform":[F
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 441
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setTransform([F)V

    .line 442
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v6, p1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawNoBinding([F)V

    .line 443
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setContrastFactor(F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "targetTransform":[F
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 452
    .end local v1    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :cond_0
    const/16 v6, 0x302

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 453
    return-void

    .line 445
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "targetTransform":[F
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setTransform([F)V

    .line 446
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v6, p1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawNoBinding([F)V
    :try_end_1
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public init(II)V
    .locals 13
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 177
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 179
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/apps/lightcycle/R$drawable;->pano_target_default:I

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const/high16 v4, 0x3f800000    # 1.0f

    .line 185
    .local v4, "scale":F
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 186
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/google/android/apps/lightcycle/R$drawable;->pano_target_default:I

    invoke-virtual {v5, v6, v7, v9, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 188
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 189
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/google/android/apps/lightcycle/R$drawable;->pano_target_activated:I

    invoke-virtual {v5, v6, v7, v9, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 193
    :try_start_0
    new-instance v5, Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    .line 194
    new-instance v5, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    if-nez v5, :cond_0

    .line 199
    const-string v5, "Failed to create target shader"

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-nez v5, :cond_1

    .line 202
    const-string v5, "Failed to create texture shader"

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 207
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 210
    int-to-float v5, p1

    div-float/2addr v5, v11

    iput v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    .line 211
    int-to-float v5, p2

    div-float/2addr v5, v11

    iput v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    .line 213
    const/16 v5, 0x10

    new-array v2, v5, [F

    .line 214
    .local v2, "identity":[F
    invoke-static {v2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 219
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/google/android/apps/lightcycle/R$drawable;->pano_reticule_default:I

    invoke-virtual {v5, v6, v7, v12, v10}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 221
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 222
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 223
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/google/android/apps/lightcycle/R$drawable;->pano_reticule_activated:I

    invoke-virtual {v5, v6, v7, v12, v10}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 225
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 228
    new-instance v5, Landroid/graphics/Point;

    div-int/lit8 v6, p1, 0x2

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/lit8 v7, p2, 0x2

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    .line 231
    return-void

    .line 195
    .end local v2    # "identity":[F
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 238
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 239
    .local v0, "identity":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 240
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public setCurrentOrientation([F)V
    .locals 0
    .param p1, "transform"    # [F

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 291
    return-void
.end method

.method public setDeviceOrientationDetector(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 300
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0
    .param p1, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 310
    return-void
.end method

.method public targetInRange()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargetInRange:Z

    return v0
.end method

.method public updateTargets()V
    .locals 8

    .prologue
    .line 247
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetDeletedTargets()[I

    move-result-object v0

    .line 248
    .local v0, "deletedTargets":[I
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNewTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v3

    .line 251
    .local v3, "newTargets":[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
    if-eqz v0, :cond_2

    .line 252
    array-length v6, v0

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 255
    aget v6, v0, v1

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    if-ne v6, v7, :cond_0

    .line 256
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 257
    .local v5, "transform":[F
    if-eqz v5, :cond_1

    .line 258
    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 259
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 267
    .end local v5    # "transform":[F
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    .restart local v5    # "transform":[F
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 262
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    goto :goto_1

    .line 272
    .end local v1    # "i":I
    .end local v5    # "transform":[F
    :cond_2
    if-eqz v3, :cond_4

    .line 273
    array-length v2, v3

    .line 274
    .local v2, "n":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 275
    const/16 v6, 0x10

    new-array v4, v6, [F

    .line 276
    .local v4, "tform":[F
    aget-object v6, v3, v1

    iget-object v6, v6, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setRotationTranspose([FI[F)V

    .line 277
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget-object v7, v3, v1

    iget v7, v7, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    .end local v4    # "tform":[F
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of targets "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 281
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    return-void
.end method
