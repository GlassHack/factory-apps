.class public Lorg/ejml/alg/block/BlockInnerRankUpdate;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static multTransABlockMinus([D[DIIIIII)V
    .locals 16

    mul-int v0, p5, p7

    add-int v7, p3, v0

    move/from16 v5, p2

    move/from16 v1, p3

    :goto_0
    if-eq v1, v7, :cond_2

    add-int v8, v5, p6

    add-int v9, v1, p7

    move/from16 v0, p4

    move v2, v5

    :goto_1
    if-eq v2, v8, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-wide v10, p0, v2

    move v3, v0

    move v0, v1

    :goto_2
    if-eq v0, v9, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-wide v12, p1, v3

    add-int/lit8 v2, v0, 0x1

    aget-wide v14, p0, v0

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    aput-wide v12, p1, v3

    move v0, v2

    move v3, v4

    goto :goto_2

    :cond_0
    move v0, v3

    move v2, v6

    goto :goto_1

    :cond_1
    add-int v1, v1, p7

    add-int v5, v5, p6

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransABlockMinus_U([D[DIIIIII)V
    .locals 14

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    move/from16 v0, p6

    if-ge v6, v0, :cond_2

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    move/from16 v0, p5

    if-ge v5, v0, :cond_1

    mul-int v1, v5, p6

    add-int/2addr v1, v6

    add-int v1, v1, p2

    aget-wide v7, p0, v1

    mul-int v1, v5, p7

    add-int v1, v1, p3

    add-int v2, v1, v6

    mul-int v1, v6, p7

    add-int v1, v1, p4

    add-int/2addr v1, v6

    sub-int v3, v1, v6

    add-int v9, v3, p7

    move v3, v2

    :goto_2
    if-eq v1, v9, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-wide v10, p1, v1

    add-int/lit8 v4, v3, 0x1

    aget-wide v12, p0, v3

    mul-double/2addr v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, p1, v1

    move v1, v2

    move v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus([D[DIIIIII)V
    .locals 16

    const/4 v1, 0x0

    move v9, v1

    move/from16 v6, p2

    move/from16 v1, p4

    :goto_0
    move/from16 v0, p6

    if-ge v9, v0, :cond_2

    add-int v10, v6, p5

    add-int v11, v1, p7

    move/from16 v4, p3

    move v8, v1

    :goto_1
    if-eq v8, v11, :cond_1

    const-wide/16 v1, 0x0

    move v3, v4

    move v5, v6

    :goto_2
    if-eq v5, v10, :cond_0

    add-int/lit8 v7, v5, 0x1

    aget-wide v12, p0, v5

    add-int/lit8 v5, v3, 0x1

    aget-wide v14, p0, v3

    mul-double/2addr v12, v14

    add-double/2addr v1, v12

    move v3, v5

    move v5, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v8, 0x1

    aget-wide v12, p1, v8

    sub-double v1, v12, v1

    aput-wide v1, p1, v8

    add-int v4, v4, p5

    move v8, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v9, 0x1

    add-int v6, v6, p5

    move v9, v1

    move v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static multTransBBlockMinus_L([D[DIIIIII)V
    .locals 18

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    move/from16 v0, p6

    if-ge v9, v0, :cond_2

    mul-int v1, v9, p5

    add-int v4, v1, p2

    add-int v10, v4, p5

    mul-int v1, v9, p7

    add-int v11, v1, p4

    const/4 v1, 0x0

    move v8, v1

    move/from16 v2, p3

    :goto_1
    if-gt v8, v9, :cond_1

    const-wide/16 v5, 0x0

    move v1, v2

    move v3, v4

    move-wide/from16 v16, v5

    move-wide/from16 v6, v16

    :goto_2
    if-eq v3, v10, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-wide v12, p0, v3

    add-int/lit8 v3, v1, 0x1

    aget-wide v14, p0, v1

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    move v1, v3

    move v3, v5

    goto :goto_2

    :cond_0
    add-int v1, v11, v8

    aget-wide v12, p1, v1

    sub-double v5, v12, v6

    aput-wide v5, p1, v1

    add-int/lit8 v1, v8, 0x1

    add-int v2, v2, p5

    move v8, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rankNUpdate(IDLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 16

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p4

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v9, v1, v2

    move/from16 v0, p0

    if-le v9, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Height of B cannot be greater than the block length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p4

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v2, v3

    if-eq v2, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v12, v1

    :goto_0
    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v12, v1, :cond_4

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, v12, v9

    add-int v6, v1, v2

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v1, v12

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v12, v1

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v14, v1, v2

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v14

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v13, v1

    :goto_1
    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v13, v1, :cond_3

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v1, v13

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v14

    move-object/from16 v0, p4

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v2, v13, v2

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v15

    add-int v8, v1, v2

    move-object/from16 v0, p4

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    mul-int v2, v13, v9

    add-int v7, v1, v2

    move-object/from16 v0, p4

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v3, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p4

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v4, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v5, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v11}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransA(D[D[D[DIIIIII)V

    add-int v1, v13, p0

    move v13, v1

    goto :goto_1

    :cond_3
    add-int v1, v12, p0

    move v12, v1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static symmRankNMinus_L(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v5, v0, v1

    if-le v5, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v8, v0

    :goto_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v8, v0, :cond_5

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v8

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v1, v6

    add-int v2, v0, v1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v8, v0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v10, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_1
    if-gt v9, v8, :cond_4

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v10

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v1, v9, v1

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v11

    add-int v4, v0, v1

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v1, v7

    add-int v3, v0, v1

    if-ne v8, v9, :cond_3

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->multTransBBlockMinus_L([D[DIIIIII)V

    :goto_2
    add-int v0, v9, p0

    move v9, v0

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->multTransBBlockMinus([D[DIIIIII)V

    goto :goto_2

    :cond_4
    add-int v0, v8, p0

    move v8, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static symmRankNMinus_U(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v5, v0, v1

    if-le v5, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of B cannot be greater than the block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of columns based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A does not have the expected number of rows based on B\'s width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v8, v0

    :goto_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v8, v0, :cond_5

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v8, v5

    add-int v2, v0, v1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v8, v0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v10, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v9, v8

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v9, v0, :cond_4

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v10

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v9, v1

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v11

    add-int v4, v0, v1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v9, v5

    add-int v3, v0, v1

    if-ne v8, v9, :cond_3

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->multTransABlockMinus_U([D[DIIIIII)V

    :goto_2
    add-int v0, v9, p0

    move v9, v0

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->multTransABlockMinus([D[DIIIIII)V

    goto :goto_2

    :cond_4
    add-int v0, v8, p0

    move v8, v0

    goto :goto_0

    :cond_5
    return-void
.end method
