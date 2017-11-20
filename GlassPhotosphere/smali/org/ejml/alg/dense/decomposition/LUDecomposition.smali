.class public interface abstract Lorg/ejml/alg/dense/decomposition/LUDecomposition;
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
.method public abstract computeDeterminant()D
.end method

.method public abstract getLower(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getPivot(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getUpper(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract isSingular()Z
.end method
