.class public Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeTauAndDivide(II[DD)D
    .locals 7

    const-wide/16 v3, 0x0

    move v0, p0

    move-wide v1, v3

    :goto_0
    if-ge v0, p1, :cond_0

    aget-wide v5, p2, v0

    div-double/2addr v5, p3

    aput-wide v5, p2, v0

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aget-wide v5, p2, p0

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    neg-double v0, v0

    :cond_1
    return-wide v0
.end method

.method public static computeTauAndDivide(II[DID)D
    .locals 8

    const-wide/16 v3, 0x0

    move v0, p0

    move-wide v1, v3

    :goto_0
    if-ge v0, p1, :cond_0

    add-int v5, p3, v0

    aget-wide v6, p2, v5

    div-double/2addr v6, p4

    aput-wide v6, p2, v5

    mul-double v5, v6, v6

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-int v2, p3, p0

    aget-wide v5, p2, v2

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    neg-double v0, v0

    :cond_1
    return-wide v0
.end method

.method public static divideElements(II[DD)V
    .locals 2

    :goto_0
    if-ge p0, p1, :cond_0

    aget-wide v0, p2, p0

    div-double/2addr v0, p3

    aput-wide v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements(II[DID)V
    .locals 3

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p3

    aget-wide v1, p2, v0

    div-double/2addr v1, p4

    aput-wide v1, p2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Bcol(III[D[DID)V
    .locals 3

    mul-int v0, p0, p2

    add-int/2addr v0, p5

    :goto_0
    if-ge p0, p1, :cond_0

    aget-wide v1, p3, p0

    div-double/2addr v1, p6

    aput-wide v1, p3, p0

    aput-wide v1, p4, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideElements_Brow(II[D[DID)V
    .locals 3

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p0, p4

    aget-wide v1, p3, v0

    div-double/2addr v1, p5

    aput-wide v1, p3, v0

    aput-wide v1, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findMax([DII)D
    .locals 7

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    add-int v4, p1, p2

    :goto_0
    if-ge p1, v4, :cond_1

    aget-wide v0, p0, p1

    const-wide/16 v5, 0x0

    cmpg-double v5, v0, v5

    if-gez v5, :cond_0

    neg-double v0, v0

    :cond_0
    cmpl-double v5, v0, v2

    if-lez v5, :cond_2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V
    .locals 11

    :goto_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge p4, v1, :cond_2

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p4

    add-int v1, v1, p5

    const-wide/16 v2, 0x0

    move-wide v5, v2

    move v3, v1

    move/from16 v2, p5

    :goto_1
    move/from16 v0, p6

    if-ge v2, v0, :cond_0

    iget-object v7, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v7, v7, v3

    aget-wide v9, p1, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_0
    neg-double v2, p2

    mul-double v4, v2, v5

    move v2, v1

    move/from16 v1, p5

    :goto_2
    move/from16 v0, p6

    if-ge v1, v0, :cond_1

    iget-object v6, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v7, v6, v2

    aget-wide v9, p1, v1

    mul-double/2addr v9, v4

    add-double/2addr v7, v9

    aput-wide v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V
    .locals 12

    move/from16 v2, p4

    :goto_0
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, p5

    iget-object v5, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v6, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v6, v6, p5

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    aput-wide v3, p7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x1

    move v5, v2

    :goto_1
    move/from16 v0, p6

    if-ge v5, v0, :cond_2

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v5

    add-int v2, v2, p4

    aget-wide v6, p1, v5

    move v3, v2

    move/from16 v2, p4

    :goto_2
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v4, :cond_1

    aget-wide v8, p7, v2

    iget-object v10, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, p7, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_2
    move/from16 v2, p4

    :goto_3
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_4

    aget-wide v3, p7, v2

    mul-double/2addr v3, p2

    aput-wide v3, p7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p5, p5, 0x1

    :cond_4
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    aget-wide v5, p1, p5

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v2, v2, p5

    add-int v2, v2, p4

    move v3, v2

    move/from16 v2, p4

    :goto_4
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v4, :cond_3

    iget-object v7, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, v7, v3

    aget-wide v10, p7, v2

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DIDIII[D)V
    .locals 12

    move/from16 v2, p5

    :goto_0
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_0

    add-int v3, p6, p2

    aget-wide v3, p1, v3

    iget-object v5, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v6, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v6, v6, p6

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    aput-wide v3, p8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p6, 0x1

    move v5, v2

    :goto_1
    move/from16 v0, p7

    if-ge v5, v0, :cond_2

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v5

    add-int v2, v2, p5

    add-int v3, v5, p2

    aget-wide v6, p1, v3

    move v3, v2

    move/from16 v2, p5

    :goto_2
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v4, :cond_1

    aget-wide v8, p8, v2

    iget-object v10, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, p8, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_2
    move/from16 v2, p5

    :goto_3
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_4

    aget-wide v3, p8, v2

    mul-double/2addr v3, p3

    aput-wide v3, p8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p6, p6, 0x1

    :cond_4
    move/from16 v0, p6

    move/from16 v1, p7

    if-ge v0, v1, :cond_5

    add-int v2, p6, p2

    aget-wide v5, p1, v2

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v2, v2, p6

    add-int v2, v2, p5

    move v3, v2

    move/from16 v2, p5

    :goto_4
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v4, :cond_3

    iget-object v7, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, v7, v3

    aget-wide v10, p8, v2

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    :cond_5
    return-void
.end method
