.class final Lcom/google/maps/api/android/lib6/gmm6/o/ag;
.super Lcom/google/maps/api/android/lib6/gmm6/o/b/a;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

.field private c:F

.field private d:F

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;
    .locals 7

    const v6, 0x3e19999a    # 0.15f

    const v5, 0x3bc49ba6    # 0.006f

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->e:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->e:J

    neg-long v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-static {v3, p1, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    :cond_1
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(FF)V
    .locals 2

    const v1, -0x457ced91    # -0.001f

    monitor-enter p0

    mul-float v0, p1, v1

    :try_start_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->c:F

    mul-float v0, p2, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->d:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
