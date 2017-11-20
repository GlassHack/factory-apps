.class public final Lcom/google/android/location/fused/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Landroid/hardware/Sensor;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/common/util/i;

.field private final e:Lcom/google/h/a/b/b/w;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/google/h/a/b/b/z;Landroid/os/Handler;Lcom/google/android/gms/common/util/i;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/h/a/b/b/w;

    invoke-direct {v0}, Lcom/google/h/a/b/b/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/bp;->e:Lcom/google/h/a/b/b/w;

    .line 42
    iput-object p1, p0, Lcom/google/android/location/fused/bp;->a:Landroid/hardware/SensorManager;

    .line 43
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/bp;->b:Landroid/hardware/Sensor;

    .line 44
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->e:Lcom/google/h/a/b/b/w;

    iput-object p2, v0, Lcom/google/h/a/b/b/w;->a:Lcom/google/h/a/b/b/z;

    .line 45
    iput-object p3, p0, Lcom/google/android/location/fused/bp;->c:Landroid/os/Handler;

    .line 46
    iput-object p4, p0, Lcom/google/android/location/fused/bp;->d:Lcom/google/android/gms/common/util/i;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/fused/bp;->b:Landroid/hardware/Sensor;

    const/16 v2, 0x4e20

    iget-object v3, p0, Lcom/google/android/location/fused/bp;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/bp;->f:J

    .line 70
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    .line 74
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/google/android/location/fused/bp;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf42400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 81
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/location/fused/bp;->f:J

    .line 82
    iget-object v0, p0, Lcom/google/android/location/fused/bp;->e:Lcom/google/h/a/b/b/w;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/google/android/location/fused/bp;->e:Lcom/google/h/a/b/b/w;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/location/fused/bp;->d:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v5, v0, v5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/h/a/b/b/w;->a(JFFF)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
