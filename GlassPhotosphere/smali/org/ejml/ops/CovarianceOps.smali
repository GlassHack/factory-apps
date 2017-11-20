.class public Lorg/ejml/ops/CovarianceOps;
.super Ljava/lang/Object;


# static fields
.field public static TOL:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    sput-wide v0, Lorg/ejml/ops/CovarianceOps;->TOL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invert(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-static {p0, p0}, Lorg/ejml/ops/CovarianceOps;->invert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public static invert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-static {p0, p1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v4, v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->symmPosDef(I)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v1

    new-instance v2, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;

    invoke-direct {v2, v1}, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;-><init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V

    invoke-interface {v2, p0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->invert(Lorg/ejml/data/Matrix64F;)V

    goto :goto_0
.end method

.method public static isValid(Lorg/ejml/data/DenseMatrix64F;)I
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isDiagonalPositive(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-wide v0, Lorg/ejml/ops/CovarianceOps;->TOL:D

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/MatrixFeatures;->isSymmetric(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isPositiveSemidefinite(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidFast(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isDiagonalPositive(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public static randomVector(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Ljava/util/Random;)V
    .locals 1

    new-instance v0, Lorg/ejml/ops/CovarianceRandomDraw;

    invoke-direct {v0, p2, p0}, Lorg/ejml/ops/CovarianceRandomDraw;-><init>(Ljava/util/Random;Lorg/ejml/data/DenseMatrix64F;)V

    invoke-virtual {v0, p1}, Lorg/ejml/ops/CovarianceRandomDraw;->next(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
