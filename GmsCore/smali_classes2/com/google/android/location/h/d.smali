.class public final Lcom/google/android/location/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)D
    .locals 4

    .prologue
    .line 40
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 8

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v0

    .line 62
    invoke-static {p4, p5}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v4

    .line 63
    invoke-static {p2, p3}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v2

    .line 64
    invoke-static {p6, p7}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v6

    .line 65
    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->b(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/google/android/location/f/ak;)D
    .locals 4

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/google/android/location/f/n;)D
    .locals 4

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/location/f/n;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 276
    const v0, 0x20c49b

    if-le p0, v0, :cond_0

    .line 278
    const v0, 0x7fffffff

    .line 280
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0x3e8

    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I
    .locals 10

    .prologue
    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 88
    iget v0, p0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v0, v0

    mul-double/2addr v0, v8

    iget v2, p0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p1, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    iget v6, p1, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static b(DDDD)D
    .locals 8

    .prologue
    .line 74
    sub-double v0, p4, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 75
    sub-double v2, p6, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 76
    mul-double/2addr v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 77
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 78
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 80
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 81
    const-wide v2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static b(I)D
    .locals 4

    .prologue
    .line 290
    int-to-double v0, p0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Lcom/google/android/location/f/ak;)D
    .locals 4

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D
    .locals 10

    .prologue
    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 179
    iget v0, p0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v0, v0

    mul-double/2addr v0, v8

    iget v2, p0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p1, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    iget v6, p1, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(D)I
    .locals 4

    .prologue
    .line 299
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static c(DDDD)D
    .locals 12

    .prologue
    .line 142
    invoke-static {p2, p3}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v0

    .line 143
    invoke-static/range {p6 .. p7}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v2

    .line 144
    invoke-static {p0, p1}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v4

    .line 145
    invoke-static/range {p4 .. p5}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v6

    .line 147
    sub-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 149
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v0

    .line 165
    :goto_0
    return-wide v0

    .line 152
    :cond_1
    sub-double v8, v4, v6

    .line 155
    sub-double/2addr v0, v2

    .line 159
    add-double v2, v4, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 160
    mul-double/2addr v2, v2

    .line 161
    mul-double v4, v8, v8

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 165
    const-wide v2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static c(Lcom/google/android/location/f/ak;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    iget v1, p0, Lcom/google/android/location/f/ak;->f:I

    const v2, 0x989680

    if-le v1, v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    iget v1, p0, Lcom/google/android/location/f/ak;->d:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/location/f/ak;->e:I

    if-eqz v1, :cond_0

    .line 314
    :cond_2
    iget v1, p0, Lcom/google/android/location/f/ak;->d:I

    const v2, 0x35a4e900

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ak;->d:I

    const v2, -0x35a4e900

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ak;->e:I

    const v2, 0x6b49d200

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ak;->e:I

    const v2, -0x6b49d200

    if-lt v1, v2, :cond_0

    .line 318
    const/4 v0, 0x1

    goto :goto_0
.end method
