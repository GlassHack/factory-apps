.class public final Lcom/google/android/maps/driveabout/model/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FF)F
    .locals 2

    .prologue
    .line 292
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 293
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 294
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    .line 296
    :cond_0
    return v0
.end method

.method public static a(II)F
    .locals 5

    .prologue
    .line 254
    const/high16 v0, 0x42b40000    # 90.0f

    int-to-double v1, p1

    int-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float v1, v1

    sub-float/2addr v0, v1

    .line 255
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 256
    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 258
    :cond_0
    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I
    .locals 6

    .prologue
    .line 24
    iget v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v5, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long v1, v0, v2

    .line 26
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v3, v0

    const/16 v0, 0x3f

    shr-long v0, v1, v0

    or-long/2addr v0, v3

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 210
    div-float v0, p1, v0

    .line 211
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 212
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 213
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    neg-int v0, v0

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 238
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 239
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 12

    .prologue
    .line 77
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    .line 78
    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    .line 79
    iget v2, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v3, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v2, v3

    .line 80
    iget v3, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v3, v4

    .line 81
    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v5, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v4, v5

    .line 82
    iget v5, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v6, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v5, v6

    .line 84
    int-to-long v6, v2

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v3

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 85
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    .line 87
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 90
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

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 95
    invoke-static {p2, p3, p0}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 98
    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    invoke-static {p2, p3, p0}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3, p1}, Lcom/google/android/maps/driveabout/model/ae;->f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 107
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

    .line 109
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v8

    if-lez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_8
    int-to-long v0, v4

    int-to-long v3, v3

    mul-long/2addr v0, v3

    int-to-long v3, v5

    int-to-long v8, v2

    mul-long v2, v3, v8

    sub-long/2addr v0, v2

    long-to-double v0, v0

    neg-long v2, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 114
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

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    .line 128
    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v3, v4

    .line 129
    iget v4, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v5, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget v6, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v7, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 132
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p4, p2}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 151
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p4, p3}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    iget v6, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v7, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v8, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v8

    int-to-long v8, v2

    int-to-long v2, v3

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    long-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 146
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_3
    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_4
    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-double v4, v1

    iget v1, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v6, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p4, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 150
    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-double v4, v1

    iget v1, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v6, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double v1, v6, v2

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p4, Lcom/google/android/maps/driveabout/model/ab;->b:I

    goto :goto_0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 3

    .prologue
    .line 246
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->a(II)F

    move-result v0

    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 4

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 221
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 223
    float-to-int v0, p1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 224
    const/4 v0, 0x0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    div-float v0, p1, v0

    .line 227
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 228
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    goto :goto_0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 163
    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 164
    iget v4, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 165
    iget v5, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 166
    iget v6, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 167
    iget v7, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 170
    if-gt v3, v7, :cond_1

    if-gt v5, v7, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    if-lt v6, v2, :cond_2

    if-ge v6, v4, :cond_0

    .line 176
    :cond_2
    if-ge v6, v2, :cond_3

    if-lt v6, v4, :cond_0

    .line 179
    :cond_3
    if-lt v4, v2, :cond_5

    .line 180
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-lez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 182
    :cond_5
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-gez v2, :cond_6

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public static c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)J
    .locals 6

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-long v0, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-long v2, v2

    iget v4, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 189
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 190
    return-void
.end method

.method public static d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 195
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 196
    return-void
.end method

.method public static e(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 201
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 202
    return-void
.end method

.method private static f(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 8

    .prologue
    .line 277
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 278
    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 279
    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v5, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 280
    iget v6, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v7, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    .line 281
    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    .line 282
    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    .line 284
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
