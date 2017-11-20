.class public final Lcom/google/h/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)D
    .locals 4

    .prologue
    .line 51
    const-wide v0, 0x416312d000000000L    # 1.0E7

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(D)D
    .locals 4

    .prologue
    .line 62
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p0, p1}, Lcom/google/h/a/b/a/a;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 63
    const-wide v2, 0x415849c600000000L    # 6367000.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 65
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method
