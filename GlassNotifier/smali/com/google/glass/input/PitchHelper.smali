.class public Lcom/google/glass/input/PitchHelper;
.super Ljava/lang/Object;
.source "PitchHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/PitchHelper$PitchListener;
    }
.end annotation


# static fields
.field private static final MAX_TIMESTAMP_DISCONTINUITY_IN_SECS:F = 0.25f

.field private static final MOVING_AVERAGE_ALPHA:F = 1.0E-5f

.field private static final NANOS_TO_S:F = 1.0E-9f

.field private static final ROUNDING_PRECISION:F = 0.1f

.field static final SENSOR_RATE:I = 0x4e20

.field private static final USE_INVENSENSE_MPL:Z = true

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private gyroZMovingAverage:F

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private integratedGyroZ:F

.field private isStarted:Z

.field private lastTimestamp:J

.field private listener:Lcom/google/glass/input/PitchHelper$PitchListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/PitchHelper$PitchListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/input/PitchHelper$PitchListener;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/google/glass/input/PitchHelper;->listener:Lcom/google/glass/input/PitchHelper$PitchListener;

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/PitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v0, p0, Lcom/google/glass/input/PitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/input/PitchHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/PitchHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 57
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

    .line 68
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

    .line 69
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "vendor":Ljava/lang/String;
    const-string v5, "Invensense"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MPL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    sget-object v4, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using sensor: %s (%s)"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v3, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "vendor":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 78
    :cond_1
    sget-object v4, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Could not find Invensese MPL sensor of type %s."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 83
    .local v0, "defaultSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 84
    sget-object v4, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No default sensor of type %s found."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v2, 0x0

    goto :goto_0

    .line 87
    :cond_2
    sget-object v4, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

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

    .line 88
    goto :goto_0
.end method

.method private handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 107
    iget-wide v4, p0, Lcom/google/glass/input/PitchHelper;->lastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 110
    .local v1, "gyroZ":F
    iget v3, p0, Lcom/google/glass/input/PitchHelper;->gyroZMovingAverage:F

    sub-float v3, v1, v3

    const v4, 0x3dcccccd    # 0.1f

    .line 111
    invoke-static {v3, v4}, Lcom/google/glass/input/PitchHelper;->roundValueToPrecision(FF)F

    move-result v2

    .line 113
    .local v2, "roundedGyroZ":F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/google/glass/input/PitchHelper;->lastTimestamp:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v0, v3, v4

    .line 116
    .local v0, "deltaT":F
    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 117
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/PitchHelper;->gyroZMovingAverage:F

    .line 130
    .end local v0    # "deltaT":F
    .end local v1    # "gyroZ":F
    .end local v2    # "roundedGyroZ":F
    :cond_0
    :goto_0
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/google/glass/input/PitchHelper;->lastTimestamp:J

    .line 131
    return-void

    .line 119
    .restart local v0    # "deltaT":F
    .restart local v1    # "gyroZ":F
    .restart local v2    # "roundedGyroZ":F
    :cond_1
    iget v3, p0, Lcom/google/glass/input/PitchHelper;->integratedGyroZ:F

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/PitchHelper;->integratedGyroZ:F

    .line 120
    iget-object v3, p0, Lcom/google/glass/input/PitchHelper;->listener:Lcom/google/glass/input/PitchHelper$PitchListener;

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/google/glass/input/PitchHelper;->listener:Lcom/google/glass/input/PitchHelper$PitchListener;

    iget v4, p0, Lcom/google/glass/input/PitchHelper;->integratedGyroZ:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/google/glass/input/PitchHelper$PitchListener;->onRelativePitchChange(F)V

    .line 125
    :cond_2
    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v3, v1

    const v4, 0x3f7fff58    # 0.99999f

    iget v5, p0, Lcom/google/glass/input/PitchHelper;->gyroZMovingAverage:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/PitchHelper;->gyroZMovingAverage:F

    goto :goto_0
.end method

.method static roundValueToPrecision(FF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "precision"    # F

    .prologue
    .line 179
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

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/PitchHelper;->handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method public setListener(Lcom/google/glass/input/PitchHelper$PitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/input/PitchHelper$PitchListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/input/PitchHelper;->listener:Lcom/google/glass/input/PitchHelper$PitchListener;

    .line 94
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/PitchHelper;->lastTimestamp:J

    .line 142
    iget-boolean v0, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PitchHelper was already started, but got called to start again. Punting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering sensors..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/input/PitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/PitchHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    const/16 v2, 0x4e20

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 159
    iget-boolean v0, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PitchHelper was not started, but got called to stop. Punting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/google/glass/input/PitchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering sensors..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/input/PitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/PitchHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 166
    iput-boolean v3, p0, Lcom/google/glass/input/PitchHelper;->isStarted:Z

    goto :goto_0
.end method
