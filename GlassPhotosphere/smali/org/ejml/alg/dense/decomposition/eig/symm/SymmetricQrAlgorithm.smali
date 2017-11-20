.class public Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;
.super Ljava/lang/Object;


# instance fields
.field private Q:Lorg/ejml/data/DenseMatrix64F;

.field private eigenvalues:[D

.field private exceptionalThresh:I

.field private fastEigenvalues:Z

.field private followingScript:Z

.field private helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

.field private maxIterations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->exceptionalThresh:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->maxIterations:I

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->exceptionalThresh:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->maxIterations:I

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    return-void
.end method

.method private _process()Z
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->maxIterations:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->resetSteps()V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->nextSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->incrementSteps()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->fastEigenvalues:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->resetSteps()V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    invoke-virtual {v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenvalue2by2(I)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->setSubmatrix(II)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->lastExceptional:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->exceptionalThresh:I

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->exceptionalShift()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->performStep()V

    goto :goto_1
.end method


# virtual methods
.method public getEigenvalue(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    return v0
.end method

.method public getQ()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public performStep()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v1, v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->isZero(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v3, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    aput v0, v1, v3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->followingScript:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->followingScript:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->eigenvalues:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    aget-wide v0, v0, v1

    :goto_2
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v2, v0, v1, v3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->performImplicitSingleStep(DZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeShift()D

    move-result-wide v0

    goto :goto_2
.end method

.method public process(I[D[D)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->init([D[DI)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->followingScript:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->eigenvalues:[D

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->_process()Z

    move-result v0

    return v0
.end method

.method public process(I[D[D[D)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    invoke-virtual {v0, p2, p3, p1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->init([D[DI)V

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->Q:Lorg/ejml/data/DenseMatrix64F;

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->helper:Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->followingScript:Z

    iput-object p4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->eigenvalues:[D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->fastEigenvalues:Z

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->_process()Z

    move-result v0

    return v0
.end method

.method public setFastEigenvalues(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->fastEigenvalues:Z

    return-void
.end method

.method public setMaxIterations(I)V
    .locals 0

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->maxIterations:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQrAlgorithm;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method
