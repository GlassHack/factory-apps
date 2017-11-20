.class public interface abstract Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MatrixType:",
        "Lorg/ejml/data/Matrix64F;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
        "<TMatrixType;>;"
    }
.end annotation


# virtual methods
.method public abstract getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract isLower()Z
.end method
