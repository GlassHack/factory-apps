.class public Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;
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
.field A:Lorg/ejml/data/DenseMatrix64F;

.field computeVectors:Z

.field generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field symmetric:Z

.field symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field private tol:D


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x1

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, p2}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->eigSymm(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-static {p1, p2}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->eigGeneral(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    iput-boolean p2, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->computeVectors:Z

    iput-wide p3, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->tol:D

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->tol:D

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/MatrixFeatures;->isSymmetric(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetric:Z

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;
    .locals 2

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->computeVectors:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configured to not compute eignevectors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetric:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenVector(I)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenVector(I)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0
.end method

.method public bridge synthetic getEigenVector(I)Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->getEigenVector(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getEigenvalue(I)Lorg/ejml/data/Complex64F;
    .locals 1

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->symmetricAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;->generalAlg:Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v0

    goto :goto_0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
