.class public Lorg/ejml/alg/block/BlockMatrixOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAligned(ILorg/ejml/data/D1Submatrix64F;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    rem-int/2addr v1, p0

    if-nez v1, :cond_0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_2

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v2, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v1, v2, :cond_0

    :cond_2
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_3

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v2, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkIdenticalShape(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 2

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NUmber of columns is different"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public static convert(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/BlockMatrix64F;
    .locals 3

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    invoke-static {p0, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/DenseMatrix64F;I)Lorg/ejml/data/BlockMatrix64F;
    .locals 3

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v0, v1, v2, p1}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    invoke-static {p0, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    return-object v0
.end method

.method public static convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_2
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v2, :cond_5

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v2, v3, :cond_4

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v4, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    mul-int v4, v6, v2

    add-int/2addr v4, v3

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_3

    iget-object v8, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v9, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v8, v5, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    iget v8, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v2, :cond_4

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v1

    :goto_1
    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v2, v3, :cond_3

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v4, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    mul-int v4, v6, v2

    add-int/2addr v4, v3

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_2

    iget-object v8, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v9, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-static {v8, v4, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    iget v8, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static convertBlockToRow(III[D[D)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    array-length v2, p4

    if-ge v2, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp must be at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " long and not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v5, v1

    :goto_0
    if-ge v5, p0, :cond_3

    sub-int v0, p0, v5

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v0, v5, p1

    mul-int v2, v6, p1

    invoke-static {p3, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v1

    :goto_1
    if-ge v4, p1, :cond_2

    sub-int v0, p1, v4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v2, v6, v4

    mul-int v0, v5, p1

    add-int/2addr v0, v4

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_1

    invoke-static {p4, v3, p3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int v0, v4, p2

    move v4, v0

    goto :goto_1

    :cond_2
    add-int v0, v5, p2

    move v5, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static convertRowToBlock(III[D[D)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p1

    array-length v2, p4

    if-ge v2, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp must be at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " long "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v5, v1

    :goto_0
    if-ge v5, p0, :cond_3

    sub-int v0, p0, v5

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v0, v5, p1

    mul-int v2, v6, p1

    invoke-static {p3, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_2

    sub-int v0, p1, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v0, v5, p1

    mul-int v2, v6, v3

    add-int/2addr v0, v2

    move v2, v3

    move v4, v0

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_1

    invoke-static {p4, v2, p3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v7

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v3, p2

    goto :goto_1

    :cond_2
    add-int v0, v5, p2

    move v5, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static convertSimple(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static convertTranSrc(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 14

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible matrix shapes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v1, :cond_5

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v1, 0x0

    :goto_1
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v1, v2, :cond_4

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v2, v0

    mul-int v3, v7, v1

    add-int v9, v2, v3

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v1

    add-int v10, v2, v0

    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v8, :cond_3

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v6

    add-int v4, v10, v2

    add-int v3, v9, v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_2

    iget-object v11, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v12, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v5, v4, 0x1

    aget-wide v12, v12, v4

    aput-wide v12, v11, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v8

    move v4, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_3
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static copyTriangle(ZLorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 18

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Block size is different"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The src has fewer rows than dst"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The src has fewer columns than dst"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz p0, :cond_7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_c

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v4

    mul-int v2, v8, v3

    add-int v12, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v4

    mul-int v2, v9, v3

    add-int v13, v1, v2

    if-ne v3, v4, :cond_4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_5

    move v1, v2

    :goto_3
    if-ge v1, v11, :cond_3

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v15, v11, v2

    add-int/2addr v15, v13

    add-int/2addr v15, v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    move-object/from16 v16, v0

    mul-int v17, v10, v2

    add-int v17, v17, v12

    add-int v17, v17, v1

    aget-wide v16, v16, v17

    aput-wide v16, v14, v15

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v14, v10, v1

    add-int/2addr v14, v12

    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v16, v11, v1

    add-int v16, v16, v13

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int v1, v3, v5

    move v3, v1

    goto :goto_1

    :cond_6
    add-int/2addr v4, v5

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    if-ge v4, v6, :cond_c

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    if-gt v3, v4, :cond_b

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v4

    mul-int v2, v7, v3

    add-int v11, v1, v2

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v4

    mul-int v2, v8, v3

    add-int v12, v1, v2

    if-ne v3, v4, :cond_9

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v8, :cond_a

    add-int/lit8 v1, v2, 0x1

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v13, :cond_8

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v15, v10, v2

    add-int/2addr v15, v12

    add-int/2addr v15, v1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    move-object/from16 v16, v0

    mul-int v17, v9, v2

    add-int v17, v17, v11

    add-int v17, v17, v1

    aget-wide v16, v16, v17

    aput-wide v16, v14, v15

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v8, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v13, v9, v1

    add-int/2addr v13, v11

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v15, v10, v1

    add-int/2addr v15, v12

    invoke-static {v2, v13, v14, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    add-int v1, v3, v5

    move v3, v1

    goto :goto_6

    :cond_b
    add-int v1, v4, v5

    move v4, v1

    goto/16 :goto_5

    :cond_c
    return-void
.end method

.method public static createRandom(IIDDLjava/util/Random;)Lorg/ejml/data/BlockMatrix64F;
    .locals 6

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static createRandom(IIDDLjava/util/Random;I)Lorg/ejml/data/BlockMatrix64F;
    .locals 6

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, p0, p1, p7}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static extractAligned(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Block size is different"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The src has fewer rows than dst"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The src has fewer columns than dst"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v3

    mul-int v11, v7, v2

    add-int/2addr v11, v1

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v1, v3

    mul-int v12, v8, v2

    add-int/2addr v12, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v14, v9, v1

    add-int/2addr v14, v11

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v16, v10, v1

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int v1, v2, v4

    move v2, v1

    goto :goto_1

    :cond_4
    add-int v1, v3, v4

    move v3, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static identity(III)Lorg/ejml/data/BlockMatrix64F;
    .locals 12

    const/4 v1, 0x0

    new-instance v3, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v3, p0, p1, p2}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget v0, v3, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v5, v3, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v5, v2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v6, v2

    mul-int v7, v0, v2

    add-int/2addr v6, v7

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    iget-object v8, v3, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v9, v0, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int v0, v2, p2

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static isEquals(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixFeatures;->isEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEquals(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;D)Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/ops/MatrixFeatures;->isEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;D)Z

    move-result v0

    goto :goto_0
.end method

.method public static mult(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 11

    const/4 v2, 0x0

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v10, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v5, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget v6, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v8, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v4, p1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v4, Lorg/ejml/data/D1Submatrix64F;

    iget v7, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v9, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v5, p2

    move v6, v2

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    invoke-static {v10, v0, v3, v4}, Lorg/ejml/alg/block/BlockMultiplication;->mult(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 11

    const/4 v2, 0x0

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v10, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v5, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget v6, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v8, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v4, p1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v4, Lorg/ejml/data/D1Submatrix64F;

    iget v7, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v9, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v5, p2

    move v6, v2

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    invoke-static {v10, v0, v3, v4}, Lorg/ejml/alg/block/BlockMultiplication;->multTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 11

    const/4 v2, 0x0

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns in A are incompatible with columns in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in A are incompatible with rows in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in B are incompatible with columns in C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block lengths are not all the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v10, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v5, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget v6, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v8, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v4, p1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v4, Lorg/ejml/data/D1Submatrix64F;

    iget v7, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v9, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move-object v5, p2

    move v6, v2

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    invoke-static {v10, v0, v3, v4}, Lorg/ejml/alg/block/BlockMultiplication;->multTransB(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    return-void
.end method

.method public static set(Lorg/ejml/data/BlockMatrix64F;D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 12

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    iget v4, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v5, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v6, v2

    mul-int v7, v0, v2

    add-int/2addr v6, v7

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    iget-object v8, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v9, v0, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int v0, v2, v4

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static transpose(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;
    .locals 9

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible block size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lorg/ejml/data/BlockMatrix64F;

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-direct {v1, v0, v2, v3}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    :goto_0
    move v6, v7

    :goto_1
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v6, v0, :cond_4

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v2, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v7

    :goto_2
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v8, v0, :cond_3

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v2, v8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v0, v6

    mul-int v2, v5, v8

    add-int/2addr v2, v0

    iget v0, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v0, v8

    mul-int v3, v4, v6

    add-int/2addr v3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/BlockMatrixOps;->transposeBlock(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;IIII)V

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method private static transposeBlock(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;IIII)V
    .locals 7

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p5, :cond_1

    add-int v1, p3, v2

    mul-int v0, p4, v2

    add-int/2addr v0, p2

    add-int v3, v0, p4

    :goto_1
    if-ge v0, v3, :cond_0

    iget-object v4, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v5, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    aget-wide v5, v5, v0

    aput-wide v5, v4, v1

    add-int/2addr v1, p5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zeroTriangle(ZLorg/ejml/data/BlockMatrix64F;)V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    iget v5, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eqz p0, :cond_5

    move v0, v1

    :goto_0
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v2, :cond_b

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v2, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v0

    :goto_1
    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v2, v3, :cond_4

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v3, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v3, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    mul-int v4, v6, v2

    add-int v8, v3, v4

    if-ne v2, v0, :cond_1

    move v4, v1

    :goto_2
    if-ge v4, v6, :cond_3

    add-int/lit8 v3, v4, 0x1

    :goto_3
    if-ge v3, v7, :cond_0

    iget-object v9, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v10, v7, v4

    add-int/2addr v10, v8

    add-int/2addr v10, v3

    aput-wide v12, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_4
    if-ge v4, v6, :cond_3

    move v3, v1

    :goto_5
    if-ge v3, v7, :cond_2

    iget-object v9, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v10, v7, v4

    add-int/2addr v10, v8

    add-int/2addr v10, v3

    aput-wide v12, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    :cond_3
    add-int/2addr v2, v5

    goto :goto_1

    :cond_4
    add-int/2addr v0, v5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_6
    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v2, :cond_b

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v2, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v1

    :goto_7
    if-gt v4, v0, :cond_a

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v2, v0

    mul-int v3, v6, v4

    add-int v8, v2, v3

    if-ne v4, v0, :cond_7

    move v3, v1

    :goto_8
    if-ge v3, v6, :cond_9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v2, v1

    :goto_9
    if-ge v2, v9, :cond_6

    iget-object v10, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v11, v7, v3

    add-int/2addr v11, v8

    add-int/2addr v11, v2

    aput-wide v12, v10, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    :goto_a
    if-ge v3, v6, :cond_9

    move v2, v1

    :goto_b
    if-ge v2, v7, :cond_8

    iget-object v9, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    mul-int v10, v7, v3

    add-int/2addr v10, v8

    add-int/2addr v10, v2

    aput-wide v12, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :cond_9
    add-int v2, v4, v5

    move v4, v2

    goto :goto_7

    :cond_a
    add-int/2addr v0, v5

    goto :goto_6

    :cond_b
    return-void
.end method
