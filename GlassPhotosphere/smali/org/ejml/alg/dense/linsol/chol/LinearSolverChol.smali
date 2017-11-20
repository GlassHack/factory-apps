.class public Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

.field n:I

.field t:[D

.field vv:[D


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;)V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    return-void
.end method

.method private solveInternalL()V
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->vv:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveL([D[DI)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->vv:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveTranL([D[DI)V

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passing in the same matrix that was decomposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->isLower()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->setToInverseL([D)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Implement"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->getT()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->_getVV()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->vv:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->getT()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public setToInverseL([D)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    aget-wide v5, v1, v2

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-gt v4, v0, :cond_2

    if-ne v0, v4, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_2
    add-int/lit8 v3, v0, -0x1

    move v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move v1, v11

    :goto_3
    if-lt v1, v4, :cond_1

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget v8, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v1

    aget-wide v7, v7, v8

    iget v9, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v1

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    sub-double/2addr v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    div-double/2addr v2, v5

    aput-wide v2, p1, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_4
    if-ltz v4, :cond_7

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v4

    aget-wide v5, v0, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-gt v3, v4, :cond_6

    if-ge v4, v3, :cond_4

    const-wide/16 v0, 0x0

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v11, v2

    move-wide v12, v0

    move-wide v1, v12

    move v0, v11

    :goto_7
    iget v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-ge v0, v7, :cond_5

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->t:[D

    iget v8, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    iget v9, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v0

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    sub-double/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_4
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v4

    aget-wide v0, p1, v0

    goto :goto_6

    :cond_5
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    div-double/2addr v1, v5

    aput-wide v1, p1, v7

    aput-wide v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_4

    :cond_7
    return-void
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 9

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-eq v0, v2, :cond_0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v5, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->isLower()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    move v0, v1

    :goto_1
    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->vv:[D

    mul-int v7, v0, v3

    add-int/2addr v7, v2

    aget-wide v7, v4, v7

    aput-wide v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->solveInternalL()V

    move v0, v1

    :goto_2
    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->n:I

    if-ge v0, v6, :cond_2

    mul-int v6, v0, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->vv:[D

    aget-wide v7, v7, v0

    aput-wide v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Implement"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
