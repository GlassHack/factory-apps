.class public interface abstract Lorg/ejml/alg/dense/decomposition/QRPDecomposition;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/data/Matrix64F;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getPivotMatrix(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
.end method

.method public abstract getPivots()[I
.end method

.method public abstract getRank()I
.end method
