.class public Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;
.super Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;


# instance fields
.field private B:Lorg/ejml/data/DenseMatrix64F;

.field private blockWidth:I

.field private chol:Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;-><init>(Z)V

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    return-void
.end method

.method public static solveL_special([DLorg/ejml/data/DenseMatrix64F;IILorg/ejml/data/DenseMatrix64F;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p4

    iget-object v11, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p4

    iget v12, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p4

    iget v13, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v13, :cond_2

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    :goto_1
    if-ge v8, v12, :cond_1

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v8

    add-int v1, v1, p2

    add-int/2addr v1, v2

    aget-wide v5, v10, v1

    add-int v14, v4, v8

    move v1, v2

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v6, v19

    :goto_2
    if-eq v3, v14, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-wide v15, p0, v3

    aget-wide v17, v11, v1

    mul-double v15, v15, v17

    sub-double/2addr v6, v15

    add-int/2addr v1, v13

    move v3, v5

    goto :goto_2

    :cond_0
    mul-int v1, v8, v12

    add-int/2addr v1, v8

    aget-wide v14, p0, v1

    div-double v5, v6, v14

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v2

    add-int v1, v1, p3

    add-int/2addr v1, v8

    aput-wide v5, v10, v1

    aput-wide v5, v11, v9

    add-int/lit8 v1, v8, 0x1

    add-int v3, v9, v13

    add-int/2addr v4, v12

    move v8, v1

    move v9, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static symmRankTranA_sub(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/lit8 v11, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x0

    move v4, v1

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v2, v5, :cond_1

    aget-wide v12, v9, v4

    move v5, v4

    move/from16 v7, p2

    :goto_2
    if-ge v5, v3, :cond_0

    add-int/lit8 v8, v7, 0x1

    aget-wide v14, v10, v7

    add-int/lit8 v6, v5, 0x1

    aget-wide v16, v9, v5

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    aput-wide v14, v10, v7

    move v5, v6

    move v7, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    add-int p2, p2, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3, v3, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    :goto_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    rem-int v2, v1, v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    iput v4, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_6

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v5, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    sub-int/2addr v5, v6

    iput v5, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->chol:Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v6, v4

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v7, v7, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    invoke-virtual {v1, v5, v6, v7}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->decompose(Lorg/ejml/data/DenseMatrix64F;II)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    return v3

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v1, v4

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v5, v5, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v6, v6, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v5, v6

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->chol:Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;

    invoke-virtual {v6}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->getL()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v6

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v6, v7, v1, v5, v8}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->solveL_special([DLorg/ejml/data/DenseMatrix64F;IILorg/ejml/data/DenseMatrix64F;)V

    add-int/lit8 v1, v4, 0x1

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v1, v5

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    mul-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v5, v6, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->symmRankTranA_sub(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;I)V

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    move v1, v2

    :goto_3
    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->chol:Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v7, v4

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->T:Lorg/ejml/data/DenseMatrix64F;

    iget v8, v8, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->decompose(Lorg/ejml/data/DenseMatrix64F;II)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_5
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_4
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    :goto_5
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->t:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method protected decomposeUpper()Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented.  Do a lower decomposition and transpose it..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->setExpectedMaxSize(II)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    if-ge p1, v0, :cond_0

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    :goto_0
    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->chol:Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;

    return-void

    :cond_0
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->blockWidth:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->maxWidth:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;->B:Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0
.end method
