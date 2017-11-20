.class public Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;
.super Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/AdjustableLinearSolver;


# instance fields
.field private A:Lorg/ejml/data/DenseMatrix64F;

.field private update:Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;-><init>(Lorg/ejml/alg/dense/decomposition/QRDecomposition;)V

    return-void
.end method


# virtual methods
.method public addRowToA([DI)Z
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    div-int/lit8 v0, v0, 0xa

    if-ge v0, v5, :cond_0

    move v0, v5

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    invoke-virtual {v0, v1, v2, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->maxCols:I

    invoke-virtual {v0, v1, v2, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->update:Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->addRow(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;[DIZ)V

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    return v5
.end method

.method public getA()Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numCols:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public removeRowFromA(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->update:Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->deleteRow(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;IZ)V

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->numRows:I

    return v3
.end method

.method public setMaxSize(II)V
    .locals 3

    add-int/lit8 v0, p1, 0x5

    invoke-super {p0, v0, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->setMaxSize(II)V

    new-instance v1, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;-><init>(IIZ)V

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->update:Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, v0, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;->A:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method
