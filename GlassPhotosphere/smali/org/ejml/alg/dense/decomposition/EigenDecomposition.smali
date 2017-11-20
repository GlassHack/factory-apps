.class public interface abstract Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
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
.method public abstract getEigenVector(I)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMatrixType;"
        }
    .end annotation
.end method

.method public abstract getEigenvalue(I)Lorg/ejml/data/Complex64F;
.end method

.method public abstract getNumberOfEigenvalues()I
.end method
