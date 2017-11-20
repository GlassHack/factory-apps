.class public interface abstract Lorg/ejml/alg/dense/linsol/AdjustableLinearSolver;
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


# virtual methods
.method public abstract addRowToA([DI)Z
.end method

.method public abstract removeRowFromA(I)Z
.end method
