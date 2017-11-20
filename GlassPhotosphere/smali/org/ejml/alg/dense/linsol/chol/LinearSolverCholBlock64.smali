.class public Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;
.super Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;

    invoke-direct {v0}, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;-><init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {p1, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v0, p2}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
