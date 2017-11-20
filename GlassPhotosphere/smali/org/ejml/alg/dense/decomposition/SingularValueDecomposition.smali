.class public interface abstract Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;
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
.method public abstract getSingularValues()[D
.end method

.method public abstract getU(Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method public abstract getV(Z)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method public abstract getW(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract isCompact()Z
.end method

.method public abstract numCols()I
.end method

.method public abstract numRows()I
.end method

.method public abstract numberOfSingularValues()I
.end method
