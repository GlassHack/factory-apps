.class public Lorg/ejml/simple/SimpleEVD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/simple/SimpleMatrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field mat:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->eig(I)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Eigenvalue Decomposition failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEVD()Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    return-object v0
.end method

.method public getEigenVector(I)Lorg/ejml/simple/SimpleMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenVector(I)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    return-object v0
.end method

.method public getIndexMax()I
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->getMagnitude2()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleEVD;->getNumberOfEigenvalues()I

    move-result v6

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v6, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->getMagnitude2()D

    move-result-wide v0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    move v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    move-wide v0, v2

    move v2, v5

    goto :goto_1
.end method

.method public getIndexMin()I
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->getMagnitude2()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleEVD;->getNumberOfEigenvalues()I

    move-result v6

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v6, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/simple/SimpleEVD;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->getMagnitude2()D

    move-result-wide v0

    cmpg-double v7, v0, v2

    if-gez v7, :cond_1

    move v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    move-wide v0, v2

    move v2, v5

    goto :goto_1
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v0

    return v0
.end method

.method public quality()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleEVD;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/simple/SimpleEVD;->eig:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)D

    move-result-wide v0

    return-wide v0
.end method
