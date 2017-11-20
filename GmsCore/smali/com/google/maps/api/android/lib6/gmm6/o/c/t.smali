.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/t;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [F

    aput v2, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v0, 0x14

    new-array v0, v0, [F

    aput v2, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v0, 0x14

    new-array v0, v0, [F

    aput v4, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;)V
    .locals 8

    const/4 v2, 0x0

    const-wide v0, 0x3fb015bfa0000000L    # 0.06283185631036758

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v4, v0

    const v0, 0x3d80adfd

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    const/16 v6, 0x64

    if-ge v0, v6, :cond_1

    add-float v6, v3, v2

    add-float v7, v1, v2

    invoke-interface {p0, v6, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    if-eqz p1, :cond_0

    int-to-short v6, v0

    invoke-interface {p1, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->e_(I)V

    :cond_0
    neg-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float v3, v6, v5

    mul-float/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;)V
    .locals 9

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide v6, 0x3fb015bfa0000000L    # 0.06283185631036758

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v5, v6

    const v1, 0x3d80adfd

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    invoke-interface {p0, v2, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->e_(I)V

    :cond_0
    move v1, v2

    move v3, v4

    :goto_0
    const/16 v7, 0x64

    if-ge v0, v7, :cond_2

    add-float v7, v3, v2

    add-float v8, v1, v2

    invoke-interface {p0, v7, v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    if-eqz p1, :cond_1

    add-int/lit8 v7, v0, 0x1

    int-to-short v7, v7

    invoke-interface {p1, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->e_(I)V

    :cond_1
    neg-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    mul-float v3, v7, v6

    mul-float/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->e_(I)V

    :goto_1
    return-void

    :cond_3
    invoke-interface {p0, v4, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    goto :goto_1
.end method
