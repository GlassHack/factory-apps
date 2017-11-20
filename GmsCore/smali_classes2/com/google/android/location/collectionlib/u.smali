.class public final Lcom/google/android/location/collectionlib/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static i:Lcom/google/android/location/collectionlib/u;


# instance fields
.field public final a:Lcom/google/android/location/p/a/c;

.field public final b:Landroid/hardware/SensorManager;

.field public final c:Landroid/hardware/SensorEventListener;

.field final d:Lcom/google/android/location/collectionlib/cg;

.field public final e:Ljava/lang/Object;

.field f:Lcom/google/android/location/collectionlib/aa;

.field final g:Ljava/util/List;

.field public final h:Landroid/util/SparseArray;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/location/collectionlib/w;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/collectionlib/w;-><init>(Lcom/google/android/location/collectionlib/u;B)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->c:Landroid/hardware/SensorEventListener;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/u;->k:J

    .line 106
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    .line 107
    new-instance v0, Lcom/google/android/location/collectionlib/cg;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/collectionlib/cg;-><init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->d:Lcom/google/android/location/collectionlib/cg;

    .line 108
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->b:Landroid/hardware/SensorManager;

    .line 109
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/android/location/p/a/c;)Lcom/google/android/location/collectionlib/u;
    .locals 3

    .prologue
    .line 96
    const-class v1, Lcom/google/android/location/collectionlib/u;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 102
    :goto_0
    monitor-exit v1

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/location/collectionlib/u;->i:Lcom/google/android/location/collectionlib/u;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/google/android/location/collectionlib/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/collectionlib/u;-><init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V

    sput-object v0, Lcom/google/android/location/collectionlib/u;->i:Lcom/google/android/location/collectionlib/u;

    .line 102
    :cond_1
    sget-object v0, Lcom/google/android/location/collectionlib/u;->i:Lcom/google/android/location/collectionlib/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/collectionlib/cb;)Landroid/hardware/Sensor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 158
    if-nez v0, :cond_0

    move-object v0, v1

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/collectionlib/u;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 162
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    if-eqz v0, :cond_1

    .line 205
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Shutting down SensorBatchThread because of no clients."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/aa;->c()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    .line 209
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0, p2}, Lcom/google/android/location/collectionlib/u;->b(Lcom/google/android/location/collectionlib/cb;)V

    .line 133
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "startBatch: clientId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " scannerType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sensorDelay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->d:Lcom/google/android/location/collectionlib/cg;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cg;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Unable to calibrate sensor timestamps with SystemClock.elapsedRealtimeNanos"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->c(Ljava/lang/String;)V

    .line 138
    :cond_1
    monitor-exit v6

    move v0, v3

    .line 151
    :goto_0
    return v0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    if-nez v0, :cond_4

    .line 141
    new-instance v0, Lcom/google/android/location/collectionlib/aa;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/aa;-><init>(Lcom/google/android/location/collectionlib/u;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    .line 142
    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/aa;->a()Z

    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Unable to start SensorBatchThread."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->c(Ljava/lang/String;)V

    .line 145
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    .line 146
    monitor-exit v6

    move v0, v3

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->c()Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScannerType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    :cond_5
    move v0, v3

    .line 150
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/u;->a()V

    .line 151
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 149
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v7

    invoke-virtual {p0, p2}, Lcom/google/android/location/collectionlib/u;->a(Lcom/google/android/location/collectionlib/cb;)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/z;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/location/collectionlib/z;

    invoke-direct {v0, p1, v2}, Lcom/google/android/location/collectionlib/z;-><init>(Ljava/lang/String;Landroid/hardware/Sensor;)V

    iget-object v3, p0, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v1

    move v3, v1

    :goto_2
    if-nez v0, :cond_8

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Already monitoring scanner type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/google/android/location/collectionlib/u;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/u;->c:Landroid/hardware/SensorEventListener;

    const v4, 0x7fffffff

    iget-object v3, p0, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/aa;->b()Landroid/os/Handler;

    move-result-object v5

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_9
    iget-object v0, v0, Lcom/google/android/location/collectionlib/z;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/google/android/location/collectionlib/cb;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/cb;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/location/collectionlib/u;->a(Lcom/google/android/location/collectionlib/cb;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 178
    :goto_0
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supporting sensors other than accelerometer because of RAM implication."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
