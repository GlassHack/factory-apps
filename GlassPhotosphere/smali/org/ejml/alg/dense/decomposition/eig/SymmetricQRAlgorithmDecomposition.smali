.class public Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;
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
.field private V:Lorg/ejml/data/DenseMatrix64F;

.field computeVectors:Z

.field private computeVectorsWithValues:Z

.field private decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field private diag:[D

.field private diagSaved:[D

.field private eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

.field private helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

.field private off:[D

.field private offSaved:[D

.field private values:[D

.field private vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectorsWithValues:Z

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    iput-boolean p2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectors:Z

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;-><init>(Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->tridiagonal(I)Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;-><init>(Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;Z)V

    return-void
.end method

.method private computeEigenValues()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diagSaved:[D

    invoke-virtual {v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->copyDiag([D)[D

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diagSaved:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->offSaved:[D

    invoke-virtual {v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->copyOff([D)[D

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->offSaved:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    invoke-virtual {v1, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    invoke-virtual {v1, v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->setFastEigenvalues(Z)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->process(I[D[D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    invoke-virtual {v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->copyEigenvalues([D)[D

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    goto :goto_0
.end method

.method private extractSeparate(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeEigenValues()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->reset(I)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diagSaved:[D

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->swapDiag([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diagSaved:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->offSaved:[D

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->swapOff([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->offSaved:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v3, v2}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    const/4 v3, -0x1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    invoke-virtual {v0, v3, v5, v5, v4}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->process(I[D[D[D)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->copyEigenvalues([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->rowsToVector(Lorg/ejml/data/DenseMatrix64F;[Lorg/ejml/data/DenseMatrix64F;)[Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    move v0, v2

    goto :goto_0
.end method

.method private extractTogether()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v3, v2}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->setFastEigenvalues(Z)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v4, v4}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->process(I[D[D)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->V:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->rowsToVector(Lorg/ejml/data/DenseMatrix64F;[Lorg/ejml/data/DenseMatrix64F;)[Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->copyEigenvalues([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    invoke-interface {v1, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diag:[D

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diag:[D

    array-length v1, v1

    if-ge v1, v0, :cond_3

    :cond_2
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diag:[D

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->off:[D

    :cond_3
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diag:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->off:[D

    invoke-interface {v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;->getDiagonal([D[D)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->diag:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->off:[D

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->init([D[DI)V

    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectors:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectorsWithValues:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->extractTogether()Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->extractSeparate(I)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeEigenValues()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex64F;
    .locals 5

    new-instance v0, Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->values:[D

    aget-wide v1, v1, p1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ejml/data/Complex64F;-><init>(DD)V

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->getMatrixSize()I

    move-result v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->decomp:Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;->inputModified()Z

    move-result v0

    return v0
.end method

.method public setComputeVectorsWithValues(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectors:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compute eigenvalues has been set to false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->computeVectorsWithValues:Z

    return-void
.end method

.method public setMaxIterations(I)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;->vector:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->setMaxIterations(I)V

    return-void
.end method
