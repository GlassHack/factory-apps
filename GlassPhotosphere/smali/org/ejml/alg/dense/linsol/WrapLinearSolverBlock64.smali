.class public Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/linsol/LinearSolver",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected alg:Lorg/ejml/alg/dense/linsol/LinearSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/BlockMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field protected blockA:Lorg/ejml/data/BlockMatrix64F;

.field protected blockB:Lorg/ejml/data/BlockMatrix64F;

.field protected blockX:Lorg/ejml/data/BlockMatrix64F;


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/BlockMatrix64F;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;

    invoke-direct {v0}, Lorg/ejml/alg/block/linsol/chol/BlockCholeskyOuterSolver;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockA:Lorg/ejml/data/BlockMatrix64F;

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockX:Lorg/ejml/data/BlockMatrix64F;

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->invert(Lorg/ejml/data/Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v0, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->invert(Lorg/ejml/data/DenseMatrix64F;)V

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

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockA:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {p1, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockA:Lorg/ejml/data/BlockMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockX:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {p1, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockB:Lorg/ejml/data/BlockMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockX:Lorg/ejml/data/BlockMatrix64F;

    invoke-interface {v0, v1, v2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->blockX:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v0, p2}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
