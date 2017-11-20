.class public Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;
.super Ljava/lang/Object;


# instance fields
.field N:I

.field Q:Lorg/ejml/data/DenseMatrix64F;

.field eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

.field eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

.field implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

.field indexVal:I

.field numSplits:I

.field onscript:Z

.field origEigenvalues:[Lorg/ejml/data/Complex64F;

.field solver:Lorg/ejml/alg/dense/linsol/LinearSolver;

.field splits:[I

.field x1:I

.field x2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSplitPerformImplicit()V
    .locals 7

    const/4 v3, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->isZero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->splits:[I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->onscript:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, v1, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalThreshold:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->onscript:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->origEigenvalues:[Lorg/ejml/data/Complex64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v5}, Lorg/ejml/data/Complex64F;->getReal()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitSingleStep(IID)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget-wide v3, v5, Lorg/ejml/data/Complex64F;->real:D

    iget-wide v5, v5, Lorg/ejml/data/Complex64F;->imaginary:D

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitDoubleStep(IIDD)V

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->onscript:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->implicitDoubleStep(II)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitSingleStep(IID)V

    goto :goto_1
.end method

.method private findNextEigenvalue()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->maxIterations:I

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    invoke-virtual {v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->incrementSteps()V

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    if-ge v2, v3, :cond_0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->moveToNextSplit()V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    invoke-virtual {v0, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenAt(I)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->isReal2x2(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v0, v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addComputedEigen2x2(II)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalThreshold:I

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalShift(II)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iput v3, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->isZero(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    invoke-virtual {v0, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenAt(I)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->checkSplitPerformImplicit()V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method private moveToNextSplit()V
    .locals 2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    aget v0, v0, v1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    goto :goto_0
.end method

.method private solveEigenvectorDuplicateEigenvalue(DIZ)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    if-lez p3, :cond_1

    if-eqz p4, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solveUsingTriangle(DILorg/ejml/data/DenseMatrix64F;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    if-ge p3, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    sub-int/2addr v3, p3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->real:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-wide v6, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, p3

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v3, v4, v2}, Lorg/ejml/ops/CommonOps;->multTransA(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    invoke-static {v2}, Lorg/ejml/ops/NormOps;->normalizeF(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solveWithLU(DILorg/ejml/data/DenseMatrix64F;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private solveUsingTriangle(DILorg/ejml/data/DenseMatrix64F;)V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    neg-double v3, p1

    invoke-virtual {v2, v0, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->add(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    move v2, p3

    move v3, p3

    move v4, v1

    move v5, v1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    invoke-static {p4}, Lorg/ejml/ops/CommonOps;->changeSign(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v3, v3, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v3, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v0, v2, v3, v1, p3}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DIII)V

    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v1, v1, p1, p2}, Lorg/ejml/data/DenseMatrix64F;->add(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private solveWithLU(DILorg/ejml/data/DenseMatrix64F;)V
    .locals 15

    new-instance v7, Lorg/ejml/data/DenseMatrix64F;

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p3

    move/from16 v6, p3

    invoke-static/range {v2 .. v9}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    move-wide/from16 v0, p1

    neg-double v3, v0

    invoke-virtual {v7, v2, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->add(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v8, v2, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v10, p3

    move/from16 v11, p3

    move-object/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    invoke-static/range {p4 .. p4}, Lorg/ejml/ops/CommonOps;->changeSign(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    invoke-interface {v2, v7}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Solve failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-interface {v2, v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method


# virtual methods
.method public extractVectors(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/ejml/UtilEjml;->memset([DD)V

    move v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v4, v4, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v4}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    iget-wide v4, v4, Lorg/ejml/data/Complex64F;->real:D

    invoke-direct {p0, v4, v5, v0, v2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solveEigenvectorDuplicateEigenvalue(DIZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    invoke-direct {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-static {p1, v2, v0}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    aput-object v0, v4, v1

    move-object v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public findQandR()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x1:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->x2:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->indexVal:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->findNextEigenvalue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    return-object v0
.end method

.method public getEigenvectors()[Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getImplicit()Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    return-object v0
.end method

.method public getQ()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public process(Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->implicit:Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v2, :cond_0

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    new-array v1, v1, [Lorg/ejml/data/Complex64F;

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->origEigenvalues:[Lorg/ejml/data/Complex64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    new-array v1, v1, [Lorg/ejml/data/DenseMatrix64F;

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    invoke-direct {v1, v2, v4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectorTemp:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->linear(I)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->solver:Lorg/ejml/alg/dense/linsol/LinearSolver;

    :goto_0
    iget-object v1, p1, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->origEigenvalues:[Lorg/ejml/data/Complex64F;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, p2}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->setup(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->setQ(Lorg/ejml/data/DenseMatrix64F;)V

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->numSplits:I

    iput-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->onscript:Z

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->findQandR()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->N:I

    new-array v1, v1, [Lorg/ejml/data/DenseMatrix64F;

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->eigenvectors:[Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigenvector;->extractVectors(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    goto :goto_1
.end method
