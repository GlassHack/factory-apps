.class public final Lcom/google/android/location/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(D)D
    .locals 4

    .prologue
    .line 63
    const-wide v0, 0x416312d000000000L    # 1.0E7

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 12

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/google/android/location/f/o;->a(D)D

    move-result-wide v0

    .line 44
    invoke-static {p2, p3}, Lcom/google/android/location/f/o;->a(D)D

    move-result-wide v2

    .line 45
    invoke-static/range {p4 .. p5}, Lcom/google/android/location/f/o;->a(D)D

    move-result-wide v4

    .line 46
    invoke-static/range {p6 .. p7}, Lcom/google/android/location/f/o;->a(D)D

    move-result-wide v6

    .line 47
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double v10, v4, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 48
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double v2, v6, v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 49
    mul-double v6, v8, v8

    mul-double/2addr v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    .line 50
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 51
    const-wide v2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v0, v2

    .line 52
    return-wide v0
.end method
