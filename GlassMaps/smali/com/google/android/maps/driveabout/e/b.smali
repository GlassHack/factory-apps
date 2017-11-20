.class public final Lcom/google/android/maps/driveabout/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/maps/driveabout/f/e;)F
    .locals 2

    .prologue
    .line 22
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;)F

    move-result v0

    .line 53
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/b;->b(Lcom/google/android/maps/driveabout/f/e;)F

    move-result v1

    .line 54
    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 55
    if-gez v0, :cond_0

    .line 56
    add-int/lit16 v0, v0, 0x168

    .line 58
    :cond_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    add-int/lit16 v0, v0, -0x168

    :cond_1
    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/f/e;)F
    .locals 2

    .prologue
    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    goto :goto_0
.end method

.method public static c(Lcom/google/android/maps/driveabout/f/e;)I
    .locals 5

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/b;->b(Lcom/google/android/maps/driveabout/f/e;)F

    move-result v0

    .line 67
    float-to-double v1, v0

    const-wide v3, 0x4075180000000000L    # 337.5

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    float-to-double v1, v0

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 69
    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x4050e00000000000L    # 67.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    .line 70
    const/4 v0, 0x2

    goto :goto_0

    .line 71
    :cond_2
    float-to-double v1, v0

    const-wide v3, 0x405c200000000000L    # 112.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    .line 72
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :cond_3
    float-to-double v1, v0

    const-wide v3, 0x4063b00000000000L    # 157.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4

    .line 74
    const/4 v0, 0x4

    goto :goto_0

    .line 75
    :cond_4
    float-to-double v1, v0

    const-wide v3, 0x4069500000000000L    # 202.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_5

    .line 76
    const/4 v0, 0x5

    goto :goto_0

    .line 77
    :cond_5
    float-to-double v1, v0

    const-wide v3, 0x406ef00000000000L    # 247.5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_6

    .line 78
    const/4 v0, 0x6

    goto :goto_0

    .line 79
    :cond_6
    float-to-double v0, v0

    const-wide v2, 0x4072480000000000L    # 292.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_7

    .line 80
    const/4 v0, 0x7

    goto :goto_0

    .line 82
    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method
