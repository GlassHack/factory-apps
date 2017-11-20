.class final Lcom/google/maps/api/android/lib6/gmm6/o/ai;
.super Lcom/google/maps/api/android/lib6/gmm6/o/b/a;


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private volatile h:Z

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

.field private final j:[F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->j:[F

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->f:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->g:F

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->d:F

    iget v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->e:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    mul-float/2addr v1, v2

    const v2, -0x42333333    # -0.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->e:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v10

    if-gez v0, :cond_3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v10

    if-gez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->h:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    monitor-exit p0

    move-object p0, v0

    :cond_0
    :goto_2
    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_8

    :cond_4
    const/4 v0, 0x1

    move v2, v0

    :goto_3
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-static {v2, p1, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-static {p1, v2, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    :cond_7
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;FFF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final declared-synchronized a(FFFFFF)[F
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->d:F

    add-float/2addr v0, p5

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->d:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->e:F

    add-float/2addr v0, p6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->e:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->f:F

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->g:F

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->h:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->j:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->b:F

    add-float/2addr v2, v3

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->j:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->c:F

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b(F)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->j:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
