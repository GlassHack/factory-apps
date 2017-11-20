.class final Lcom/google/android/gms/fitness/sensors/local/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/o;

.field private final b:Lcom/google/android/gms/fitness/sensors/local/d;

.field private final c:Lcom/google/android/gms/fitness/data/DataSource;

.field private final d:Lcom/google/android/location/b/af;

.field private final e:Lcom/google/android/gms/fitness/sensors/local/h;

.field private final f:Lcom/google/android/gms/fitness/sensors/local/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/sensors/local/d;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/location/b/af;Lcom/google/android/gms/fitness/sensors/local/h;Lcom/google/android/gms/fitness/sensors/local/l;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->a:Lcom/google/android/gms/fitness/data/o;

    .line 260
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/local/b;->b:Lcom/google/android/gms/fitness/sensors/local/d;

    .line 261
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/b;->c:Lcom/google/android/gms/fitness/data/DataSource;

    .line 262
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/local/b;->d:Lcom/google/android/location/b/af;

    .line 263
    iput-object p5, p0, Lcom/google/android/gms/fitness/sensors/local/b;->e:Lcom/google/android/gms/fitness/sensors/local/h;

    .line 264
    iput-object p6, p0, Lcom/google/android/gms/fitness/sensors/local/b;->f:Lcom/google/android/gms/fitness/sensors/local/l;

    .line 265
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/b;->a:Lcom/google/android/gms/fitness/data/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/b;->f:Lcom/google/android/gms/fitness/sensors/local/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->c:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    float-to-int v2, v2

    if-gez v2, :cond_1

    const-string v0, "Discarding event with negative step counts %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/fitness/sensors/local/l;->a(Ljava/lang/String;Landroid/hardware/SensorEvent;[Ljava/lang/Object;)V

    move v0, v8

    :goto_0
    if-nez v0, :cond_5

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 268
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/local/l;->a:Lcom/google/android/gms/fitness/sensors/local/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/local/h;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->am:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->am:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iget-wide v10, p1, Landroid/hardware/SensorEvent;->timestamp:J

    add-long/2addr v4, v2

    cmp-long v0, v10, v4

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    const-string v0, "Discarding event with timestamp in the future %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/fitness/sensors/local/l;->a(Ljava/lang/String;Landroid/hardware/SensorEvent;[Ljava/lang/Object;)V

    move v0, v8

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->an:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->an:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v2, v10

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const-string v0, "Discarding event with timestamp too far in the past: %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/fitness/sensors/local/l;->a(Ljava/lang/String;Landroid/hardware/SensorEvent;[Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_0

    :cond_3
    move v0, v9

    goto/16 :goto_0

    :cond_4
    move v0, v9

    goto/16 :goto_0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/b;->d:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;-><init>()V

    :goto_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->a(Landroid/hardware/Sensor;)Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;

    invoke-direct {v1, p1}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;-><init>(Landroid/hardware/SensorEvent;)V

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->d:Lcom/google/android/location/b/af;

    new-array v2, v9, [Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;

    aput-object v0, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/af;->a(Ljava/util/Collection;)V

    .line 273
    :cond_6
    :goto_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->a(Landroid/hardware/Sensor;)Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;

    move-result-object v1

    .line 274
    if-nez v1, :cond_a

    .line 276
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->b:Lcom/google/android/gms/fitness/sensors/local/d;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/local/b;->c:Lcom/google/android/gms/fitness/data/DataSource;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->b:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/fitness/sensors/local/d;->a(Landroid/hardware/SensorEvent;Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->b(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->c(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->e:Lcom/google/android/gms/fitness/sensors/local/h;

    iget-object v2, v1, Lcom/google/android/gms/fitness/sensors/local/h;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/google/android/gms/fitness/sensors/local/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "Couldn\'t push event back to listener"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 272
    :cond_8
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;

    goto :goto_2

    :cond_9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->a(Landroid/hardware/SensorEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/b;->d:Lcom/google/android/location/b/af;

    new-array v2, v9, [Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;

    aput-object v0, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/af;->a(Ljava/util/Collection;)V

    goto :goto_3

    .line 274
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->a()J

    move-result-wide v6

    goto :goto_4
.end method
