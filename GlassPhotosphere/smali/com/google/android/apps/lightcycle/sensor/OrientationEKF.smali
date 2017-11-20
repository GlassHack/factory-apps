.class public Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;
.super Ljava/lang/Object;
.source "OrientationEKF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private accObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private down:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private filteredGyroTimestep:F

.field private gyroFilterValid:Z

.field private mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mQ:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mR:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mRaccel:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private magObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private mu:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private north:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private numGyroTimestepSamples:I

.field private processAccTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processAccTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processAccTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processAccTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processAccVDelta:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processGyroTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processGyroTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private processMagTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processMagTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processMagTempV3:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processMagTempV4:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private processMagTempV5:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private rotationMatrix:[D

.field private sensorTimeStampAcc:J

.field private sensorTimeStampGyro:J

.field private sensorTimeStampMag:J

.field private setHeadingDegreesTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private timestepFilterInit:Z

.field private updateCovariancesAfterMotionTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private updateCovariancesAfterMotionTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    .line 28
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 29
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 30
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 31
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mQ:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 32
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mR:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 33
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mRaccel:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 34
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 35
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 36
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 37
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 38
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 39
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 40
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 41
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 42
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->down:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 43
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->north:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->timestepFilterInit:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->gyroFilterValid:Z

    .line 58
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 61
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 62
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 65
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 66
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 67
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 68
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 69
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 70
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 71
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 72
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccVDelta:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 75
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 76
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 77
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV3:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 78
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV4:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 79
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV5:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 80
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 81
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 82
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 83
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 84
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 87
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 88
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 91
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 95
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->reset()V

    .line 101
    return-void
.end method

.method private accObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->down:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 455
    return-void
.end method

.method public static arrayAssign([[DLcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 20
    .param p0, "data"    # [[D
    .param p1, "m"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    .line 479
    sget-boolean v1, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, p0

    array-length v2, v0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 480
    :cond_0
    sget-boolean v1, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 481
    :cond_1
    sget-boolean v1, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    array-length v2, v2

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 482
    :cond_2
    sget-boolean v1, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    array-length v2, v2

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 483
    :cond_3
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v10, 0x1

    aget-wide v10, v1, v10

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v12, 0x2

    aget-wide v12, v1, v12

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const/4 v14, 0x0

    aget-wide v14, v1, v14

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const/16 v16, 0x1

    aget-wide v16, v1, v16

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const/16 v18, 0x2

    aget-wide v18, v1, v18

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v19}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(DDDDDDDDD)V

    .line 486
    return-void
.end method

.method private filterGyroTimestep(F)V
    .locals 5
    .param p1, "timeStep"    # F

    .prologue
    const/4 v4, 0x1

    .line 420
    const v0, 0x3f733333    # 0.95f

    .line 421
    .local v0, "kFilterCoeff":F
    const/high16 v1, 0x41200000    # 10.0f

    .line 422
    .local v1, "kMinSamples":F
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->timestepFilterInit:Z

    if-nez v2, :cond_1

    .line 423
    iput p1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->filteredGyroTimestep:F

    .line 424
    iput v4, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->numGyroTimestepSamples:I

    .line 425
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->timestepFilterInit:Z

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const v2, 0x3f733333    # 0.95f

    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->filteredGyroTimestep:F

    mul-float/2addr v2, v3

    const v3, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->filteredGyroTimestep:F

    .line 430
    iget v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->numGyroTimestepSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->numGyroTimestepSamples:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 431
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->gyroFilterValid:Z

    goto :goto_0
.end method

.method private magObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->north:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 470
    return-void
.end method

.method private updateCovariancesAfterMotion()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 442
    return-void
.end method


# virtual methods
.method public getGLMatrix()[D
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    .line 206
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 207
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v4, v1, v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "c":I
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/16 v6, 0xb

    aput-wide v8, v5, v6

    aput-wide v8, v3, v4

    aput-wide v8, v2, v7

    .line 215
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/16 v7, 0xe

    aput-wide v8, v6, v7

    aput-wide v8, v4, v5

    aput-wide v8, v2, v3

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 220
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->rotationMatrix:[D

    return-object v2
.end method

.method public getHeadingDegrees()D
    .locals 14

    .prologue
    .line 162
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    .line 163
    .local v4, "x":D
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    .line 164
    .local v6, "y":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 166
    .local v2, "mag":D
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v2, v8

    if-gez v8, :cond_1

    .line 167
    const-wide/16 v0, 0x0

    .line 177
    :cond_0
    :goto_0
    return-wide v0

    .line 170
    :cond_1
    const-wide v8, -0x3fa9800000000000L    # -90.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    sub-double v0, v8, v10

    .line 171
    .local v0, "heading":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_2

    .line 172
    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v8

    .line 174
    :cond_2
    const-wide v8, 0x4076800000000000L    # 360.0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_0

    .line 175
    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, v8

    goto :goto_0
.end method

.method public isReady()Z
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampAcc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized processAcc([FJ)V
    .locals 12
    .param p1, "acc"    # [F
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const/4 v1, 0x0

    aget v1, p1, v1

    float-to-double v1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    float-to-double v3, v3

    const/4 v5, 0x2

    aget v5, p1, v5

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 266
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampAcc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 270
    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 271
    .local v9, "eps":D
    const/4 v8, 0x0

    .local v8, "dof":I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 272
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccVDelta:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 273
    .local v7, "delta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 274
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setComponent(ID)V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v7, v0}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 281
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 283
    .local v11, "withDelta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v0, v11, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->sub(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 271
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 289
    .end local v7    # "delta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    .end local v11    # "withDelta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mRaccel:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->add(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->invert(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)Z

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->minusEquals(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAccTempM3:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 314
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 321
    .end local v8    # "dof":I
    .end local v9    # "eps":D
    :goto_1
    iput-wide p2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampAcc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->down:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processGyro([FJ)V
    .locals 10
    .param p1, "gyro"    # [F
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 230
    monitor-enter p0

    const v8, 0x3d23d70a    # 0.04f

    .line 231
    .local v8, "kTimeThreshold":F
    const v9, 0x3c23d70a    # 0.01f

    .line 232
    .local v9, "kdTdefault":F
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampGyro:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 233
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampGyro:J

    sub-long v0, p2, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v7, v0, v1

    .line 234
    .local v7, "dT":F
    const v0, 0x3d23d70a    # 0.04f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->gyroFilterValid:Z

    if-eqz v0, :cond_1

    iget v7, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->filteredGyroTimestep:F

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const/4 v1, 0x0

    aget v1, p1, v1

    neg-float v2, v7

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    neg-float v4, v7

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const/4 v5, 0x2

    aget v5, p1, v5

    neg-float v6, v7

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mQ:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    mul-float v1, v7, v7

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->scale(D)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyroTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->plusEquals(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 253
    .end local v7    # "dT":F
    :cond_0
    iput-wide p2, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampGyro:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 235
    .restart local v7    # "dT":F
    :cond_1
    const v7, 0x3c23d70a    # 0.01f

    goto :goto_0

    .line 237
    :cond_2
    :try_start_1
    invoke-direct {p0, v7}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->filterGyroTimestep(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    .end local v7    # "dT":F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processMag([FJ)V
    .locals 18
    .param p1, "mag"    # [F
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const/4 v4, 0x0

    aget v4, p1, v4

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v6, p1, v6

    float-to-double v6, v6

    const/4 v8, 0x2

    aget v8, p1, v8

    float-to-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 334
    new-instance v12, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v12}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    .line 335
    .local v12, "downInSensorFrame":Lcom/google/android/apps/lightcycle/math/Vector3d;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->getColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v3, v12, v4}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV1:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v16, v0

    .line 339
    .local v16, "perpToDownAndMag":Lcom/google/android/apps/lightcycle/math/Vector3d;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, v16

    invoke-static {v12, v0, v3}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 345
    .local v15, "magHorizontal":Lcom/google/android/apps/lightcycle/math/Vector3d;
    invoke-virtual {v15}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v3, v15}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 348
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampMag:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 352
    const-wide v13, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 353
    .local v13, "eps":D
    const/4 v11, 0x0

    .local v11, "dof":I
    :goto_0
    const/4 v3, 0x3

    if-ge v11, v3, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV3:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 355
    .local v10, "delta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    invoke-virtual {v10}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 356
    invoke-virtual {v10, v11, v13, v14}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setComponent(ID)V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v10, v3}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV4:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV4:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v17, v0

    .line 365
    .local v17, "withDelta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV5:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, v17

    invoke-static {v3, v0, v4}, Lcom/google/android/apps/lightcycle/math/Vector3d;->sub(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV5:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v13

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempV5:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v3, v11, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 372
    .end local v10    # "delta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    .end local v17    # "withDelta":Lcom/google/android/apps/lightcycle/math/Vector3d;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mR:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->add(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->invert(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM6:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->minusEquals(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM5:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 410
    .end local v11    # "dof":I
    .end local v13    # "eps":D
    :goto_1
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampMag:J

    .line 411
    return-void

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processMagTempM4:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->updateCovariancesAfterMotion()V

    goto :goto_1
.end method

.method public reset()V
    .locals 15

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampGyro:J

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampAcc:J

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->sensorTimeStampMag:J

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3LastMotion:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 115
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    .line 117
    .local v7, "initialSigmaP":D
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mP:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setSameDiagonal(D)V

    .line 121
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 122
    .local v9, "initialSigmaQ":D
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mQ:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mQ:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setSameDiagonal(D)V

    .line 126
    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    .line 127
    .local v11, "initialSigmaR":D
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mR:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mR:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const-wide/high16 v1, 0x3fb0000000000000L    # 0.0625

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setSameDiagonal(D)V

    .line 131
    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    .line 132
    .local v13, "initialSigmaRaccel":D
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mRaccel:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mRaccel:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    const-wide/high16 v1, 0x3fe2000000000000L    # 0.5625

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setSameDiagonal(D)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mS:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mH:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mK:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setZero()V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mNu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mz:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mh:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mu:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->mx:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->setZero()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->down:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, 0x40239eb851eb851fL    # 9.81

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->north:Lcom/google/android/apps/lightcycle/math/Vector3d;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 146
    return-void
.end method

.method public declared-synchronized setHeadingDegrees(D)V
    .locals 14
    .param p1, "heading"    # D

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v2

    .line 187
    .local v2, "currentHeading":D
    sub-double v4, p1, v2

    .line 188
    .local v4, "deltaHeading":D
    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v9, v4, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 189
    .local v7, "s":D
    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v9, v4, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 191
    .local v0, "c":D
    const/4 v9, 0x3

    new-array v6, v9, [[D

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v0, v10, v11

    const/4 v11, 0x1

    neg-double v12, v7

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v7, v10, v11

    const/4 v11, 0x1

    aput-wide v0, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    new-array v10, v10, [D

    fill-array-data v10, :array_0

    aput-object v10, v6, v9

    .line 193
    .local v6, "deltaHeadingRotationVals":[[D
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v6, v9}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->arrayAssign([[DLcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 194
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->so3SensorFromWorld:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-static {v9, v10, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 186
    .end local v0    # "c":D
    .end local v2    # "currentHeading":D
    .end local v4    # "deltaHeading":D
    .end local v6    # "deltaHeadingRotationVals":[[D
    .end local v7    # "s":D
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 191
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
