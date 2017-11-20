.class public abstract Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field protected decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    return-void
.end method


# virtual methods
.method public improveSol(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 16

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad shapes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    iget v9, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v10, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_getVV()[D

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getLU()Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v9, :cond_4

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v10, :cond_2

    mul-int v1, v4, v9

    add-int/2addr v1, v5

    aget-wide v1, v7, v1

    neg-double v2, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_1

    mul-int v12, v4, v10

    add-int/2addr v12, v1

    aget-wide v12, v6, v12

    mul-int v14, v1, v9

    add-int/2addr v14, v5

    aget-wide v14, v8, v14

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    aput-wide v2, v11, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v1, v11}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_solveVectorInternal([D)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_3

    mul-int v2, v1, v9

    add-int/2addr v2, v5

    aget-wide v3, v8, v2

    aget-wide v12, v11, v1

    sub-double/2addr v3, v12

    aput-wide v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_getVV()[D

    move-result-object v5

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getLU()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v6, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v7, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    if-ne v4, v3, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_2
    aput-wide v0, v5, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0, v5}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_solveVectorInternal([D)V

    move v0, v2

    move v1, v3

    :goto_3
    if-ge v0, v6, :cond_4

    aget-wide v8, v5, v0

    aput-wide v8, v7, v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method
