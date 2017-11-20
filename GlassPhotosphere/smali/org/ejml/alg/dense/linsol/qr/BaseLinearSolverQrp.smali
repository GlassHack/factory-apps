.class public abstract Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field protected I:Lorg/ejml/data/DenseMatrix64F;

.field protected R:Lorg/ejml/data/DenseMatrix64F;

.field protected R11:Lorg/ejml/data/DenseMatrix64F;

.field private W:Lorg/ejml/data/DenseMatrix64F;

.field protected Y:Lorg/ejml/data/DenseMatrix64F;

.field decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/QRPDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field protected internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field protected norm2Solution:Z

.field protected rank:I


# direct methods
.method protected constructor <init>(Lorg/ejml/alg/dense/decomposition/QRPDecomposition;Z)V
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

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->Y:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->I:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->leastSquares(II)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    iput-boolean p2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->norm2Solution:Z

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;-><init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    :cond_0
    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 3

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for A_inv"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->I:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numRows:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->I:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->I:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, v0, p1}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public quality()D
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getRank()I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numRows:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    invoke-virtual {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->decomposition:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v2, v1}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    invoke-virtual {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    move v3, v1

    move v6, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->norm2Solution:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    move v6, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v3, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v6, v5, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v7, v5, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v5, v1

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([DIII[DIII)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v3, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v0, v2, v3, v8}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    add-int/2addr v4, v0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    add-int/2addr v4, v0

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v8

    goto/16 :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method protected upgradeSolution(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v1, v2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should never happen.  Is input NaN?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->rank:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->internalSolver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v1, p1, v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;->W:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v2, v3, v0, p1}, Lorg/ejml/ops/CommonOps;->multAdd(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method
