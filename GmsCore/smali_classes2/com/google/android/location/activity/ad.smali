.class public final Lcom/google/android/location/activity/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/bt;


# instance fields
.field final a:Lcom/google/android/location/os/at;

.field b:Lcom/google/android/location/activity/bu;

.field private final c:Landroid/hardware/SensorManager;

.field private final d:Landroid/hardware/Sensor;

.field private final e:Z

.field private f:Lcom/google/android/location/activity/ae;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/location/activity/ad;->c:Landroid/hardware/SensorManager;

    .line 53
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/ad;->d:Landroid/hardware/Sensor;

    .line 54
    iput-object p2, p0, Lcom/google/android/location/activity/ad;->a:Lcom/google/android/location/os/at;

    .line 55
    sget-object v0, Lcom/google/android/location/d/a;->n:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/ad;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/activity/ad;->e:Z

    .line 56
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "HwTilt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HardwareWakeUpTiltDetector.isSupportedDevice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/activity/ad;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    .line 79
    iget-object v0, p0, Lcom/google/android/location/activity/ad;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/activity/ad;->f:Lcom/google/android/location/activity/ae;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/activity/bu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/google/android/location/activity/ad;->e:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tilt detector is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tilt detector already enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/activity/ad;->b:Lcom/google/android/location/activity/bu;

    .line 69
    new-instance v0, Lcom/google/android/location/activity/ae;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/activity/ae;-><init>(Lcom/google/android/location/activity/ad;B)V

    iput-object v0, p0, Lcom/google/android/location/activity/ad;->f:Lcom/google/android/location/activity/ae;

    .line 70
    iget-object v0, p0, Lcom/google/android/location/activity/ad;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/activity/ad;->f:Lcom/google/android/location/activity/ae;

    iget-object v2, p0, Lcom/google/android/location/activity/ad;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/location/activity/ad;->e:Z

    return v0
.end method
