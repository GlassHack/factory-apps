.class public Lorg/ejml/alg/block/BlockTriangularSolver;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D)V
    .locals 22

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Upper triangular matrices not supported yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p4

    array-length v2, v0

    mul-int v3, p0, p0

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Temp must be at least blockLength*blockLength long."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-eq v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "T and T_inv must be at the same elements in the matrix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v20, v2, v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v3, v3, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v5, v5, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v5, v5, v20

    add-int v21, v4, v5

    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v5, v5, v19

    sub-int/2addr v4, v5

    move/from16 v0, p0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v5, v5, v19

    mul-int/2addr v4, v5

    add-int v4, v4, v21

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v5, v5, v19

    mul-int/2addr v5, v8

    add-int v16, v4, v5

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v5, v5, v18

    sub-int/2addr v4, v5

    move/from16 v0, p0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p4

    array-length v5, v0

    if-ge v4, v5, :cond_4

    const-wide/16 v5, 0x0

    aput-wide v5, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move/from16 v11, v18

    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v5, v11

    sub-int/2addr v4, v5

    move/from16 v0, p0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v5, v5, v19

    mul-int/2addr v4, v5

    add-int v4, v4, v21

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v5, v11

    mul-int/2addr v5, v8

    add-int/2addr v5, v4

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v6, v11

    mul-int/2addr v4, v6

    add-int v4, v4, v21

    move-object/from16 v0, p2

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v6, v6, v18

    mul-int/2addr v6, v9

    add-int/2addr v6, v4

    const/4 v7, 0x0

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v10}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultMinus([D[D[DIIIIII)V

    add-int v4, v11, p0

    move v11, v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v5, v5, v19

    mul-int/2addr v4, v5

    add-int v4, v4, v21

    move-object/from16 v0, p2

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v5, v5, v18

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    const/16 v17, 0x0

    move-object v11, v2

    move-object/from16 v12, p4

    move v13, v8

    move v14, v10

    move v15, v8

    invoke-static/range {v11 .. v17}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveL([D[DIIIII)V

    const/4 v5, 0x0

    mul-int v6, v10, v8

    move-object/from16 v0, p4

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v18, p0

    goto/16 :goto_1

    :cond_6
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v2, v3, v8, v0, v1}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->invertLower([D[DIII)V

    add-int v4, v19, p0

    move/from16 v19, v4

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static invert(IZLorg/ejml/data/D1Submatrix64F;[D)V
    .locals 22

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Upper triangular matrices not supported yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p3

    array-length v2, v0

    mul-int v3, p0, p0

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Temp must be at least blockLength*blockLength long."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v20, v2, v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v4, v4, v20

    add-int v21, v3, v4

    const/4 v3, 0x0

    move/from16 v19, v3

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v4, v4, v19

    sub-int/2addr v3, v4

    move/from16 v0, p0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v4, v4, v19

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v4, v19

    mul-int/2addr v4, v8

    add-int v16, v3, v4

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v4, v18

    sub-int/2addr v3, v4

    move/from16 v0, p0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v4, v0

    if-ge v3, v4, :cond_2

    const-wide/16 v4, 0x0

    aput-wide v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move/from16 v11, v18

    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v11

    sub-int/2addr v3, v4

    move/from16 v0, p0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v4, v4, v19

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v11

    mul-int/2addr v4, v8

    add-int v5, v3, v4

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v11

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v4, v18

    mul-int/2addr v4, v9

    add-int v6, v3, v4

    const/4 v7, 0x0

    move-object v3, v2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultMinus([D[D[DIIIIII)V

    add-int v3, v11, p0

    move v11, v3

    goto :goto_3

    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v4, v4, v19

    mul-int/2addr v3, v4

    add-int v3, v3, v21

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v4, v18

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    const/16 v17, 0x0

    move-object v11, v2

    move-object/from16 v12, p3

    move v13, v8

    move v14, v10

    move v15, v8

    invoke-static/range {v11 .. v17}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveL([D[DIIIII)V

    const/4 v4, 0x0

    mul-int v5, v10, v8

    move-object/from16 v0, p3

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v18, p0

    goto/16 :goto_1

    :cond_4
    move/from16 v0, v16

    invoke-static {v2, v8, v0}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->invertLower([DII)V

    add-int v3, v19, p0

    move/from16 v19, v3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static solve(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3, p4}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveR(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p2, p3, p4}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveL(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    goto :goto_0
.end method

.method public static solveBlock(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ZZ)V
    .locals 9

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v8, v0, v1

    if-le v8, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T can be at most the size of a block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v1, v2

    add-int v5, v0, v1

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    if-eqz p5, :cond_4

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v3, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v7, v3

    :goto_0
    iget v3, p3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v7, v3, :cond_9

    iget v3, p3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    add-int v4, v7, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v7

    iget-object v4, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v4, v7

    iget v6, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    move v4, v2

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveLTransB([D[DIIIII)V

    add-int v3, v7, p0

    move v7, v3

    goto :goto_0

    :cond_4
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v3, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v2, v3

    if-eq v8, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T and B must have the same number of rows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz p1, :cond_7

    if-eqz p4, :cond_6

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v7, v2

    :goto_1
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v7, v2, :cond_9

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v3, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v8, v7

    add-int v6, v2, v3

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v3, v7, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v7

    move v2, v8

    move v4, v8

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveTransU([D[DIIIII)V

    add-int v2, v7, p0

    move v7, v2

    goto :goto_1

    :cond_6
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v7, v2

    :goto_2
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v7, v2, :cond_9

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v3, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v8, v7

    add-int v6, v2, v3

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v3, v7, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v7

    move v2, v8

    move v4, v8

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveU([D[DIIIII)V

    add-int v2, v7, p0

    move v7, v2

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v7, v2

    :goto_3
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v7, v2, :cond_9

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v3, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v8, v7

    add-int v6, v2, v3

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v3, v7, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v7

    move v2, v8

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveTransL([D[DIIIII)V

    add-int v2, v7, p0

    move v7, v2

    goto :goto_3

    :cond_8
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v7, v2

    :goto_4
    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v7, v2, :cond_9

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v3, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v8, v7

    add-int v6, v2, v3

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v3, v7, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v7

    move v2, v8

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockInnerTriangularSolver;->solveL([D[DIIIII)V

    add-int v2, v7, p0

    move v7, v2

    goto :goto_4

    :cond_9
    return-void
.end method

.method public static solveL(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V
    .locals 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v9, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v9, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v2, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v3, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v10, v0, v4

    if-eqz p3, :cond_2

    rem-int v0, v10, p0

    sub-int v0, v10, v0

    if-ne v0, v10, :cond_0

    if-lt v10, p0, :cond_0

    sub-int/2addr v0, p0

    :cond_0
    neg-int v4, p0

    move v6, v4

    :goto_0
    move v8, v0

    :goto_1
    if-eqz p3, :cond_3

    if-gez v8, :cond_4

    :cond_1
    return-void

    :cond_2
    move v6, p0

    move v0, v1

    goto :goto_0

    :cond_3
    if-ge v8, v10, :cond_1

    :cond_4
    sub-int v0, v10, v8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v8

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v0

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v8

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v4, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v0

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v8

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v4

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move v0, p0

    move v4, p3

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveBlock(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ZZ)V

    if-eqz p3, :cond_6

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-lez v0, :cond_5

    move v0, v7

    :goto_2
    if-eqz v0, :cond_a

    if-eqz p3, :cond_8

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, p0

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, p0

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row1:I

    :goto_3
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    :goto_4
    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v0, v4, :cond_a

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v0, p0

    iget v5, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v4, v9, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v4, v9, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-eqz p3, :cond_9

    invoke-static {p0, v2, v3, v9}, Lorg/ejml/alg/block/BlockMultiplication;->multMinusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :goto_5
    add-int/2addr v0, p0

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v4, :cond_7

    move v0, v7

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, p0

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, p0

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row1:I

    goto :goto_3

    :cond_9
    invoke-static {p0, v2, v3, v9}, Lorg/ejml/alg/block/BlockMultiplication;->multMinus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    goto :goto_5

    :cond_a
    add-int v0, v8, v6

    move v8, v0

    goto/16 :goto_1
.end method

.method public static solveR(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V
    .locals 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v2, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v8, v0, v2

    invoke-virtual {p1}, Lorg/ejml/data/D1Submatrix64F;->getCols()I

    move-result v0

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/D1Submatrix64F;->getRows()I

    move-result v0

    if-eq v0, v8, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows in R must be equal to the number of rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v9, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v9, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v2, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-direct {v3, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    if-eqz p3, :cond_3

    move v6, p0

    move v0, v5

    :goto_0
    move v7, v0

    :goto_1
    if-eqz p3, :cond_5

    if-lt v7, v8, :cond_6

    :cond_2
    return-void

    :cond_3
    rem-int v0, v8, p0

    sub-int v0, v8, v0

    if-ne v0, v8, :cond_4

    if-lt v8, p0, :cond_4

    sub-int/2addr v0, p0

    :cond_4
    neg-int v4, p0

    move v6, v4

    goto :goto_0

    :cond_5
    if-ltz v7, :cond_2

    :cond_6
    sub-int v0, v8, v7

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v7

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v0

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v7

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v4, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v0

    iput v4, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v4, v7

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v4

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveBlock(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ZZ)V

    if-eqz p3, :cond_8

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v4, :cond_7

    move v0, v1

    :goto_2
    if-eqz v0, :cond_c

    if-eqz p3, :cond_a

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v0, p0

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, p0

    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row1:I

    :goto_3
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    :goto_4
    iget v4, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v0, v4, :cond_c

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v4, v0, p0

    iget v10, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v4, v9, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v4, v9, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-eqz p3, :cond_b

    invoke-static {p0, v2, v3, v9}, Lorg/ejml/alg/block/BlockMultiplication;->multMinusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :goto_5
    add-int/2addr v0, p0

    goto :goto_4

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v5

    goto :goto_2

    :cond_a
    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, p0

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, p0

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v9, Lorg/ejml/data/D1Submatrix64F;->row1:I

    goto :goto_3

    :cond_b
    invoke-static {p0, v2, v3, v9}, Lorg/ejml/alg/block/BlockMultiplication;->multMinus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    goto :goto_5

    :cond_c
    add-int v0, v7, v6

    move v7, v0

    goto/16 :goto_1
.end method
