.class public Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/eig/EigenvalueExtractor;


# instance fields
.field implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

.field numSplits:I

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    return-void
.end method

.method private moveToNextSplit()V
    .locals 2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    aget v0, v0, v1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    goto :goto_0
.end method

.method private performIteration()V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->isZero(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->splits:[I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->implicitDoubleStep(II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getEigenvalues()[Lorg/ejml/data/Complex64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->getEigenvalues()[Lorg/ejml/data/Complex64F;

    move-result-object v0

    return-object v0
.end method

.method public getImplicitQR()Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->getNumberOfEigenvalues()I

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->setup(Lorg/ejml/data/DenseMatrix64F;)V

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    :goto_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->maxIterations:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-virtual {v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->incrementSteps()V

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->moveToNextSplit()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    invoke-virtual {v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenAt(I)V

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addComputedEigen2x2(II)V

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalThreshold:I

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x1:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalShift(II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->isZero(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    invoke-virtual {v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenAt(I)V

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->x2:I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->performIteration()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public setup(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->setup(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->implicitQR:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->splits:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvalue;->numSplits:I

    return-void
.end method
