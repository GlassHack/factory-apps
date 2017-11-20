.class public Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;
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
.field A:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v4}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v4, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, p1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->invert(Lorg/ejml/data/DenseMatrix64F;)V

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

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported by this solver."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/LinearSolverUnrolled;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
