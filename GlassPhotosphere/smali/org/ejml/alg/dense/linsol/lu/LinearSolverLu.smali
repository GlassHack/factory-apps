.class public Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;
.super Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;


# instance fields
.field doImprove:Z


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->doImprove:Z

    return-void
.end method

.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->doImprove:Z

    iput-boolean p2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->doImprove:Z

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v4, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v5, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v6, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_getVV()[D

    move-result-object v7

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    move v0, v1

    move v2, v3

    :goto_1
    iget v8, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->numCols:I

    if-ge v0, v8, :cond_1

    aget-wide v8, v5, v2

    aput-wide v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v0, v7}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->_solveVectorInternal([D)V

    move v0, v1

    move v2, v3

    :goto_2
    iget v8, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->numCols:I

    if-ge v0, v8, :cond_2

    aget-wide v8, v7, v0

    aput-wide v8, v6, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->doImprove:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->improveSol(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
