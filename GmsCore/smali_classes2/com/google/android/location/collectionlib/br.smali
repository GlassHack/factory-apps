.class public final Lcom/google/android/location/collectionlib/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/br;->b:I

    .line 436
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/google/android/location/collectionlib/br;->a:F

    .line 437
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/collectionlib/br;->b:I

    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 450
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 448
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/br;->c:J

    iget v2, p0, Lcom/google/android/location/collectionlib/br;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/location/collectionlib/br;->a:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/br;->c:J

    .line 458
    iget v0, p0, Lcom/google/android/location/collectionlib/br;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/br;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
