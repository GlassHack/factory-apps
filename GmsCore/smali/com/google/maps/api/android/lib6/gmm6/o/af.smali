.class public final Lcom/google/maps/api/android/lib6/gmm6/o/af;
.super Lcom/google/maps/api/android/lib6/gmm6/o/b/a;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

.field private final d:I

.field private final e:J

.field private f:I

.field private final g:Lcom/google/g/a/d;

.field private h:F


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/d;IZF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->f:I

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->g:Lcom/google/g/a/d;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->g:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->e:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->d:I

    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->h:F

    :goto_1
    return-void

    :cond_0
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->d:I

    goto :goto_0

    :cond_1
    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->h:F

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->f:I

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;
    .locals 18

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->g:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->d:I

    if-nez v5, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a()I

    move-result v2

    move v8, v2

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->f:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    move-object/from16 p0, v0

    :goto_2
    return-object p0

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->e:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v3, v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v4, v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float v7, v2, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->h:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    iget-object v2, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    iget v2, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v4, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v7

    add-float/2addr v4, v2

    :goto_3
    iget v2, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v5, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v7

    add-float/2addr v5, v2

    iget v6, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v2, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    cmpl-float v11, v6, v2

    if-lez v11, :cond_5

    sub-float v11, v6, v2

    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    const/high16 v11, 0x43b40000    # 360.0f

    sub-float/2addr v6, v11

    :cond_2
    :goto_4
    sub-float/2addr v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v6, v2

    float-to-double v12, v6

    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    if-gez v2, :cond_3

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v6, v2

    :cond_3
    iget v2, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    iget v9, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    sub-float/2addr v9, v2

    mul-float/2addr v7, v9

    add-float/2addr v7, v2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    or-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;->f:I

    goto/16 :goto_2

    :cond_4
    iget-object v3, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const v5, 0x40490fdb    # (float)Math.PI

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    iget v4, v9, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v5, v10, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b(F)F

    move-result v4

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b(F)F

    move-result v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v7

    mul-float/2addr v4, v11

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    float-to-double v14, v6

    const-wide v16, 0x3ff3333333333333L    # 1.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v2

    const-wide v16, 0x3fd999999999999aL    # 0.4

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v2, v12

    add-float/2addr v2, v4

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a(F)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto/16 :goto_3

    :cond_5
    sub-float v11, v2, v6

    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    const/high16 v11, 0x43b40000    # 360.0f

    sub-float/2addr v2, v11

    goto/16 :goto_4

    :cond_6
    move v8, v4

    goto/16 :goto_1
.end method
