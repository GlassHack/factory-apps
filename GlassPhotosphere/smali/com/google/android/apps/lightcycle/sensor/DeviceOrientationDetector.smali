.class public Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
.super Ljava/lang/Object;
.source "DeviceOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
    }
.end annotation


# static fields
.field private static final AXIS_RATIO:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# instance fields
.field private initialized:Z

.field private isLandscape:Z

.field private landscapeNatural:Z

.field private lockedRotation:I

.field private orientationAngleDegrees:F

.field private final sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 64
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 65
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 66
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 80
    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    .line 83
    :goto_0
    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    .line 87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 89
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 91
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 92
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    .line 94
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 95
    return-void

    .line 68
    :pswitch_0
    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    goto :goto_0

    .line 71
    :pswitch_1
    const/16 v3, 0x5a

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    goto :goto_0

    .line 74
    :pswitch_2
    const/16 v3, 0xb4

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    goto :goto_0

    .line 77
    :pswitch_3
    const/16 v3, -0x5a

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    goto :goto_0

    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    move v1, v2

    .line 92
    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static normalizeAngle(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 196
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 197
    sub-float/2addr p0, v1

    .line 201
    .end local p0    # "angle":F
    :cond_0
    :goto_0
    return p0

    .line 198
    .restart local p0    # "angle":F
    :cond_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 199
    add-float/2addr p0, v1

    goto :goto_0
.end method

.method private orientationChanged(Lcom/google/android/apps/lightcycle/math/Vector3;)Z
    .locals 5
    .param p1, "gravity"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 184
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDisplayInitialOrientationDegrees()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    return v0
.end method

.method public getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "LightCycle"

    const-string v2, "Sensor reader is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 156
    :cond_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 157
    .local v0, "relativeAngle":F
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->normalizeAngle(F)F

    move-result v0

    .line 158
    new-instance v1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    iget v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;-><init>(FFF)V

    goto :goto_0
.end method

.method public setInitialOrientation()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 173
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    .line 174
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 104
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->isFilteredAccelerationInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    :cond_0
    const-string v3, "LightCycle"

    const-string v4, "Sensor reader is not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilteredAcceleration()Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v0

    .line 110
    .local v0, "gravity":Lcom/google/android/apps/lightcycle/math/Vector3;
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 112
    .local v1, "kComparisonFactor":F
    const/4 v2, 0x0

    .line 113
    .local v2, "needsToUpdateOrientation":Z
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    if-nez v3, :cond_6

    .line 114
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_1
    iget v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    move v5, v4

    :cond_3
    xor-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 116
    const/4 v2, 0x1

    .line 117
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 123
    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    .line 124
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    iget-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 125
    iget v3, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_8

    .line 126
    const/high16 v3, 0x42b40000    # 90.0f

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    .line 137
    :goto_3
    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->normalizeAngle(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_0

    :cond_5
    move v3, v5

    .line 114
    goto :goto_1

    .line 118
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationChanged(Lcom/google/android/apps/lightcycle/math/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    if-nez v3, :cond_7

    :goto_4
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 120
    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 119
    goto :goto_4

    .line 128
    :cond_8
    const/high16 v3, -0x3d4c0000    # -90.0f

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3

    .line 131
    :cond_9
    iget v3, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_a

    .line 132
    iput v8, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3

    .line 134
    :cond_a
    const/high16 v3, 0x43340000    # 180.0f

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3
.end method
