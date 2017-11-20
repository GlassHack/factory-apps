.class public Lorg/ejml/alg/block/BlockMultiplication;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInput(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 6

    invoke-virtual {p1}, Lorg/ejml/data/D1Submatrix64F;->getRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/D1Submatrix64F;->getCols()I

    move-result v1

    invoke-virtual {p2}, Lorg/ejml/data/D1Submatrix64F;->getRows()I

    move-result v2

    invoke-virtual {p2}, Lorg/ejml/data/D1Submatrix64F;->getCols()I

    move-result v3

    invoke-virtual {p3}, Lorg/ejml/data/D1Submatrix64F;->getRows()I

    move-result v4

    invoke-virtual {p3}, Lorg/ejml/data/D1Submatrix64F;->getCols()I

    move-result v5

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch A and C rows"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq v3, v5, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch B and C columns"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch A columns and B rows"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->blockAligned(ILorg/ejml/data/D1Submatrix64F;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sub-Matrix A is not block aligned"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0, p2}, Lorg/ejml/alg/block/BlockMatrixOps;->blockAligned(ILorg/ejml/data/D1Submatrix64F;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sub-Matrix B is not block aligned"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0, p3}, Lorg/ejml/alg/block/BlockMatrixOps;->blockAligned(ILorg/ejml/data/D1Submatrix64F;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sub-Matrix C is not block aligned"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public static mult(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_3

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_2

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v11, v0, :cond_1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v11, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v7

    add-int v4, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-ne v11, v0, :cond_0

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultSet([D[D[DIIIIII)V

    :goto_3
    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlus([D[D[DIIIIII)V

    goto :goto_3

    :cond_1
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_2
    add-int v0, v9, p0

    move v9, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static multMinus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    invoke-static {p0, p1, p2, p3}, Lorg/ejml/alg/block/BlockMultiplication;->checkInput(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_2

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v11, v0, :cond_0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v11, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v7

    add-int v4, v0, v1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultMinus([D[D[DIIIIII)V

    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_1
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multMinusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v9, v0, :cond_2

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v11, v0, :cond_0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v11

    mul-int v1, v9, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v6

    add-int v4, v0, v1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultMinusTransA([D[D[DIIIIII)V

    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_1
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multPlus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_2

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v11, v0, :cond_0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v11, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v7

    add-int v4, v0, v1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlus([D[D[DIIIIII)V

    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_1
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v9, v0, :cond_2

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v11, v0, :cond_0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v11

    mul-int v1, v9, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v6

    add-int v4, v0, v1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransA([D[D[DIIIIII)V

    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_1
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static multTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v9, v0, :cond_3

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_2

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v11, v0, :cond_1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v11

    mul-int v1, v9, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v6

    add-int v4, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v11, v0, :cond_0

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultSetTransA([D[D[DIIIIII)V

    :goto_3
    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransA([D[D[DIIIIII)V

    goto :goto_3

    :cond_1
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_2
    add-int v0, v9, p0

    move v9, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static multTransB(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_3

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v10, v0, :cond_2

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v11, v0, :cond_1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v11

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v11, v6

    add-int v3, v0, v1

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v10

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v11, v1

    iget v2, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v8

    add-int v4, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-ne v11, v0, :cond_0

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultSetTransB([D[D[DIIIIII)V

    :goto_3
    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransB([D[D[DIIIIII)V

    goto :goto_3

    :cond_1
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_2
    add-int v0, v9, p0

    move v9, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method
