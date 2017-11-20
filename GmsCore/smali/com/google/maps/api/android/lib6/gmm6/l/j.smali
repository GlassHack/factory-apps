.class public final Lcom/google/maps/api/android/lib6/gmm6/l/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)F
    .locals 6

    const/high16 v0, 0x42b40000    # 90.0f

    int-to-double v2, p1

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I
    .locals 6

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    float-to-int v0, p1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    const/4 v0, 0x0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    :goto_0
    return-void

    :cond_0
    div-float v0, p1, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    neg-int v0, v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 12

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v3, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v2, v3

    iget v3, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v3, v4

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v4, v5

    iget v5, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v5, v6

    int-to-long v6, v2

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v3

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v4, v5

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {p2, p3, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    neg-int v8, v4

    int-to-long v8, v8

    int-to-long v10, v1

    mul-long/2addr v8, v10

    int-to-long v10, v5

    int-to-long v0, v0

    mul-long/2addr v0, v10

    add-long/2addr v0, v8

    long-to-double v0, v0

    long-to-double v8, v6

    div-double/2addr v0, v8

    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v8

    if-lez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    int-to-long v0, v4

    int-to-long v8, v3

    mul-long/2addr v0, v8

    int-to-long v4, v5

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-double v0, v0

    neg-long v2, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v3, v4

    iget v4, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v5, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget v6, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v7, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p4, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v7, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v8, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v8

    int-to-long v8, v2

    int-to-long v2, v3

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    long-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-double v4, v1

    iget v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v6, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-double v4, v1

    iget v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v6, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    goto :goto_0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 3

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(II)F

    move-result v0

    return v0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v6, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v7, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v3, v7, :cond_1

    if-gt v5, v7, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt v6, v2, :cond_2

    if-ge v6, v4, :cond_0

    :cond_2
    if-ge v6, v2, :cond_3

    if-lt v6, v4, :cond_0

    :cond_3
    if-lt v4, v2, :cond_4

    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v10, v5

    mul-long/2addr v8, v10

    sub-int v3, v7, v3

    int-to-long v6, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v10, v5

    mul-long/2addr v8, v10

    sub-int v3, v7, v3

    int-to-long v6, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    cmp-long v2, v8, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)J
    .locals 6

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v0, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v2, v2

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    return-void
.end method

.method public static d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    return-void
.end method

.method private static e(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 8

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iget v6, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
