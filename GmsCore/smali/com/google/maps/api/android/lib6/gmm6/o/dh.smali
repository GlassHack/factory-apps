.class final Lcom/google/maps/api/android/lib6/gmm6/o/dh;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bz;


# instance fields
.field b:I

.field private c:Z

.field private d:F

.field private e:J

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bz;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->f:I

    return-void
.end method

.method private static a(JJIZ)F
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    sub-long v0, p2, p0

    long-to-float v0, v0

    int-to-float v1, p4

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p5, :cond_0

    :goto_0
    return v0

    :cond_0
    sub-float v0, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->b:I

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->f:I

    int-to-long v4, v0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    if-eqz v1, :cond_1

    :goto_0
    long-to-float v1, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->e:J

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->e:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->e:J

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->f:I

    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->a(JJIZ)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->e:J

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->f:I

    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->a(JJIZ)F

    move-result v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->c:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->b:I

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
