.class public final Lcom/google/android/location/activity/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D[D)D
    .locals 4

    .prologue
    .line 109
    array-length v0, p2

    .line 110
    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 111
    aget-wide v0, p2, v0

    return-wide v0
.end method

.method public static a([D)D
    .locals 6

    .prologue
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    .line 42
    add-double/2addr v2, v4

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a([DD)[D
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 154
    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v5, v2

    move v4, v1

    .line 156
    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_2

    .line 157
    array-length v6, p0

    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [D

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aput-wide v2, v7, v0

    aget-wide v8, p0, v0

    add-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aput-wide v2, v7, v6

    new-array p0, v6, [D

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_1

    sub-int v2, v0, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, v0, v5

    add-int/lit8 v8, v6, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v8, v7, v8

    aget-wide v10, v7, v2

    sub-double/2addr v8, v10

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double v2, v8, v2

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 159
    :cond_2
    return-object p0
.end method

.method public static a(Ljava/util/List;D)[[D
    .locals 19

    .prologue
    .line 22
    const/4 v2, 0x3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 23
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v7, v3, [D

    .line 24
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 25
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/d/i;

    .line 26
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 27
    aget-object v6, v2, v5

    iget-object v8, v3, Lcom/google/android/location/d/i;->b:[F

    aget v8, v8, v5

    float-to-double v8, v8

    aput-wide v8, v6, v4

    .line 26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 29
    :cond_0
    iget-wide v8, v3, Lcom/google/android/location/d/i;->a:J

    long-to-double v8, v8

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v8, v10

    aput-wide v8, v7, v4

    .line 24
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    move v6, v3

    :goto_2
    const/4 v3, 0x3

    if-ge v6, v3, :cond_5

    .line 33
    aget-object v8, v2, v6

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v7, v3

    const/4 v3, 0x0

    aget-wide v10, v7, v3

    sub-double/2addr v4, v10

    mul-double v4, v4, p1

    double-to-int v3, v4

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :cond_2
    new-array v9, v3, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v10, v8, v5

    aput-wide v10, v9, v4

    const/4 v5, 0x0

    const/4 v4, 0x1

    move/from16 v18, v4

    move v4, v5

    move/from16 v5, v18

    :goto_3
    if-ge v5, v3, :cond_4

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    int-to-double v12, v5

    div-double v12, v12, p1

    add-double/2addr v10, v12

    :goto_4
    add-int/lit8 v12, v4, 0x1

    aget-wide v12, v7, v12

    cmpl-double v12, v10, v12

    if-lez v12, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    aget-wide v12, v8, v4

    add-int/lit8 v14, v4, 0x1

    aget-wide v14, v7, v14

    sub-double/2addr v14, v10

    mul-double/2addr v12, v14

    add-int/lit8 v14, v4, 0x1

    aget-wide v14, v8, v14

    aget-wide v16, v7, v4

    sub-double v10, v10, v16

    mul-double/2addr v10, v14

    add-double/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    aget-wide v12, v7, v12

    aget-wide v14, v7, v4

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    aput-wide v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    aput-object v9, v2, v6

    .line 32
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    .line 36
    :cond_5
    return-object v2
.end method

.method public static b([D)D
    .locals 4

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v0

    .line 49
    invoke-static {p0}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v2

    mul-double/2addr v0, v0

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public static c([D)D
    .locals 4

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/android/location/activity/a/y;->d([D)D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static d([D)D
    .locals 6

    .prologue
    .line 65
    const-wide/16 v2, 0x0

    .line 66
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    .line 67
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-wide v2
.end method
