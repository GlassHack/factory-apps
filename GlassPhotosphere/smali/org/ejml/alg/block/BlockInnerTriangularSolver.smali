.class public Lorg/ejml/alg/block/BlockInnerTriangularSolver;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invertLower([DII)V
    .locals 12

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_2

    mul-int v0, v5, p1

    add-int/2addr v0, p2

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

    add-int/2addr v8, p2

    add-int/2addr v8, v0

    aget-wide v8, p0, v8

    mul-int v10, v0, p1

    add-int/2addr v10, p2

    add-int/2addr v10, v1

    aget-wide v10, p0, v10

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v5, p1

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    neg-double v2, v2

    div-double/2addr v2, v6

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    mul-int v0, v5, p1

    add-int/2addr v0, p2

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

.method public static invertLower([D[DIII)V
    .locals 11

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p2, :cond_2

    mul-int v0, v4, p2

    add-int/2addr v0, p3

    add-int/2addr v0, v4

    aget-wide v5, p0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_0

    mul-int v7, v4, p2

    add-int/2addr v7, p3

    add-int/2addr v7, v0

    aget-wide v7, p0, v7

    mul-int v9, v0, p2

    add-int/2addr v9, p4

    add-int/2addr v9, v1

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    add-double/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v4, p2

    add-int/2addr v0, p4

    add-int/2addr v0, v1

    neg-double v2, v2

    div-double/2addr v2, v5

    aput-wide v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    mul-int v0, v4, p2

    add-int/2addr v0, p4

    add-int/2addr v0, v4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v5

    aput-wide v1, p1, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveL([D[DIIIII)V
    .locals 9

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p3, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, p2, :cond_1

    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    aget-wide v1, p1, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v0

    aget-wide v5, p0, v5

    mul-int v7, v0, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v4

    aget-wide v7, p1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    div-double/2addr v1, v5

    aput-wide v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveLTransB([D[DIIIII)V
    .locals 12

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p3, :cond_2

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, p2, :cond_1

    mul-int v0, v6, p2

    add-int v0, v0, p6

    add-int/2addr v0, v5

    aget-wide v2, p1, v0

    mul-int v0, v5, p4

    add-int v1, p5, v0

    mul-int v0, v6, p2

    add-int v0, v0, p6

    add-int v7, v1, v5

    move-wide v3, v2

    :goto_2
    if-eq v1, v7, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, p0, v1

    add-int/lit8 v1, v0, 0x1

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    sub-double/2addr v3, v8

    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_0
    mul-int v0, v6, p2

    add-int v0, v0, p6

    add-int/2addr v0, v5

    mul-int v1, v5, p4

    add-int v1, v1, p5

    add-int/2addr v1, v5

    aget-wide v1, p0, v1

    div-double v1, v3, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransL([D[DIIIII)V
    .locals 9

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p3, :cond_2

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_1

    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    aget-wide v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    :goto_2
    if-ge v0, p2, :cond_0

    mul-int v5, v0, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    mul-int v7, v0, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v4

    aget-wide v7, p1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    div-double/2addr v1, v5

    aput-wide v1, p1, v0

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveTransU([D[DIIIII)V
    .locals 9

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p3, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, p2, :cond_1

    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    aget-wide v1, p1, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    mul-int v5, v0, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    mul-int v7, v0, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v4

    aget-wide v7, p1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    div-double/2addr v1, v5

    aput-wide v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static solveU([D[DIIIII)V
    .locals 9

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p3, :cond_2

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_1

    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    aget-wide v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    :goto_2
    if-ge v0, p2, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v0

    aget-wide v5, p0, v5

    mul-int v7, v0, p3

    add-int/2addr v7, p6

    add-int/2addr v7, v4

    aget-wide v7, p1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v3, p3

    add-int/2addr v0, p6

    add-int/2addr v0, v4

    mul-int v5, v3, p4

    add-int/2addr v5, p5

    add-int/2addr v5, v3

    aget-wide v5, p0, v5

    div-double/2addr v1, v5

    aput-wide v1, p1, v0

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method
