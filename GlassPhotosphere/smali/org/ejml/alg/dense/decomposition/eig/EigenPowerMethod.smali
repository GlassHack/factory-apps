.class public Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;
.super Ljava/lang/Object;


# instance fields
.field private B:Lorg/ejml/data/DenseMatrix64F;

.field private maxIterations:I

.field private q0:Lorg/ejml/data/DenseMatrix64F;

.field private q1:Lorg/ejml/data/DenseMatrix64F;

.field private q2:Lorg/ejml/data/DenseMatrix64F;

.field private seed:Lorg/ejml/data/DenseMatrix64F;

.field private tol:D


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->tol:D

    const/16 v0, 0x14

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->maxIterations:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->B:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method private checkConverged(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v0, v1

    move-wide v4, v2

    :goto_0
    iget v6, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v6, v6, v0

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v9, v9, v0

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v9, v6, v4

    if-lez v9, :cond_0

    move-wide v4, v6

    :cond_0
    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v6, v6, v0

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v9, v9, v0

    add-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v9, v6, v2

    if-lez v9, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    iput-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->tol:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    move v1, v8

    :cond_3
    :goto_1
    return v1

    :cond_4
    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->tol:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    move v1, v8

    goto :goto_1
.end method

.method private initPower(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->seed:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->seed:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public computeDirect(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->initPower(Lorg/ejml/data/DenseMatrix64F;)V

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->maxIterations:I

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, v1, v2}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v2, v3, v4}, Lorg/ejml/ops/CommonOps;->divide(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->checkConverged(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public computeShiftDirect(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->B:Lorg/ejml/data/DenseMatrix64F;

    neg-double v1, p2

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/ops/SpecializedOps;->addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->computeDirect(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public computeShiftInvert(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->initPower(Lorg/ejml/data/DenseMatrix64F;)V

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->linear(I)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->B:Lorg/ejml/data/DenseMatrix64F;

    neg-double v3, p2

    invoke-static {p1, v1, v3, v4}, Lorg/ejml/ops/SpecializedOps;->addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v2, v1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move v1, v0

    :goto_0
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->maxIterations:I

    if-ge v0, v3, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v2, v1, v3}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q1:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q2:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v3, v4, v1, v5}, Lorg/ejml/ops/CommonOps;->divide(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->checkConverged(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getEigenVector()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->q0:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public setOptions(ID)V
    .locals 0

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->maxIterations:I

    iput-wide p2, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->tol:D

    return-void
.end method

.method public setSeed(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->seed:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method
