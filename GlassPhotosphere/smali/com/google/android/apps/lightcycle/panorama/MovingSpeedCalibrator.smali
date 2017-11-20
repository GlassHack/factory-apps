.class public Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;
.super Ljava/lang/Object;
.source "MovingSpeedCalibrator.java"


# static fields
.field private static final MAX_ALLOWED_VELOCITY_SQUARED:F = 1.0f

.field private static final MED_ALLOWED_VELOCITY_SQUARED:F = 0.16000001f

.field private static final MIN_ALLOWED_VELOCITY_SQUARED:F = 0.0025000002f


# instance fields
.field private exposure:D

.field private velocitySquared:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    .line 20
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 55
    const v0, 0x3e23d70b    # 0.16000001f

    .line 59
    .local v0, "limit":F
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 60
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide v3, 0x3f9999999999999aL    # 0.025

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 61
    const v0, 0x3b23d70b    # 0.0025000002f

    .line 66
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetSensorMovementTooFast(Z)V

    .line 67
    return-void

    .line 62
    :cond_1
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onExposureUpdate(D)V
    .locals 0
    .param p1, "exposure"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->update()V

    .line 41
    return-void
.end method

.method public onSensorVelocityUpdate(F)V
    .locals 0
    .param p1, "velocitySquared"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->update()V

    .line 31
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 47
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    .line 48
    return-void
.end method
