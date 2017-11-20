.class final Lcom/google/android/gms/panorama/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/d/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/d/c;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 443
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v1, v0, Lcom/google/android/gms/panorama/d/c;->b:Lcom/google/android/gms/panorama/b/c;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/panorama/b/c;->a(FFF)V

    iget-boolean v1, v0, Lcom/google/android/gms/panorama/d/c;->d:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/panorama/b/c;->a(FFF)V

    iput-boolean v6, v0, Lcom/google/android/gms/panorama/d/c;->d:Z

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-boolean v0, v0, Lcom/google/android/gms/panorama/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/panorama/d/b;->b([FJ)V

    .line 476
    :cond_0
    :goto_1
    return-void

    .line 444
    :cond_1
    iget v1, v0, Lcom/google/android/gms/panorama/d/c;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v3, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget v5, v5, Lcom/google/android/gms/panorama/b/c;->a:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/panorama/b/c;->a:F

    iget-object v3, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget v5, v5, Lcom/google/android/gms/panorama/b/c;->b:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/panorama/b/c;->b:F

    iget-object v3, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    mul-float/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    iget v0, v0, Lcom/google/android/gms/panorama/b/c;->c:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, v3, Lcom/google/android/gms/panorama/b/c;->c:F

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 451
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    goto :goto_1

    .line 452
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v5

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v2, v2, Lcom/google/android/gms/panorama/d/c;->i:[F

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 455
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v6

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v2, v2, Lcom/google/android/gms/panorama/d/c;->i:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    aput v1, v0, v6

    .line 456
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v7

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v2, v2, Lcom/google/android/gms/panorama/d/c;->i:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    aput v1, v0, v7

    .line 458
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    mul-float/2addr v0, v1

    .line 459
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    .line 460
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    .line 461
    iget-object v3, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, v3, Lcom/google/android/gms/panorama/d/c;->o:F

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->n:Lcom/google/android/gms/panorama/f/a;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->n:Lcom/google/android/gms/panorama/f/a;

    iget-object v1, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget v1, v1, Lcom/google/android/gms/panorama/d/c;->o:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-wide v2, v1, Lcom/google/android/gms/panorama/d/c;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, v1, Lcom/google/android/gms/panorama/d/c;->g:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v2

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/panorama/d/c;->h:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, v1, Lcom/google/android/gms/panorama/d/c;->h:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, v1, Lcom/google/android/gms/panorama/d/c;->h:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    aput v0, v2, v3

    iget v0, v1, Lcom/google/android/gms/panorama/d/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/android/gms/panorama/d/c;->j:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, v1, Lcom/google/android/gms/panorama/d/c;->g:J

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-boolean v0, v0, Lcom/google/android/gms/panorama/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/d;->a:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v0, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/panorama/d/b;->a([FJ)V

    goto/16 :goto_1

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
