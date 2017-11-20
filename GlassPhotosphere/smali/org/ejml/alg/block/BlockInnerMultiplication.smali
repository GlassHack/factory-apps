.class public Lorg/ejml/alg/block/BlockInnerMultiplication;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockMultMinus([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p5

    move/from16 v1, p3

    :goto_0
    move/from16 v0, p6

    if-ge v7, v0, :cond_2

    add-int v8, v2, p8

    add-int v9, v1, p7

    move v3, v1

    move/from16 v1, p4

    :goto_1
    if-eq v3, v9, :cond_1

    add-int/lit8 v6, v3, 0x1

    aget-wide v10, p0, v3

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v1, v8, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p2, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p1, v4

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    aput-wide v12, p2, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    move v1, v4

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p8

    move v7, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultMinusTransA([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p5

    :goto_0
    move/from16 v0, p7

    if-ge v7, v0, :cond_2

    add-int v1, v7, p3

    mul-int v3, p7, p6

    add-int v8, v1, v3

    move v6, v1

    move/from16 v1, p4

    :goto_1
    if-eq v6, v8, :cond_1

    aget-wide v9, p0, v6

    add-int v11, v1, p8

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v4, v11, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p2, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p1, v4

    mul-double/2addr v14, v9

    sub-double/2addr v12, v14

    aput-wide v12, p2, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    add-int v1, v6, p7

    move v6, v1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p8

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultMinusTransB([D[D[DIIIIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p6

    if-ge v5, v0, :cond_2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p8

    if-ge v4, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p7

    if-ge v1, v0, :cond_0

    mul-int v6, v5, p7

    add-int/2addr v6, v1

    add-int/2addr v6, p3

    aget-wide v6, p0, v6

    mul-int v8, v4, p7

    add-int/2addr v8, v1

    add-int/2addr v8, p4

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int/2addr v1, p5

    aget-wide v6, p2, v1

    sub-double v2, v6, v2

    aput-wide v2, p2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlus(D[D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p7

    move/from16 v1, p5

    :goto_0
    move/from16 v0, p8

    if-ge v7, v0, :cond_2

    add-int v8, v2, p10

    add-int v9, v1, p9

    move v3, v1

    move/from16 v1, p6

    :goto_1
    if-eq v3, v9, :cond_1

    add-int/lit8 v6, v3, 0x1

    aget-wide v3, p2, v3

    mul-double v10, p0, v3

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v1, v8, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p4, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p3, v4

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p4, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    move v1, v4

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p10

    move v7, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlus([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p5

    move/from16 v1, p3

    :goto_0
    move/from16 v0, p6

    if-ge v7, v0, :cond_2

    add-int v8, v2, p8

    add-int v9, v1, p7

    move v3, v1

    move/from16 v1, p4

    :goto_1
    if-eq v3, v9, :cond_1

    add-int/lit8 v6, v3, 0x1

    aget-wide v10, p0, v3

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v1, v8, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p2, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p1, v4

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    move v1, v4

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p8

    move v7, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransA(D[D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p7

    :goto_0
    move/from16 v0, p9

    if-ge v7, v0, :cond_2

    add-int v1, v7, p5

    mul-int v3, p9, p8

    add-int v8, v1, v3

    move v6, v1

    move/from16 v1, p6

    :goto_1
    if-eq v6, v8, :cond_1

    aget-wide v3, p2, v6

    mul-double v9, p0, v3

    add-int v11, v1, p10

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v4, v11, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p4, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p3, v4

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    aput-wide v12, p4, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    add-int v1, v6, p9

    move v6, v1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p10

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransA([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v2, p5

    :goto_0
    move/from16 v0, p7

    if-ge v7, v0, :cond_2

    add-int v1, v7, p3

    mul-int v3, p7, p6

    add-int v8, v1, v3

    move v6, v1

    move/from16 v1, p4

    :goto_1
    if-eq v6, v8, :cond_1

    aget-wide v9, p0, v6

    add-int v11, v1, p8

    move v4, v1

    move v1, v2

    :goto_2
    if-eq v4, v11, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-wide v12, p2, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v14, p1, v4

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    aput-wide v12, p2, v1

    move v1, v3

    move v4, v5

    goto :goto_2

    :cond_0
    add-int v1, v6, p7

    move v6, v1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v2, v2, p8

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransB(D[D[D[DIIIIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p8

    if-ge v5, v0, :cond_2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p10

    if-ge v4, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p9

    if-ge v1, v0, :cond_0

    mul-int v6, v5, p9

    add-int/2addr v6, v1

    add-int/2addr v6, p5

    aget-wide v6, p2, v6

    mul-int v8, v4, p9

    add-int/2addr v8, v1

    add-int v8, v8, p6

    aget-wide v8, p3, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v5, p10

    add-int/2addr v1, v4

    add-int v1, v1, p7

    aget-wide v6, p4, v1

    mul-double/2addr v2, p0

    add-double/2addr v2, v6

    aput-wide v2, p4, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultPlusTransB([D[D[DIIIIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p6

    if-ge v5, v0, :cond_2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p8

    if-ge v4, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p7

    if-ge v1, v0, :cond_0

    mul-int v6, v5, p7

    add-int/2addr v6, v1

    add-int/2addr v6, p3

    aget-wide v6, p0, v6

    mul-int v8, v4, p7

    add-int/2addr v8, v1

    add-int/2addr v8, p4

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int/2addr v1, p5

    aget-wide v6, p2, v1

    add-double/2addr v2, v6

    aput-wide v2, p2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSet(D[D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v3, p7

    move/from16 v1, p5

    :goto_0
    move/from16 v0, p8

    if-ge v7, v0, :cond_2

    add-int v8, v3, p10

    add-int v9, v1, p9

    move v2, v1

    move/from16 v1, p6

    :goto_1
    if-eq v2, v9, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-wide v4, p2, v2

    mul-double v10, p0, v4

    move/from16 v0, p6

    if-ne v1, v0, :cond_3

    move v2, v3

    :goto_2
    if-eq v2, v8, :cond_0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-wide v12, p3, v1

    mul-double/2addr v12, v10

    aput-wide v12, p4, v2

    move v2, v4

    move v1, v5

    goto :goto_2

    :goto_3
    if-eq v2, v8, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-wide v12, p4, v2

    add-int/lit8 v5, v1, 0x1

    aget-wide v14, p3, v1

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p4, v2

    move v2, v4

    move v1, v5

    goto :goto_3

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v3, v3, p10

    move v7, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public static blockMultSet([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v3, p5

    move/from16 v1, p3

    :goto_0
    move/from16 v0, p6

    if-ge v7, v0, :cond_2

    add-int v8, v3, p8

    add-int v9, v1, p7

    move v2, v1

    move/from16 v1, p4

    :goto_1
    if-eq v2, v9, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-wide v10, p0, v2

    move/from16 v0, p4

    if-ne v1, v0, :cond_3

    move v2, v3

    :goto_2
    if-eq v2, v8, :cond_0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-wide v12, p1, v1

    mul-double/2addr v12, v10

    aput-wide v12, p2, v2

    move v2, v4

    move v1, v5

    goto :goto_2

    :goto_3
    if-eq v2, v8, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-wide v12, p2, v2

    add-int/lit8 v5, v1, 0x1

    aget-wide v14, p1, v1

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v2

    move v2, v4

    move v1, v5

    goto :goto_3

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v3, v3, p8

    move v7, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public static blockMultSetTransA(D[D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v3, p7

    :goto_0
    move/from16 v0, p9

    if-ge v7, v0, :cond_2

    add-int v1, v7, p5

    mul-int v2, p9, p8

    add-int v8, v1, v2

    move v6, v1

    move/from16 v1, p6

    :goto_1
    if-eq v6, v8, :cond_1

    aget-wide v4, p2, v6

    mul-double v9, p0, v4

    add-int v11, v1, p10

    move/from16 v0, p6

    if-ne v1, v0, :cond_3

    move v2, v3

    :goto_2
    if-eq v1, v11, :cond_0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-wide v12, p3, v1

    mul-double/2addr v12, v9

    aput-wide v12, p4, v2

    move v2, v4

    move v1, v5

    goto :goto_2

    :goto_3
    if-eq v1, v11, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-wide v12, p4, v2

    add-int/lit8 v5, v1, 0x1

    aget-wide v14, p3, v1

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    aput-wide v12, p4, v2

    move v2, v4

    move v1, v5

    goto :goto_3

    :cond_0
    add-int v2, v6, p9

    move v6, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v3, v3, p10

    move v7, v1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public static blockMultSetTransA([D[D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v7, v1

    move/from16 v3, p5

    :goto_0
    move/from16 v0, p7

    if-ge v7, v0, :cond_2

    add-int v1, v7, p3

    mul-int v2, p7, p6

    add-int v8, v1, v2

    move v6, v1

    move/from16 v1, p4

    :goto_1
    if-eq v6, v8, :cond_1

    aget-wide v9, p0, v6

    add-int v11, v1, p8

    move/from16 v0, p4

    if-ne v1, v0, :cond_3

    move v2, v3

    :goto_2
    if-eq v1, v11, :cond_0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-wide v12, p1, v1

    mul-double/2addr v12, v9

    aput-wide v12, p2, v2

    move v2, v4

    move v1, v5

    goto :goto_2

    :goto_3
    if-eq v1, v11, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-wide v12, p2, v2

    add-int/lit8 v5, v1, 0x1

    aget-wide v14, p1, v1

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    aput-wide v12, p2, v2

    move v2, v4

    move v1, v5

    goto :goto_3

    :cond_0
    add-int v2, v6, p7

    move v6, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v7, 0x1

    add-int v3, v3, p8

    move v7, v1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public static blockMultSetTransB(D[D[D[DIIIIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p8

    if-ge v5, v0, :cond_2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p10

    if-ge v4, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p9

    if-ge v1, v0, :cond_0

    mul-int v6, v5, p9

    add-int/2addr v6, v1

    add-int/2addr v6, p5

    aget-wide v6, p2, v6

    mul-int v8, v4, p9

    add-int/2addr v8, v1

    add-int v8, v8, p6

    aget-wide v8, p3, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v5, p10

    add-int/2addr v1, v4

    add-int v1, v1, p7

    mul-double/2addr v2, p0

    aput-wide v2, p4, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blockMultSetTransB([D[D[DIIIIII)V
    .locals 10

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p6

    if-ge v5, v0, :cond_2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p8

    if-ge v4, v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p7

    if-ge v1, v0, :cond_0

    mul-int v6, v5, p7

    add-int/2addr v6, v1

    add-int/2addr v6, p3

    aget-wide v6, p0, v6

    mul-int v8, v4, p7

    add-int/2addr v8, v1

    add-int/2addr v8, p4

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int/2addr v1, p5

    aput-wide v2, p2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    return-void
.end method
