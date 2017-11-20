.class public Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# static fields
.field private static final HEADING_BLEND_FACTOR:F = 0.1f

.field private static final MAX_CORRECTION_DEGREES:F = 0.5f


# instance fields
.field private rotation:[F

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private takeNewPhoto:Z

.field private validEstimate:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1
    .param p1, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto:Z

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 31
    return-void
.end method

.method private adjustHeading()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    .line 126
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetHeadingRadians()F

    move-result v2

    .line 127
    .local v2, "headingImageDeg":F
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v6

    double-to-float v3, v6

    .line 130
    .local v3, "headingSensorDeg":F
    cmpl-float v6, v2, v9

    if-ltz v6, :cond_3

    .line 132
    sub-float v1, v2, v3

    .line 133
    .local v1, "delta":F
    sub-float v6, v1, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 134
    sub-float/2addr v1, v8

    .line 136
    :cond_0
    add-float v6, v1, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 137
    add-float/2addr v1, v8

    .line 141
    :cond_1
    const v6, 0x3dcccccd    # 0.1f

    mul-float v0, v6, v1

    .line 142
    .local v0, "correction":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 143
    cmpl-float v6, v0, v9

    if-lez v6, :cond_4

    move v0, v5

    .line 146
    :cond_2
    :goto_0
    add-float v4, v3, v0

    .line 147
    .local v4, "newHeadingDeg":F
    invoke-direct {p0, v4}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->headingDegRange360(F)F

    move-result v4

    .line 148
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    float-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 150
    .end local v0    # "correction":F
    .end local v1    # "delta":F
    .end local v4    # "newHeadingDeg":F
    :cond_3
    return-void

    .line 143
    .restart local v0    # "correction":F
    .restart local v1    # "delta":F
    :cond_4
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_0
.end method

.method private headingDegRange360(F)F
    .locals 2
    .param p1, "heading"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 159
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 160
    add-float/2addr p1, v1

    .line 162
    :cond_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 163
    sub-float/2addr p1, v1

    .line 165
    :cond_1
    return p1
.end method


# virtual methods
.method public getRotationEstimate()[F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->rotation:[F

    return-object v0
.end method

.method public movingTooFast()Z
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->MovingTooFast()Z

    move-result v0

    return v0
.end method

.method public photoSkippedTooFast()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    return v0
.end method

.method public processFrame([BIIZZ)V
    .locals 6
    .param p1, "frameData"    # [B
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I
    .param p4, "takeNewPhotos"    # Z
    .param p5, "updateHeadingWithVision"    # Z

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAccelInPlaneRotationRadians()F

    move-result v1

    .line 94
    .local v1, "inPlaneRotationRadians":F
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetCurrentOrientation(F)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilteredAcceleration()Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v0

    .line 96
    .local v0, "gravity":Lcom/google/android/apps/lightcycle/math/Vector3;
    iget v3, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v4, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v5, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetGravityVector(FFF)V

    .line 99
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ProcessFrame([BIIZ)[F

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->rotation:[F

    .line 108
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->rotation:[F

    aget v3, v3, v2

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate:Z

    .line 112
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TakeNewPhoto()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto:Z

    .line 116
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->adjustHeading()V

    goto :goto_0
.end method

.method public takeNewPhoto()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto:Z

    return v0
.end method

.method public targetHit()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TargetHit()Z

    move-result v0

    return v0
.end method

.method public validEstimate()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate:Z

    return v0
.end method
