.class public Lorg/ejml/alg/dense/mult/MatrixVectorMult;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v2, "C is not a column vector"

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v1, v2, :cond_1

    new-instance v1, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v2, "C is not the expected length"

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v1, v2, :cond_4

    new-instance v1, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v2, "A and B are not compatible"

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v1, v2, :cond_4

    new-instance v1, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v2, "A and B are not compatible"

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v2, "B is not a vector"

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v8

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v1, v4, :cond_6

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v3

    mul-double v4, v3, v8

    const/4 v3, 0x1

    move-wide v14, v4

    move v4, v6

    move-wide v5, v14

    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v7, :cond_5

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v4, v5, v10

    add-int/lit8 v3, v3, 0x1

    move-wide v14, v4

    move-wide v5, v14

    move v4, v7

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5, v6}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 13

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not a column vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not the expected length"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v3, :cond_6

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double v3, v2, v6

    const/4 v2, 0x1

    move-wide v11, v3

    move v3, v5

    move-wide v4, v11

    :goto_1
    iget v6, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v2}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    move-wide v11, v3

    move-wide v4, v11

    move v3, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1, v4, v5}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v3, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not a column vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not the expected length"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v3, :cond_6

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {p2, v3, v7, v8}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static multAddTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v3, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not a column vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not the expected length"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v3, :cond_6

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move v4, v0

    move v3, v1

    :goto_1
    iget v7, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v3}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget v7, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static multTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not a column vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v3, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not the expected length"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v3, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v3, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    move v0, v1

    :goto_0
    iget v5, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v5, :cond_5

    invoke-virtual {p0, v0}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-virtual {p2, v0, v5, v6}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_1
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    move v3, v1

    :goto_2
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v4, :cond_6

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {p2, v3, v7, v8}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static multTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v3, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not a column vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "C is not the expected length"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_4

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "A and B are not compatible"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "B is not a vector"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v3, :cond_6

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move v4, v0

    move v3, v1

    :goto_1
    iget v7, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    invoke-virtual {p1, v3}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget v7, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_6
    return-void
.end method
