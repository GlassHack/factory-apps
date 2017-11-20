.class public interface abstract Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;
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
.method public abstract getDiagonal([D[D)V
.end method

.method public abstract getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;Z)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMatrixType;)TMatrixType;"
        }
    .end annotation
.end method
