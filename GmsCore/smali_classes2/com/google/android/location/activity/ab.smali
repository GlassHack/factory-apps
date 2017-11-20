.class public final Lcom/google/android/location/activity/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/az;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field a:Lcom/google/android/location/activity/ba;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/hardware/Sensor;

.field private final d:Z

.field private final e:Lcom/google/android/location/os/at;

.field private f:Lcom/google/android/location/activity/ac;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/activity/ab;-><init>(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/location/activity/ab;->b:Landroid/hardware/SensorManager;

    .line 54
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/ab;->c:Landroid/hardware/Sensor;

    .line 55
    iput-object p2, p0, Lcom/google/android/location/activity/ab;->e:Lcom/google/android/location/os/at;

    .line 56
    iget-object v0, p0, Lcom/google/android/location/activity/ab;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const-string v0, "Nexus 4"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "HardSigMotion"

    const-string v3, "Significant motion not properly supported on Nexus 4 JBMR2"

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/location/activity/ab;->d:Z

    .line 57
    return-void

    .line 56
    :cond_1
    const-string v0, "Nexus 7"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "HardSigMotion"

    const-string v3, "Significant motion not properly supported on Nexus 7"

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/location/d/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "HardSigMotion"

    const-string v3, "Significant motion disabled by Gservices on this device"

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    .line 99
    iget-object v0, p0, Lcom/google/android/location/activity/ab;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/activity/ab;->f:Lcom/google/android/location/activity/ac;

    iget-object v2, p0, Lcom/google/android/location/activity/ab;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/activity/ba;)Z
    .locals 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/location/activity/ab;->d:Z

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant motion is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant motion already enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    .line 89
    new-instance v0, Lcom/google/android/location/activity/ac;

    iget-object v1, p0, Lcom/google/android/location/activity/ab;->e:Lcom/google/android/location/os/at;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/location/activity/ac;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/ab;B)V

    iput-object v0, p0, Lcom/google/android/location/activity/ab;->f:Lcom/google/android/location/activity/ac;

    .line 90
    iget-object v0, p0, Lcom/google/android/location/activity/ab;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/activity/ab;->f:Lcom/google/android/location/activity/ac;

    iget-object v2, p0, Lcom/google/android/location/activity/ab;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/location/activity/ab;->d:Z

    return v0
.end method
