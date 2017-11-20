.class public abstract Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;
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
.field protected A:Lorg/ejml/data/DenseMatrix64F;

.field protected numCols:I

.field protected numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _setA(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 1

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->numRows:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->numCols:I

    return-void
.end method

.method public getA()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->A:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p0, v0, p1}, Lorg/ejml/alg/dense/linsol/InvertUsingSolve;->invert(Lorg/ejml/alg/dense/linsol/LinearSolver;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
