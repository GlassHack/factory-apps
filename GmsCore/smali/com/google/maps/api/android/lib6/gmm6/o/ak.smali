.class final Lcom/google/maps/api/android/lib6/gmm6/o/ak;
.super Lcom/google/maps/api/android/lib6/gmm6/o/b/a;


# instance fields
.field private b:F

.field private volatile c:Z

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[F
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    aput v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->b:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->b:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->c:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p0, v2

    :goto_0
    return-object p0

    :cond_0
    monitor-exit p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(F)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    const/4 v5, 0x0

    :cond_1
    :goto_1
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v2, v5

    float-to-double v2, v2

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v2

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v10

    sub-int/2addr v7, v10

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v10

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v2, v3, v7, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v10

    sub-int/2addr v7, v10

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v10

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v7, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[F

    move-result-object v3

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v10, 0x0

    aget v10, v3, v10

    mul-float/2addr v7, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    const/4 v10, 0x2

    aget v2, v2, v10

    const/4 v10, 0x2

    aget v3, v3, v10

    mul-float/2addr v2, v3

    add-float/2addr v2, v7

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    invoke-virtual {v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double v2, v12, v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    float-to-double v14, v7

    const-wide v16, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-int v7, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v2, v14

    neg-double v2, v2

    double-to-int v2, v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v14

    add-int/2addr v7, v14

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    add-int/2addr v2, v6

    invoke-direct {v3, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b(F)F

    move-result v4

    div-float v2, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    div-double v6, v12, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    div-double v8, v12, v8

    add-double/2addr v6, v8

    double-to-float v4, v6

    mul-float/2addr v2, v4

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    cmpl-float v3, v2, v5

    if-gtz v3, :cond_1

    move v5, v2

    goto/16 :goto_1
.end method

.method final declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
