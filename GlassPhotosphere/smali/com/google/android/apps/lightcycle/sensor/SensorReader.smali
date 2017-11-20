.class public Lcom/google/android/apps/lightcycle/sensor/SensorReader;
.super Ljava/lang/Object;
.source "SensorReader.java"


# static fields
.field private static final NEXUS7:Ljava/lang/String; = "Nexus 7"

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private accelFilterCoefficient:F

.field private acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private angularVelocitySqrRad:F

.field private ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

.field private filterInitialized:Z

.field private filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private geomagnetic:[F

.field private gyroBias:[F

.field private gyroLastTimestamp:J

.field private imuOrientationDeg:F

.field private lastGlMatrixFromEkf:[D

.field private numGyroSamples:I

.field private rotationAccumulator:[F

.field private running:Z

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorVelocityCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private tForm:[F

.field private useEkf:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    .line 33
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 36
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 37
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 38
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 39
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->accelFilterCoefficient:F

    .line 42
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    .line 46
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    .line 47
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    .line 48
    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 51
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    .line 52
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    .line 55
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 58
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    .line 63
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 64
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    .line 435
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->updateAccelerometerState(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/lightcycle/sensor/SensorReader;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/util/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->updateGyroState(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static get3x3Matrix([F)[F
    .locals 7
    .param p0, "mat4x4"    # [F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 379
    .local v0, "mat3x3":[F
    aget v1, p0, v2

    aput v1, v0, v2

    aget v1, p0, v3

    aput v1, v0, v3

    aget v1, p0, v4

    aput v1, v0, v4

    .line 380
    const/4 v1, 0x3

    aget v2, p0, v5

    aput v2, v0, v1

    aget v1, p0, v6

    aput v1, v0, v5

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v0, v6

    .line 381
    const/4 v1, 0x6

    const/16 v2, 0x8

    aget v2, p0, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    aget v2, p0, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aget v2, p0, v2

    aput v2, v0, v1

    .line 382
    return-object v0
.end method

.method private resetAccumulator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    aput v2, v0, v3

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 339
    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 340
    return-void
.end method

.method private updateAccelerometerState(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 400
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 403
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    if-nez v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 406
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->accelFilterCoefficient:F

    .line 409
    .local v0, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v0

    .line 410
    .local v1, "oneMinusAlpha":F
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 412
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 414
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    goto :goto_0
.end method

.method private updateGyroState(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 422
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 423
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x3089705f    # 1.0E-9f

    mul-float v0, v1, v2

    .line 424
    .local v0, "dt":F
    monitor-enter p0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 426
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 427
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 428
    iget v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    .line 429
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v0    # "dt":F
    :cond_0
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroLastTimestamp:J

    .line 432
    return-void

    .line 429
    .restart local v0    # "dt":F
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public enableEkf(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    .line 145
    return-void
.end method

.method public getAccelInPlaneRotationRadians()F
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v0, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    iget v2, v2, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getAccelRotationEstimate()[F
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 244
    new-instance v2, Lcom/google/android/apps/lightcycle/math/Vector3;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v2, v8}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(Lcom/google/android/apps/lightcycle/math/Vector3;)V

    .line 247
    .local v2, "gravity":Lcom/google/android/apps/lightcycle/math/Vector3;
    new-instance v7, Lcom/google/android/apps/lightcycle/math/Vector3;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct {v7, v9, v8, v9}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 249
    .local v7, "yaxis":Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-virtual {v7, v2}, Lcom/google/android/apps/lightcycle/math/Vector3;->crossProduct(Lcom/google/android/apps/lightcycle/math/Vector3;)Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v6

    .line 250
    .local v6, "v":Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-virtual {v7, v2}, Lcom/google/android/apps/lightcycle/math/Vector3;->dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F

    move-result v0

    .line 251
    .local v0, "e":F
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    invoke-virtual {v6, v6}, Lcom/google/android/apps/lightcycle/math/Vector3;->dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F

    move-result v9

    div-float v3, v8, v9

    .line 252
    .local v3, "h":F
    const/16 v8, 0x9

    new-array v1, v8, [F

    .line 253
    .local v1, "f":[F
    iget v8, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float v4, v3, v8

    .line 254
    .local v4, "hx":F
    iget v8, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float v5, v3, v8

    .line 255
    .local v5, "hz":F
    const/4 v8, 0x0

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v9, v0

    aput v9, v1, v8

    .line 256
    const/4 v8, 0x1

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v4

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    sub-float/2addr v9, v10

    aput v9, v1, v8

    .line 257
    const/4 v8, 0x2

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v9, v4

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    add-float/2addr v9, v10

    aput v9, v1, v8

    .line 258
    const/4 v8, 0x3

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v4

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    add-float/2addr v9, v10

    aput v9, v1, v8

    .line 259
    const/4 v8, 0x4

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v3

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v0

    aput v9, v1, v8

    .line 260
    const/4 v8, 0x5

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v5

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    sub-float/2addr v9, v10

    aput v9, v1, v8

    .line 261
    const/4 v8, 0x6

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v9, v4

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    sub-float/2addr v9, v10

    aput v9, v1, v8

    .line 262
    const/4 v8, 0x7

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v9, v5

    iget v10, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    add-float/2addr v9, v10

    aput v9, v1, v8

    .line 263
    const/16 v8, 0x8

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v9, v5

    add-float/2addr v9, v0

    aput v9, v1, v8

    .line 264
    return-object v1
.end method

.method public getAccleration()Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->acceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method public getAndResetGyroData()[F
    .locals 2

    .prologue
    .line 322
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->rotationAccumulator:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 327
    .local v0, "rotation":[F
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetAccumulator()V

    .line 328
    monitor-exit p0

    return-object v0

    .line 329
    .end local v0    # "rotation":[F
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAngularVelocitySquaredRad()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->angularVelocitySqrRad:F

    return v0
.end method

.method public getAzimuthInDeg()I
    .locals 6

    .prologue
    .line 285
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 286
    .local v0, "matrixR":[F
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 287
    .local v1, "orientation":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/math/Vector3;->toFloatArray()[F

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->geomagnetic:[F

    invoke-static {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 289
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 290
    const/4 v2, 0x0

    aget v2, v1, v2

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public getEkfEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->useEkf:Z

    return v0
.end method

.method public getFilterOutput()[F
    .locals 12

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->getGLMatrix()[D

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    .line 355
    :cond_0
    new-array v0, v8, [F

    .line 356
    .local v0, "r":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_1

    .line 357
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->lastGlMatrixFromEkf:[D

    aget-wide v6, v2, v11

    double-to-float v2, v6

    aput v2, v0, v11

    .line 356
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 362
    new-array v5, v8, [F

    .line 365
    .local v5, "rz":[F
    invoke-static {v5, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 366
    iget v7, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 367
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    move v4, v1

    move v6, v1

    move-object v7, v0

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->tForm:[F

    return-object v1
.end method

.method public getFilteredAcceleration()Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filteredAcceleration:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method public getHeadingDegrees()D
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v0

    return-wide v0
.end method

.method public getImuOrientationDegrees()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    return v0
.end method

.method public getNumGyroSamples()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->numGyroSamples:I

    return v0
.end method

.method public isFilteredAccelerationInitialized()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    return v0
.end method

.method public resetGyroBias()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 194
    return-void
.end method

.method public setAccelFilterCoefficient(F)V
    .locals 0
    .param p1, "coeff"    # F

    .prologue
    .line 186
    iput p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->accelFilterCoefficient:F

    .line 187
    return-void
.end method

.method public setGyroBias([F)V
    .locals 5
    .param p1, "bias"    # [F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->gyroBias:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 304
    return-void
.end method

.method public setHeadingDegrees(D)V
    .locals 4
    .param p1, "headingDegrees"    # D

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 161
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 162
    add-double/2addr p1, v2

    .line 164
    :cond_0
    cmpl-double v0, p1, v2

    if-lez v0, :cond_1

    .line 165
    sub-double/2addr p1, v2

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->setHeadingDegrees(D)V

    .line 168
    return-void
.end method

.method public setSensorVelocityCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorVelocityCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 392
    return-void
.end method

.method public start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-object p0

    .line 78
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 84
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 86
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v6, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 87
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus 7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->imuOrientationDeg:F

    .line 97
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 114
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->filterInitialized:Z

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetGyroBias()V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->ekf:Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->reset()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->running:Z

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 132
    :cond_0
    return-void
.end method
