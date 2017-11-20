.class public Lcom/google/glass/maps/location/GlassOrientationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DECLINATION_UPDATE_INTERVAL_MS:J

.field private static final DESIRED_INTERVAL_MICROS:I = 0x8235

.field private static final DESIRED_UPDATE_FPS:I = 0x1e

.field private static final LOG_SENSOR_UPDATE_INTERVAL_MICROS:I = 0xf4240

.field private static final LOG_SENSOR_UPDATE_INTERVAL_MILLIS:J = 0x3e8L

.field private static final RADIANS_TO_DEGREES:F = 57.295776f

.field private static final TOE_ANGLE_CORRECTION_DEG:F = -6.0f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final angles:[F

.field private isListening:Z

.field private isSuspended:Z

.field private final lastAccelerometerValues:[F

.field private lastDeclinationUpdateTime:J

.field private lastMagneticReadingTime:J

.field private final lastMagneticValues:[F

.field private final lastRotationVectorsValues:[F

.field private final listener:Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final logMsg:Ljava/lang/StringBuilder;

.field private magneticDeclination:F

.field private final rawRotation:[F

.field private final remappedRotation:[F

.field private final rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorAccuracy:I

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->DECLINATION_UPDATE_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    .line 77
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    .line 78
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticReadingTime:J

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracy:I

    .line 84
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rawRotation:[F

    .line 85
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->remappedRotation:[F

    .line 86
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->angles:[F

    .line 96
    iput-object p2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 97
    iput-object p3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->listener:Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;

    .line 98
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->getRotationVectorSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 101
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-void
.end method

.method private dotProduct([F[F)D
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    aget v0, p1, v1

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aget v1, p1, v2

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private getMagneticDeclination()F
    .locals 8

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 280
    iget-wide v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastDeclinationUpdateTime:J

    sub-long v0, v4, v0

    sget-wide v2, Lcom/google/glass/maps/location/GlassOrientationProvider;->DECLINATION_UPDATE_INTERVAL_MS:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v3

    .line 282
    if-eqz v3, :cond_0

    .line 283
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 284
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 285
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    .line 286
    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 288
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->magneticDeclination:F

    .line 289
    iput-wide v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastDeclinationUpdateTime:J

    .line 290
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using declination: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->magneticDeclination:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->magneticDeclination:F

    return v0
.end method

.method private static getRotationVectorSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 154
    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 155
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invensense"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method

.method private logSensorData()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x20

    .line 163
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    invoke-direct {p0, v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->magnitude([F)D

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    invoke-direct {p0, v2}, Lcom/google/glass/maps/location/GlassOrientationProvider;->magnitude([F)D

    move-result-wide v2

    .line 165
    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    iget-object v5, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    .line 166
    invoke-direct {p0, v4, v5}, Lcom/google/glass/maps/location/GlassOrientationProvider;->dotProduct([F[F)D

    move-result-wide v4

    mul-double/2addr v2, v0

    div-double v2, v4, v2

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 169
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 171
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracy:I

    invoke-direct {p0, v4}, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    const-string v4, " Mag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    const-string v4, " Acc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    const-string v1, " Angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    new-instance v0, Lcom/google/android/maps/driveabout/g/k;

    const-string v1, "Sensors"

    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 190
    return-void
.end method

.method private magnitude([F)D
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    aget v0, p1, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p1, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static normalizeBearing(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 297
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 298
    add-float/2addr p0, v1

    .line 302
    :cond_0
    :goto_0
    return p0

    .line 299
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    .line 300
    sub-float/2addr p0, v1

    goto :goto_0
.end method

.method private sensorAccuracyToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown RotVec accuracy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "RotVec accuracy is high."

    goto :goto_0

    .line 267
    :pswitch_1
    const-string v0, "RotVec accuracy is medium."

    goto :goto_0

    .line 269
    :pswitch_2
    const-string v0, "RotVec accuracy is low."

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v0, "RotVec accuracy is unreliable."

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 255
    iput p2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracy:I

    .line 256
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget v1, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracy:I

    invoke-direct {p0, v1}, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorAccuracyToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->listener:Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;

    invoke-interface {v0, p2}, Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;->onAccuracyChanged(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const v9, 0x42652ee0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    iget-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 208
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 209
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastAccelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticReadingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 219
    iput-wide v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticReadingTime:J

    .line 221
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 222
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 223
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastMagneticValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 225
    invoke-direct {p0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->logSensorData()V

    .line 228
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 233
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 234
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->lastRotationVectorsValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rawRotation:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rawRotation:[F

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->remappedRotation:[F

    invoke-static {v2, v6, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->remappedRotation:[F

    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->angles:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 246
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->angles:[F

    aget v2, v2, v7

    mul-float/2addr v2, v9

    invoke-direct {p0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->getMagneticDeclination()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, -0x3f400000    # -6.0f

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/glass/maps/location/GlassOrientationProvider;->normalizeBearing(F)F

    move-result v2

    .line 248
    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->angles:[F

    aget v3, v3, v6

    mul-float/2addr v3, v9

    .line 249
    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->listener:Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;->onOrientationChanged(JFF)V

    goto/16 :goto_0
.end method

.method public startListening()V
    .locals 8

    .prologue
    const v7, 0xf4240

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 109
    iget-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isListening:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering listener on: %s / %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 112
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 111
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->rotationVectorSensor:Landroid/hardware/Sensor;

    const v2, 0x8235

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    :cond_0
    iput-boolean v5, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isListening:Z

    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 124
    :cond_1
    return-void
.end method

.method public stopListening()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isListening:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering rotation listener"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 131
    iput-boolean v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isListening:Z

    .line 132
    iput-boolean v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    .line 134
    :cond_0
    return-void
.end method

.method public suspendOutput()V
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Suspending output"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    .line 142
    :cond_0
    return-void
.end method

.method public unsuspendOutput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/google/glass/maps/location/GlassOrientationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unsuspending output"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-boolean v3, p0, Lcom/google/glass/maps/location/GlassOrientationProvider;->isSuspended:Z

    .line 150
    :cond_0
    return-void
.end method
