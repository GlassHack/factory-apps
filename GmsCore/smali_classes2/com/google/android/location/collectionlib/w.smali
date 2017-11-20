.class final Lcom/google/android/location/collectionlib/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/u;


# direct methods
.method private constructor <init>(Lcom/google/android/location/collectionlib/u;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/collectionlib/u;B)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/w;-><init>(Lcom/google/android/location/collectionlib/u;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public final onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 6

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/x;

    .line 603
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v3, v3, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataReader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started by onFlushCompleted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 604
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/x;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 606
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 607
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 568
    const/4 v3, 0x0

    .line 569
    iget-object v0, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v4, v0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 570
    :try_start_0
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->c:Ljava/util/Map;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 583
    if-eqz v0, :cond_0

    .line 584
    iget-object v5, p0, Lcom/google/android/location/collectionlib/w;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v5, v5, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/z;

    .line 585
    if-eqz v0, :cond_0

    .line 586
    iget-object v0, v0, Lcom/google/android/location/collectionlib/z;->a:Lcom/google/android/location/collectionlib/ac;

    move-object v3, v0

    .line 589
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    if-eqz v3, :cond_2

    .line 591
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v4, v3, Lcom/google/android/location/collectionlib/ac;->a:Landroid/hardware/Sensor;

    if-ne v0, v4, :cond_4

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/ac;->a()Lcom/google/android/location/collectionlib/ad;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v0, v3, Lcom/google/android/location/collectionlib/ac;->d:I

    iget v4, v3, Lcom/google/android/location/collectionlib/ac;->e:I

    add-int/2addr v0, v4

    iget-object v4, v3, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    array-length v4, v4

    rem-int v4, v0, v4

    iget-object v0, v3, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/collectionlib/ad;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/ad;-><init>()V

    iget-object v5, v3, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    aput-object v0, v5, v4

    :cond_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    iput v2, v0, Lcom/google/android/location/collectionlib/ad;->b:F

    aget v1, v4, v1

    iput v1, v0, Lcom/google/android/location/collectionlib/ad;->c:F

    const/4 v1, 0x2

    aget v1, v4, v1

    iput v1, v0, Lcom/google/android/location/collectionlib/ad;->d:F

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v0, Lcom/google/android/location/collectionlib/ad;->a:J

    iget v0, v3, Lcom/google/android/location/collectionlib/ac;->e:I

    iget-object v1, v3, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    iget v0, v3, Lcom/google/android/location/collectionlib/ac;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v3, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, v3, Lcom/google/android/location/collectionlib/ac;->d:I

    .line 593
    :cond_2
    :goto_1
    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 591
    :cond_3
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, v0, Lcom/google/android/location/collectionlib/ad;->a:J

    sub-long/2addr v4, v6

    iget-wide v6, v3, Lcom/google/android/location/collectionlib/ac;->b:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, v3, Lcom/google/android/location/collectionlib/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/location/collectionlib/ac;->e:I

    goto :goto_1
.end method
