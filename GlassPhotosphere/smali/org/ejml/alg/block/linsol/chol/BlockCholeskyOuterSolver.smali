.class public Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/linsol/LinearSolver",
        "<",
        "Lorg/ejml/data/BlockMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private blockLength:I

.field private chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

.field private temp:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number or rows and/or columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->temp:[D

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->temp:[D

    array-length v1, v1

    iget v2, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    iget v3, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    iget v2, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->temp:[D

    :cond_3
    invoke-static {v5, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->zeroTriangle(ZLorg/ejml/data/BlockMatrix64F;)V

    new-instance v1, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v1, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v0, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget v2, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->temp:[D

    invoke-static {v2, v3, v1, v0, v4}, Lorg/ejml/alg/block/BlockTriangularSolver;->invert(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D)V

    iget v2, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    invoke-static {v2, v1, v0, v5}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveL(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->invert(Lorg/ejml/data/BlockMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    invoke-virtual {v0}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public quality()D
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->decompose(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iput v0, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->setA(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected blocklength in B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->chol:Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    if-eqz p2, :cond_2

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected blocklength in X."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough rows in X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-eq v1, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough rows in B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v2, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    invoke-static {v1, v4, v0, v2, v4}, Lorg/ejml/alg/block/BlockTriangularSolver;->solve(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    iget v1, p0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->blockLength:I

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v2, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    const/4 v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Lorg/ejml/alg/block/BlockTriangularSolver;->solve(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    if-eqz p2, :cond_4

    invoke-static {p1, p2}, Lorg/ejml/alg/block/BlockMatrixOps;->extractAligned(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    check-cast p2, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;->solve(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    return-void
.end method
