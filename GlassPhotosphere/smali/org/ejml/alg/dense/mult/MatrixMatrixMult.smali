.class public Lorg/ejml/alg/dense/mult/MatrixMatrixMult;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v4, v6, :cond_6

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v5, v6

    const-wide/16 v6, 0x0

    move v9, v2

    move-wide v14, v6

    move-wide v7, v14

    :goto_2
    if-ge v5, v11, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v12

    add-double/2addr v5, v7

    move-object/from16 v0, p2

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v9

    move v9, v7

    move-wide v7, v5

    move v5, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    mul-double v7, v7, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v4, v6, :cond_6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v5, v6

    const-wide/16 v6, 0x0

    move v9, v2

    move-wide v14, v6

    move-wide v7, v14

    :goto_2
    if-ge v5, v11, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v12

    add-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v9

    move v9, v7

    move-wide v7, v5

    move v5, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAddTransAB_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 10

    if-eq p2, p4, :cond_0

    if-ne p3, p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p4, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p4, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p5, :cond_5

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array p5, v0, [D

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    iget v3, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_6

    invoke-virtual {p2, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v3, p3, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v3, :cond_8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    iget v6, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v6, :cond_7

    aget-wide v6, p5, v3

    invoke-virtual {p3, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    mul-double/2addr v4, p0

    invoke-virtual {p4, v1, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multAddTransAB_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 10

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array p3, v0, [D

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v3, :cond_8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    iget v6, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v6, :cond_7

    aget-wide v6, p3, v3

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v1, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multAddTransA_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_8

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v6, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v3

    mul-double v8, p0, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v3

    move v3, v6

    :goto_1
    if-ge v4, v10, :cond_5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v3, v5

    move v4, v7

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v7

    mul-double v9, p0, v7

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v4, v5

    move v5, v6

    :goto_3
    if-ge v4, v11, :cond_6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    mul-double/2addr v12, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v12, v13}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v5, v7

    move v4, v8

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multAddTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_8

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v5, v0, v2

    invoke-virtual {p0, v0}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v9, v1, v2

    move v2, v5

    move v3, v1

    :goto_1
    if-ge v3, v9, :cond_5

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v10

    mul-double/2addr v10, v7

    invoke-virtual {p2, v2, v10, v11}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v2, v4

    move v3, v6

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_2
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v4, :cond_7

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    iget v4, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v3, v4

    move v4, v5

    :goto_3
    if-ge v3, v10, :cond_6

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v8

    invoke-virtual {p2, v4, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v4, v6

    move v3, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multAddTransA_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v6

    add-int v10, v4, v5

    const-wide/16 v5, 0x0

    move v8, v4

    move v9, v2

    move-wide v15, v5

    move-wide v6, v15

    :goto_2
    if-ge v8, v10, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double v5, v6, v11

    move-object/from16 v0, p2

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v9, v7

    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v8

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v3, 0x1

    mul-double v6, v6, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAddTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v6

    add-int v10, v4, v5

    const-wide/16 v5, 0x0

    move v8, v4

    move v9, v2

    move-wide v15, v5

    move-wide v6, v15

    :goto_2
    if-ge v8, v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double v5, v6, v11

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v9, v7

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v8

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v12, v3, v5

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v7, :cond_6

    const-wide/16 v7, 0x0

    move-wide v15, v7

    move-wide v8, v15

    move v7, v3

    :goto_2
    if-ge v7, v12, :cond_5

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v13

    add-double/2addr v6, v8

    move-wide v8, v6

    move v7, v10

    move v6, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v4, 0x1

    mul-double v8, v8, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8, v9}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v7

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v12, v3, v5

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v7, :cond_6

    const-wide/16 v7, 0x0

    move-wide v15, v7

    move-wide v8, v15

    move v7, v3

    :goto_2
    if-ge v7, v12, :cond_5

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v13

    add-double/2addr v6, v8

    move-wide v8, v6

    move v7, v10

    move v6, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8, v9}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v7

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAdd_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p5, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array v0, v2, [D

    move-object/from16 p5, v0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_9

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, p5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p3

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    add-int/lit8 v4, v5, 0x1

    aget-wide v11, p5, v5

    mul-double/2addr v9, v11

    add-double v5, v6, v9

    move v13, v4

    move v4, v8

    move-wide v14, v5

    move-wide v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move-object/from16 v0, p4

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-double v6, v6, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multAdd_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p3, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array v0, v2, [D

    move-object/from16 p3, v0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_9

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    add-int/lit8 v4, v5, 0x1

    aget-wide v11, p3, v5

    mul-double/2addr v9, v11

    add-double v5, v6, v9

    move v13, v4

    move v4, v8

    move-wide v14, v5

    move-wide v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multAdd_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v9, v2, v4

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v4, :cond_8

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v6, v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v5

    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double v11, p0, v6

    move v6, v3

    :goto_1
    if-ge v4, v10, :cond_6

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v13, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v13, v14}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v6, v7

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v6

    move v5, v8

    :cond_6
    if-eq v4, v9, :cond_7

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v6

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double v11, p0, v5

    move v6, v4

    move v4, v3

    :goto_2
    if-ge v6, v10, :cond_5

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v13, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v4, v5

    move v6, v7

    goto :goto_2

    :cond_7
    move-object/from16 v0, p4

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multAdd_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v7, v0, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v2, :cond_8

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v4, v0, v2

    const/4 v2, 0x0

    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v8, v2, v3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    move v4, v1

    :goto_1
    if-ge v2, v8, :cond_6

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-virtual {p2, v4, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v4, v5

    move v2, v6

    goto :goto_1

    :cond_5
    move v2, v4

    move v3, v6

    :cond_6
    if-eq v2, v7, :cond_7

    iget v4, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v8, v2, v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    move v4, v2

    move v2, v1

    :goto_2
    if-ge v4, v8, :cond_5

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-virtual {p2, v2, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v2, v3

    move v4, v5

    goto :goto_2

    :cond_7
    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multAdd_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v5, v6, :cond_6

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    add-int v11, v4, v8

    move-wide v9, v6

    move v7, v4

    move v6, v5

    :goto_2
    if-ge v7, v11, :cond_5

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    mul-double v7, p0, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multAdd_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v5, v6, :cond_6

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    add-int v11, v4, v8

    move-wide v9, v6

    move v7, v4

    move v6, v5

    :goto_2
    if-ge v7, v11, :cond_5

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9, v10}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v4, v6, :cond_6

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v5, v6

    const-wide/16 v6, 0x0

    move v9, v2

    move-wide v14, v6

    move-wide v7, v14

    :goto_2
    if-ge v5, v11, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v12

    add-double/2addr v5, v7

    move-object/from16 v0, p2

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v9

    move v9, v7

    move-wide v7, v5

    move v5, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    mul-double v7, v7, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v4, v6, :cond_6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v5, v6

    const-wide/16 v6, 0x0

    move v9, v2

    move-wide v14, v6

    move-wide v7, v14

    :goto_2
    if-ge v5, v11, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double/2addr v5, v12

    add-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v9

    move v9, v7

    move-wide v7, v5

    move v5, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransAB_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 10

    if-eq p2, p4, :cond_0

    if-ne p3, p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p4, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p4, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p5, :cond_5

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array p5, v0, [D

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    iget v3, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_6

    invoke-virtual {p2, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v3, p3, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v3, :cond_8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    iget v6, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v6, :cond_7

    aget-wide v6, p5, v3

    invoke-virtual {p3, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    mul-double/2addr v4, p0

    invoke-virtual {p4, v1, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multTransAB_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 10

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array p3, v0, [D

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v3

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v3, :cond_8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    iget v6, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v3, v6, :cond_7

    aget-wide v6, p3, v3

    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v1, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static multTransA_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_8

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v6, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v3

    mul-double v8, p0, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v3

    move v3, v6

    :goto_1
    if-ge v4, v10, :cond_5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    move v3, v5

    move v4, v7

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v7

    mul-double v9, p0, v7

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v11, v4, v5

    move v5, v6

    :goto_3
    if-ge v4, v11, :cond_6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    mul-double/2addr v12, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v12, v13}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v5, v7

    move v4, v8

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v2, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_8

    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v5, v0, v2

    invoke-virtual {p0, v0}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v7

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v9, v1, v2

    move v2, v5

    move v3, v1

    :goto_1
    if-ge v3, v9, :cond_5

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v10

    mul-double/2addr v10, v7

    invoke-virtual {p2, v2, v10, v11}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    move v2, v4

    move v3, v6

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_2
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v4, :cond_7

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v8

    iget v4, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v3, v4

    move v4, v5

    :goto_3
    if-ge v3, v10, :cond_6

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v8

    invoke-virtual {p2, v4, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v4, v6

    move v3, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static multTransA_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v6

    add-int v10, v4, v5

    const-wide/16 v5, 0x0

    move v8, v4

    move v9, v2

    move-wide v15, v5

    move-wide v6, v15

    :goto_2
    if-ge v8, v10, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double v5, v6, v11

    move-object/from16 v0, p2

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v9, v7

    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v8

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v3, 0x1

    mul-double v6, v6, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_7

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v6

    add-int v10, v4, v5

    const-wide/16 v5, 0x0

    move v8, v4

    move v9, v2

    move-wide v15, v5

    move-wide v6, v15

    :goto_2
    if-ge v8, v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double v5, v6, v11

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v9, v7

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v7, v8

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v12, v3, v5

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v7, :cond_6

    const-wide/16 v7, 0x0

    move-wide v15, v7

    move-wide v8, v15

    move v7, v3

    :goto_2
    if-ge v7, v12, :cond_5

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v13

    add-double/2addr v6, v8

    move-wide v8, v6

    move v7, v10

    move v6, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v4, 0x1

    mul-double v8, v8, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8, v9}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v7

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v12, v3, v5

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v7, :cond_6

    const-wide/16 v7, 0x0

    move-wide v15, v7

    move-wide v8, v15

    move v7, v3

    :goto_2
    if-ge v7, v12, :cond_5

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v13

    add-double/2addr v6, v8

    move-wide v8, v6

    move v7, v10

    move v6, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8, v9}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v7

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static mult_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p5, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array v0, v2, [D

    move-object/from16 p5, v0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_9

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, p5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p3

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    add-int/lit8 v4, v5, 0x1

    aget-wide v11, p5, v5

    mul-double/2addr v9, v11

    add-double v5, v6, v9

    move v13, v4

    move v4, v8

    move-wide v14, v5

    move-wide v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move-object/from16 v0, p4

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-double v6, v6, p0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static mult_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez p3, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    new-array v0, v2, [D

    move-object/from16 p3, v0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v3, :cond_9

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v3, v5, :cond_8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v5, v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    add-int/lit8 v4, v5, 0x1

    aget-wide v11, p3, v5

    mul-double/2addr v9, v11

    add-double v5, v6, v9

    move v13, v4

    move v4, v8

    move-wide v14, v5

    move-wide v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static mult_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v9, v2, v4

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v4, :cond_8

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v6, v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v5

    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    mul-double v11, p0, v6

    move v6, v3

    :goto_1
    if-ge v4, v10, :cond_6

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v13, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v13, v14}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    move v6, v7

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v6

    move v5, v8

    :cond_6
    if-eq v4, v9, :cond_7

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v4, v6

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    mul-double v11, p0, v5

    move v6, v4

    move v4, v3

    :goto_2
    if-ge v6, v10, :cond_5

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v13

    mul-double/2addr v13, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v13, v14}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v4, v5

    move v6, v7

    goto :goto_2

    :cond_7
    move-object/from16 v0, p4

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static mult_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The results matrix does not have the desired dimensions"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v7, v0, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v2, :cond_8

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v4, v0, v2

    const/4 v2, 0x0

    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v8, v2, v3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    move v4, v1

    :goto_1
    if-ge v2, v8, :cond_6

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-virtual {p2, v4, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    move v4, v5

    move v2, v6

    goto :goto_1

    :cond_5
    move v2, v4

    move v3, v6

    :cond_6
    if-eq v2, v7, :cond_7

    iget v4, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v8, v2, v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v9

    move v4, v2

    move v2, v1

    :goto_2
    if-ge v4, v8, :cond_5

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-virtual {p2, v2, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->plus(ID)D

    move v2, v3

    move v4, v5

    goto :goto_2

    :cond_7
    iget v2, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static mult_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v5, v6, :cond_6

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    add-int v11, v4, v8

    move-wide v9, v6

    move v7, v4

    move v6, v5

    :goto_2
    if-ge v7, v11, :cond_5

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    move-object/from16 v0, p3

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    mul-double v7, p0, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v7, v8}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static mult_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither \'a\' or \'b\' can be the same matrix as \'c\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v3, "The results matrix does not have the desired dimensions"

    invoke-direct {v2, v3}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v5, v6, :cond_6

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    add-int v11, v4, v8

    move-wide v9, v6

    move v7, v4

    move v6, v5

    :goto_2
    if-ge v7, v11, :cond_5

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9, v10}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
