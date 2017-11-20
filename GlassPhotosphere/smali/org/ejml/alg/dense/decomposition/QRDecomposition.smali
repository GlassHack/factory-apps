.class public interface abstract Lorg/ejml/alg/dense/decomposition/QRDecomposition;
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
.method public abstract getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method

.method public abstract getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation
.end method
