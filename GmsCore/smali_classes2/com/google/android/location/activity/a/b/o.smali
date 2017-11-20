.class public final Lcom/google/android/location/activity/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DD)D
    .locals 2

    .prologue
    .line 144
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(DDD)D
    .locals 6

    .prologue
    .line 160
    neg-double v0, p2

    mul-double v2, p0, p0

    mul-double v4, p4, p4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a([DII)D
    .locals 6

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    move-wide v2, v0

    move v0, p1

    .line 91
    :goto_0
    if-ge v0, p2, :cond_0

    .line 92
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    sub-int v0, p2, p1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a([D)[F
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 164
    .line 166
    array-length v3, p0

    move-wide v4, v0

    move-wide v6, v0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v8, p0, v0

    .line 167
    add-double/2addr v6, v8

    .line 168
    mul-double/2addr v8, v8

    add-double/2addr v4, v8

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v8, v6, v0

    .line 171
    array-length v0, p0

    .line 172
    if-nez v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 173
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    double-to-float v4, v8

    aput v4, v3, v2

    const/4 v2, 0x1

    double-to-float v0, v0

    aput v0, v3, v2

    return-object v3

    .line 172
    :cond_1
    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    int-to-double v0, v0

    div-double v0, v4, v0

    goto :goto_1
.end method
