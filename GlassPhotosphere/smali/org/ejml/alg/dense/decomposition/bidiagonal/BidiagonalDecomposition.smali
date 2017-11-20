.class public interface abstract Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/data/Matrix64F;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getB(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method

.method public abstract getDiagonal([D[D)V
.end method

.method public abstract getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation
.end method

.method public abstract getV(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation
.end method
