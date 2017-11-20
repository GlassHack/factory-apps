.class public Lorg/ejml/alg/dense/linsol/LinearSolverSafe;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/data/Matrix64F;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/linsol/LinearSolver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private A:Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private B:Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private alg:Lorg/ejml/alg/dense/linsol/LinearSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/Matrix64F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->invert(Lorg/ejml/data/Matrix64F;)V

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

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/ejml/data/Matrix64F;->copy()Lorg/ejml/data/Matrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    iget v0, v0, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    iget v0, v0, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/Matrix64F;->reshape(IIZ)V

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/Matrix64F;->set(Lorg/ejml/data/Matrix64F;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    goto :goto_1
.end method

.method public solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->modifiesB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/ejml/data/Matrix64F;->copy()Lorg/ejml/data/Matrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    :goto_0
    iget-object p1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->alg:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v0, p1, p2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    iget v0, v0, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    iget v0, v0, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->A:Lorg/ejml/data/Matrix64F;

    iget v1, v1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/Matrix64F;->reshape(IIZ)V

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;->B:Lorg/ejml/data/Matrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/Matrix64F;->set(Lorg/ejml/data/Matrix64F;)V

    goto :goto_0
.end method
