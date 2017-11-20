.class public Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field private d:[D

.field private decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

.field private el:[D

.field private n:I

.field private vv:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;)V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    return-void
.end method

.method private solveInternal()V
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->el:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveL([D[DI)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    aget-wide v2, v1, v0

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->d:[D

    aget-wide v4, v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->el:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    invoke-static {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveTranL([D[DI)V

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 13

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v5, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-gt v4, v0, :cond_4

    if-ne v0, v4, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_2
    add-int/lit8 v3, v0, -0x1

    move v10, v3

    move-wide v11, v1

    move-wide v2, v11

    move v1, v10

    :goto_3
    if-lt v1, v4, :cond_3

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->el:[D

    iget v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    iget v8, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    aget-wide v8, v5, v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    aput-wide v2, v5, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v1, :cond_7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->d:[D

    aget-wide v3, v3, v0

    div-double v2, v1, v3

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_6

    iget v4, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    aget-wide v6, v5, v4

    mul-double/2addr v6, v2

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_6
    if-ltz v4, :cond_b

    const/4 v0, 0x0

    move v3, v0

    :goto_7
    if-gt v3, v4, :cond_a

    if-ge v4, v3, :cond_8

    const-wide/16 v0, 0x0

    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v10, v2

    move-wide v11, v0

    move-wide v1, v11

    move v0, v10

    :goto_9
    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v6, :cond_9

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->el:[D

    iget v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v4

    aget-wide v6, v6, v7

    iget v8, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v0

    aget-wide v8, v5, v8

    mul-double/2addr v6, v8

    sub-double/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v4

    aget-wide v0, v5, v0

    goto :goto_8

    :cond_9
    iget v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    aput-wide v1, v5, v6

    aput-wide v1, v5, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_6

    :cond_b
    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->inputModified()Z

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

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->getL()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/ops/SpecializedOps;->diagProd(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->_getVV()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->getL()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->el:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->decomp:Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->getD()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->d:[D

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

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 9

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-eq v0, v2, :cond_0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v5, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    move v0, v1

    :goto_1
    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    mul-int v7, v0, v3

    add-int/2addr v7, v2

    aget-wide v7, v4, v7

    aput-wide v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->solveInternal()V

    move v0, v1

    :goto_2
    iget v6, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->n:I

    if-ge v0, v6, :cond_2

    mul-int v6, v0, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->vv:[D

    aget-wide v7, v7, v0

    aput-wide v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholLDL;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
