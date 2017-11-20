.class public Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
.super Ljava/lang/Object;
.source "DeviceOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceOrientation"
.end annotation


# instance fields
.field public final absoluteRotation:F

.field public final lockedRotation:F

.field public final nearestOrthoAngleDegrees:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "lockedRotation"    # F
    .param p2, "absoluteRotation"    # F
    .param p3, "nearestOrtho"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->lockedRotation:F

    .line 33
    iput p2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->absoluteRotation:F

    .line 34
    iput p3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    .line 35
    return-void
.end method


# virtual methods
.method public isOrientationChanged90()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Absolute rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->absoluteRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Angle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
