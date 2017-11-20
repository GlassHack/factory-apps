.class public Lorg/ejml/alg/dense/linsol/InvertUsingSolve;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/alg/dense/linsol/LinearSolver;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;",
            "Lorg/ejml/data/RowD1Matrix64F;",
            "Lorg/ejml/data/DenseMatrix64F;",
            ")V"
        }
    .end annotation

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A and A_inv must have the same dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    invoke-interface {p0, p2, p2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method
