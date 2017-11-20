.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrBlock64;
.super Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;

    invoke-direct {v0}, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;-><init>()V

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/linsol/WrapLinearSolverBlock64;-><init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V

    return-void
.end method
