.class public Lorg/ejml/alg/dense/mult/VectorVectorMult;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterProd(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    move-object/from16 v0, p4

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p0, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p2, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v9

    mul-double/2addr v9, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9, v10}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v5, :cond_3

    invoke-virtual {p2, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    mul-double v9, p0, v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v9, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9, v10}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static householder(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v4

    const-wide/16 v1, 0x0

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p2, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p3, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    invoke-virtual {p3, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p2, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, p0

    mul-double/2addr v7, v2

    add-double/2addr v5, v7

    invoke-virtual {p4, v0, v5, v6}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static innerProd(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 8

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static innerProdA(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 12

    iget v6, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v7, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v0

    if-eq v0, v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v0

    if-eq v0, v7, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in y"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    if-ge v3, v7, :cond_3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v8

    invoke-virtual {p1, v0, v3}, Lorg/ejml/data/D1Matrix64F;->unsafe_get(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v8

    mul-double v0, v1, v8

    add-double v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-wide v4, v1

    goto :goto_0

    :cond_3
    return-wide v4
.end method

.method public static innerProdTranA(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 11

    iget v6, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v6, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v0

    if-eq v0, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v0

    if-eq v0, v6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of elements in y"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    if-ge v3, v6, :cond_4

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v3, v0}, Lorg/ejml/data/D1Matrix64F;->unsafe_get(II)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v3}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    mul-double v0, v1, v7

    add-double v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-wide v4, v1

    goto :goto_0

    :cond_4
    return-wide v4
.end method

.method public static mult(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    return-void
.end method

.method public static outerProd(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 11

    const/4 v1, 0x0

    iget v5, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v6, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move v4, v1

    move v0, v1

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v7

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {p2, v2, v9, v10}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(DLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 15

    invoke-virtual/range {p3 .. p3}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v6, v1, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v9, v8, v2

    mul-double v11, p0, v6

    move-object/from16 v0, p4

    iget-object v13, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v13, v13, v1

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v8, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rank1Update(DLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 14

    invoke-virtual/range {p3 .. p3}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v5, v1, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    move-object/from16 v0, p5

    iget-object v7, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v8, v8, v2

    mul-double v10, p0, v5

    move-object/from16 v0, p4

    iget-object v12, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v12, v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method
