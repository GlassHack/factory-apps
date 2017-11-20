.class public Lorg/ejml/alg/dense/decomposition/TriangularSolver;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([DI)V
    .locals 12

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_2

    mul-int v0, v5, p1

    add-int/2addr v0, v5

    aget-wide v6, p0, v0

    move v1, v4

    :goto_1
    if-ge v1, v5, :cond_1

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_0

    mul-int v8, v5, p1

    add-int/2addr v8, v0

    aget-wide v8, p0, v8

    mul-int v10, v0, p1

    add-int/2addr v10, v1

    aget-wide v10, p0, v10

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v5, p1

    add-int/2addr v0, v1

    neg-double v2, v2

    div-double/2addr v2, v6

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    mul-int v0, v5, p1

    add-int/2addr v0, v5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v6

    aput-wide v1, p0, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static invertLower([D[DI)V
    .locals 12

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p2, :cond_2

    mul-int v0, v5, p2

    add-int/2addr v0, v5

    aget-wide v6, p0, v0

    move v1, v4

    :goto_1
    if-ge v1, v5, :cond_1

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_0

    mul-int v8, v5, p2

    add-int/2addr v8, v0

    aget-wide v8, p0, v8

    mul-int v10, v0, p2

    add-int/2addr v10, v1

    aget-wide v10, p1, v10

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v5, p2

    add-int/2addr v0, v1

    div-double/2addr v2, v6

    aput-wide v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    mul-int v0, v5, p2

    add-int/2addr v0, v5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v6

    aput-wide v1, p1, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([D[DI)V
    .locals 11

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, p2, :cond_1

    aget-wide v2, p1, v6

    mul-int v0, v6, p2

    move-wide v4, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-wide v7, p0, v2

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    sub-double/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    aget-wide v2, p0, v2

    div-double v2, v4, v2

    aput-wide v2, p1, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveL([D[DII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, p3, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_1

    mul-int v0, v4, p3

    add-int/2addr v0, v5

    aget-wide v2, p1, v0

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_0

    mul-int v6, v4, p2

    add-int/2addr v6, v0

    aget-wide v6, p0, v6

    mul-int v8, v0, p3

    add-int/2addr v8, v5

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v4, p3

    add-int/2addr v0, v5

    mul-int v6, v4, p2

    add-int/2addr v6, v4

    aget-wide v6, p0, v6

    div-double/2addr v2, v6

    aput-wide v2, p1, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTranL([D[DI)V
    .locals 8

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    aget-wide v1, p1, v3

    add-int/lit8 v0, v3, 0x1

    :goto_1
    if-ge v0, p2, :cond_0

    mul-int v4, v0, p2

    add-int/2addr v4, v3

    aget-wide v4, p0, v4

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    mul-int v0, v3, p2

    add-int/2addr v0, v3

    aget-wide v4, p0, v0

    div-double v0, v1, v4

    aput-wide v0, p1, v3

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([DIII[DIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p7

    if-ge v5, v0, :cond_2

    add-int/lit8 v1, p3, -0x1

    move v4, v1

    :goto_1
    if-ltz v4, :cond_1

    mul-int v1, v4, p6

    add-int/2addr v1, p5

    add-int/2addr v1, v5

    aget-wide v2, p4, v1

    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, p3, :cond_0

    mul-int v6, v4, p2

    add-int/2addr v6, p1

    add-int/2addr v6, v1

    aget-wide v6, p0, v6

    mul-int v8, v1, p6

    add-int/2addr v8, p5

    add-int/2addr v8, v5

    aget-wide v8, p4, v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v4, p6

    add-int/2addr v1, p5

    add-int/2addr v1, v5

    mul-int v6, v4, p2

    add-int/2addr v6, p1

    add-int/2addr v6, v4

    aget-wide v6, p0, v6

    div-double/2addr v2, v6

    aput-wide v2, p4, v1

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([D[DI)V
    .locals 10

    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_1

    aget-wide v2, p1, v5

    mul-int v0, v5, p2

    add-int/2addr v0, v5

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move-wide v3, v2

    :goto_1
    if-ge v0, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, p0, v1

    aget-wide v8, p1, v0

    mul-double/2addr v6, v8

    sub-double/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    mul-int v0, v5, p2

    add-int/2addr v0, v5

    aget-wide v0, p0, v0

    div-double v0, v3, v0

    aput-wide v0, p1, v5

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static solveU([D[DIII)V
    .locals 10

    add-int/lit8 v0, p4, -0x1

    move v5, v0

    :goto_0
    if-lt v5, p3, :cond_1

    aget-wide v2, p1, v5

    mul-int v0, v5, p2

    add-int/2addr v0, v5

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move-wide v3, v2

    :goto_1
    if-ge v0, p4, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, p0, v1

    aget-wide v8, p1, v0

    mul-double/2addr v6, v8

    sub-double/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    mul-int v0, v5, p2

    add-int/2addr v0, v5

    aget-wide v0, p0, v0

    div-double v0, v3, v0

    aput-wide v0, p1, v5

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_1
    return-void
.end method
