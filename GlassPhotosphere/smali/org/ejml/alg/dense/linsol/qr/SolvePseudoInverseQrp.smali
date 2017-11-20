.class public Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;
.super Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;


# instance fields
.field private Q:Lorg/ejml/data/DenseMatrix64F;

.field private x_basic:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/QRPDecomposition;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/QRPDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;-><init>(Lorg/ejml/alg/dense/decomposition/QRPDecomposition;Z)V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Q:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v1, v2, v0}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numRows:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getPivots()[I

    move-result-object v4

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_7

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numRows:I

    invoke-virtual {v0, v5, v8}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numRows:I

    invoke-virtual {v0, v5, v8}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    move v0, v1

    :goto_1
    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numRows:I

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v6

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v5, v6}, Lorg/ejml/ops/CommonOps;->multTransA(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v6, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->rank:I

    invoke-static {v0, v5, v6}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numCols:I

    invoke-virtual {v0, v5, v8, v8}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->rank:I

    :goto_2
    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numCols:I

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->norm2Solution:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->rank:I

    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numCols:I

    if-ge v0, v5, :cond_5

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->upgradeSolution(Lorg/ejml/data/DenseMatrix64F;)V

    :cond_5
    move v0, v1

    :goto_3
    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->numCols:I

    if-ge v0, v5, :cond_6

    aget v5, v4, v0

    iget-object v6, p0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v6, v6, v0

    invoke-virtual {p2, v5, v2, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_7
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
