.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field protected Q:Lorg/ejml/data/DenseMatrix64F;

.field protected R:Lorg/ejml/data/DenseMatrix64F;

.field private Y:Lorg/ejml/data/DenseMatrix64F;

.field private Z:Lorg/ejml/data/DenseMatrix64F;

.field private decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/QRDecomposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxRows:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxCols:I

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/QRDecomposition;->inputModified()Z

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

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxRows:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxCols:I

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->setMaxSize(II)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;

    invoke-interface {v1, p1}, Lorg/ejml/alg/dense/decomposition/QRDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numCols:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v1, v2, v0}, Lorg/ejml/alg/dense/decomposition/QRDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->decomposer:Lorg/ejml/alg/dense/decomposition/QRDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v1, v2, v0}, Lorg/ejml/alg/dense/decomposition/QRDecomposition;->getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public setMaxSize(II)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxRows:I

    iput p2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->maxCols:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Y:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Z:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

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

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    invoke-virtual {v0, v2, v4, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Z:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    invoke-virtual {v0, v2, v4, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_5

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numRows:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Z:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v4, v5}, Lorg/ejml/ops/CommonOps;->multTransA(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Z:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v5, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numCols:I

    invoke-static {v0, v4, v5}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    move v0, v1

    :goto_2
    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->numCols:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->Z:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v4, v4, v0

    invoke-virtual {p2, v0, v2, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQr;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
