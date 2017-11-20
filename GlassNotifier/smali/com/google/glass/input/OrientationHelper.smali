.class public Lcom/google/glass/input/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/OrientationHelper$OrientationListener;
    }
.end annotation


# static fields
.field private static final MAGNETIC_SENSOR_RATE:I = 0x30d40

.field static final MAX_TIMESTAMP_DISCONTINUITY_IN_SECS:F = 0.25f

.field static final MOVING_AVERAGE_ALPHA:F = 1.0E-5f

.field private static final NANOS_TO_S:F = 1.0E-9f

.field private static final REBIND_WAIT_TIME:J = 0x7d0L

.field static final ROUNDING_PRECISION:F = 0.1f

.field private static final SENSOR_RATE:I = 0x4e20

.field private static final USE_INVENSENSE_MPL:Z = true

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private gravitySensor:Landroid/hardware/Sensor;

.field private gyroYMovingAverage:F

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private volatile integratedGyroY:F

.field private isStarted:Z

.field private lastPitch:F

.field private lastRoll:F

.field private lastSensorChanged:J

.field private lastTimestamp:J

.field private lastYaw:F

.field private listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

.field private magneticYaw:F

.field private final minChangeDeg:F

.field private final minIntervalMs:I

.field private offsetPitch:F

.field private offsetRoll:F

.field private offsetYaw:F

.field private final orientation:[F

.field private final rotationMatrix:[F

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final tempRotationMatrix:[F

.field private triedRebinding:Z

.field private triedRebindingTime:J

.field private final useMagneticFieldForYaw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;ZIILcom/google/glass/time/Clock;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/input/OrientationHelper$OrientationListener;
    .param p3, "useMagneticFieldForYaw"    # Z
    .param p4, "minIntervalMs"    # I
    .param p5, "minChangeDeg"    # I
    .param p6, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    const/16 v2, 0x10

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/OrientationHelper;->lastSensorChanged:J

    .line 73
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    .line 74
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    .line 115
    iput-object p2, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 116
    iput-boolean p3, p0, Lcom/google/glass/input/OrientationHelper;->useMagneticFieldForYaw:Z

    .line 117
    iput p4, p0, Lcom/google/glass/input/OrientationHelper;->minIntervalMs:I

    .line 118
    int-to-float v0, p5

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->minChangeDeg:F

    .line 119
    iput-object p6, p0, Lcom/google/glass/input/OrientationHelper;->clock:Lcom/google/glass/time/Clock;

    .line 121
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 122
    invoke-direct {p0}, Lcom/google/glass/input/OrientationHelper;->cacheSensors()V

    .line 123
    return-void
.end method

.method private cacheSensors()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->useMagneticFieldForYaw:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    .line 379
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 380
    return-void
.end method

.method private callListener(FFFJ)V
    .locals 6
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F
    .param p4, "timestamp"    # J

    .prologue
    .line 348
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 350
    iput p1, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    .line 351
    iput p2, p0, Lcom/google/glass/input/OrientationHelper;->lastPitch:F

    .line 352
    iput p3, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    .line 355
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    sub-float/2addr p1, v0

    .line 356
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    sub-float/2addr p2, v0

    .line 357
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    sub-float/2addr p3, v0

    .line 365
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper$OrientationListener;->onOrientationChanged(FFFJ)V

    .line 368
    :cond_0
    return-void
.end method

.method static getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;
    .locals 11
    .param p0, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p1, "type"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 135
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "vendor":Ljava/lang/String;
    const-string v5, "Invensense"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MPL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    sget-object v4, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using sensor: %s (%s)"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v3, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "vendor":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 144
    :cond_1
    sget-object v4, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Could not find Invensese MPL sensor of type %s."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 149
    .local v0, "defaultSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 150
    sget-object v4, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No default sensor of type %s found."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    :cond_2
    sget-object v4, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using default sensor: %s (%s)"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 154
    goto :goto_0
.end method

.method private handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 185
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v8, v0, v4

    .line 186
    .local v8, "x":F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v9, v0, v4

    .line 187
    .local v9, "y":F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v10, v0, v4

    .line 188
    .local v10, "z":F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 191
    .local v6, "time":J
    iget-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->lastSensorChanged:J

    const-wide/16 v12, 0x0

    cmp-long v0, v4, v12

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->lastSensorChanged:J

    sub-long v4, v6, v4

    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->minIntervalMs:I

    int-to-long v12, v0

    cmp-long v0, v4, v12

    if-gez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-wide v6, p0, Lcom/google/glass/input/OrientationHelper;->lastSensorChanged:J

    .line 198
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v12, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x7d0

    cmp-long v0, v4, v12

    if-lez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v4, 0x46

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received NaN values from sensor, x: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Rebinding since we\'re getting NaN values"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 212
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    .line 214
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->start()V

    goto :goto_0

    .line 219
    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_5

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 223
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Rebinding successfully gave us valid values"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_5
    neg-float v0, v8

    float-to-double v4, v0

    float-to-double v12, v9

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 229
    .local v3, "roll":F
    float-to-double v4, v10

    mul-float v0, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v0, v11

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 231
    .local v2, "pitch":F
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->magneticYaw:F

    iget v4, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 234
    .local v1, "yaw":F
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/google/glass/input/OrientationHelper;->minChangeDeg:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 235
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    goto/16 :goto_0
.end method

.method private handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 240
    iget-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 250
    .local v1, "gyroY":F
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    sub-float v3, v1, v3

    const v4, 0x3dcccccd    # 0.1f

    .line 251
    invoke-static {v3, v4}, Lcom/google/glass/input/OrientationHelper;->roundValueToPrecision(FF)F

    move-result v2

    .line 253
    .local v2, "roundedGyroY":F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v0, v3, v4

    .line 256
    .local v0, "deltaT":F
    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 257
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    .line 270
    .end local v0    # "deltaT":F
    .end local v1    # "gyroY":F
    .end local v2    # "roundedGyroY":F
    :cond_0
    :goto_0
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 271
    return-void

    .line 261
    .restart local v0    # "deltaT":F
    .restart local v1    # "gyroY":F
    .restart local v2    # "roundedGyroY":F
    :cond_1
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    .line 265
    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v3, v1

    const v4, 0x3f7fff58    # 0.99999f

    iget v5, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    goto :goto_0
.end method

.method private handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 274
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 276
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    invoke-static {v0, v4, v6, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 278
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    invoke-static {v0, v6, v5, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 280
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    .line 283
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->magneticYaw:F

    .line 284
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v2, v0

    .line 285
    .local v2, "pitch":F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    .line 287
    .local v3, "roll":F
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->useMagneticFieldForYaw:Z

    if-nez v0, :cond_0

    .line 293
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->magneticYaw:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v1, v0

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    .line 295
    :cond_0
    return-void
.end method

.method static roundValueToPrecision(FF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "precision"    # F

    .prologue
    .line 391
    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method isStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 299
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 171
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 179
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public resetTare()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 408
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 409
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    .line 410
    return-void
.end method

.method public setListener(Lcom/google/glass/input/OrientationHelper$OrientationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 160
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/16 v3, 0x4e20

    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 310
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "OrientationHelper was already started, but got call to start again.  Punting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering sensors..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->useMagneticFieldForYaw:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->rotationVectorSensor:Landroid/hardware/Sensor;

    const v2, 0x30d40

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 320
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 331
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "OrientationHelper was not started, but got call to stop.  Punting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :goto_0
    return-void

    .line 336
    :cond_0
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering sensors..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->useMagneticFieldForYaw:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 343
    iput-boolean v3, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    goto :goto_0
.end method

.method public tare()V
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 399
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 400
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastPitch:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    .line 401
    return-void
.end method
