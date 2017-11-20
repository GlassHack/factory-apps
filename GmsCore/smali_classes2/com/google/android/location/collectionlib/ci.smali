.class final Lcom/google/android/location/collectionlib/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cg;

.field private b:I

.field private c:I

.field private d:D

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/cg;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput v2, p0, Lcom/google/android/location/collectionlib/ci;->b:I

    .line 170
    iput v2, p0, Lcom/google/android/location/collectionlib/ci;->c:I

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/ci;->d:D

    .line 172
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/ci;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/ci;)Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ci;->e:Z

    return v0
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    .line 176
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->d(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->a()J

    move-result-wide v0

    .line 179
    iget v2, p0, Lcom/google/android/location/collectionlib/ci;->b:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 180
    iget v0, p0, Lcom/google/android/location/collectionlib/ci;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/ci;->b:I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v2, p0, Lcom/google/android/location/collectionlib/ci;->c:I

    if-ge v2, v6, :cond_0

    .line 184
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long v0, v2, v0

    long-to-double v0, v0

    .line 188
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/ci;->d:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/ci;->d:D

    .line 189
    iget v0, p0, Lcom/google/android/location/collectionlib/ci;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/ci;->c:I

    .line 190
    iget v0, p0, Lcom/google/android/location/collectionlib/ci;->c:I

    if-ne v0, v6, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->a(Lcom/google/android/location/collectionlib/cg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ci;->e:Z

    if-eqz v0, :cond_3

    .line 193
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->c(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    const-string v2, "Calibration attempt canceled by timeouts."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 194
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/ci;->d:D

    double-to-long v4, v4

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/location/collectionlib/cg;->a(Lcom/google/android/location/collectionlib/cg;ZJ)V

    .line 197
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->c(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calibration done. mSensorTimeElapsedTimeOffsetNanos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/collectionlib/ci;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v3}, Lcom/google/android/location/collectionlib/cg;->e(Lcom/google/android/location/collectionlib/cg;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 199
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
