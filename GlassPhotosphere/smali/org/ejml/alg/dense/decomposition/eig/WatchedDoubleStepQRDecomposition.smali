.class public Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/EigenDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field H:Lorg/ejml/data/DenseMatrix64F;

.field algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

.field algVector:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;

.field computeVectors:Z

.field hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algVector:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->computeVectors:Z

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    invoke-virtual {v2, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    invoke-virtual {v2, v4}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->getH(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    iput-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->H:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-virtual {v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->getImplicitQR()Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    move-result-object v2

    iput-boolean v0, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->createR:Z

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->H:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->process(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->getImplicitQR()Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    move-result-object v0

    iput-boolean v1, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->createR:Z

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->computeVectors:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algVector:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->getImplicitQR()Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    move-result-object v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->H:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    invoke-virtual {v3, v4}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->getQ(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->process(Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algVector:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->getEigenvectors()[Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->getEigenvalues()[Lorg/ejml/data/Complex64F;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->algValue:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->getEigenvalues()[Lorg/ejml/data/Complex64F;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;->hessenberg:Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->inputModified()Z

    move-result v0

    return v0
.end method
