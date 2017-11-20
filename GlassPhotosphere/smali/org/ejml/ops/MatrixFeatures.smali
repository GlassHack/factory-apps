.class public Lorg/ejml/ops/MatrixFeatures;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNaN(Lorg/ejml/data/D1Matrix64F;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hasUncountable(Lorg/ejml/data/D1Matrix64F;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isConstantVal(Lorg/ejml/data/DenseMatrix64F;DD)Z
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v5

    sub-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p3

    if-lez v2, :cond_0

    :goto_2
    return v1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isDiagonalPositive(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;D)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v1, 0x0

    cmpl-double v1, p2, v1

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixFeatures;->isEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, p2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEqualsTriangle(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;ZD)Z
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_5

    move v2, v0

    :goto_2
    iget v3, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p3

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_3
    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_5

    iget v2, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_4
    if-gt v2, v3, :cond_4

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, p3

    if-gtz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFullRank(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Implement"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isIdentical(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;D)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v3, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    sub-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v8, p2, v8

    if-ltz v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static isIdentity(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 9

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v3, :cond_4

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v3, v4, :cond_3

    if-ne v0, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p1

    if-lez v2, :cond_2

    :cond_0
    :goto_2
    return v1

    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, p1

    if-gtz v2, :cond_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isInverse(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 11

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v5, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v6, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v6, :cond_5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_2

    invoke-virtual {p0, v4, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    invoke-virtual {p1, v0, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    if-ne v4, v3, :cond_3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v0, v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-lez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-lez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNegative(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;D)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix dimensions must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p2

    if-lez v3, :cond_2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ejml/ops/CommonOps;->columnsToVector(Lorg/ejml/data/DenseMatrix64F;[Lorg/ejml/data/DenseMatrix64F;)[Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_3

    aget-object v4, v3, v0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_2

    aget-object v5, v3, v2

    invoke-static {v4, v5}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->innerProd(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p1

    if-lez v5, :cond_1

    :goto_2
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isPositiveDefinite(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isSquare(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPositiveSemidefinite(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isSquare(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->eig(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v3, :cond_2

    invoke-interface {v2, v0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/data/Complex64F;->getReal()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRowsLinearIndependent(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v0}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->lu(I)Lorg/ejml/alg/dense/decomposition/LUDecomposition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/decomposition/LUDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decompositon failed?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/LUDecomposition;->isSingular()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSkewSymmetric(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p1

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSquare(Lorg/ejml/data/D1Matrix64F;)Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSymmetric(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/MatrixFeatures;->isSymmetric(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    return v0
.end method

.method public static isSymmetric(Lorg/ejml/data/DenseMatrix64F;D)Z
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v3

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    div-double/2addr v7, v3

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p1

    if-gtz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUpperTriangle(Lorg/ejml/data/DenseMatrix64F;ID)Z
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    sub-int v3, v0, p1

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p2

    if-lez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVector(Lorg/ejml/data/D1Matrix64F;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nullity(Lorg/ejml/data/DenseMatrix64F;)I
    .locals 4

    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/MatrixFeatures;->nullity(Lorg/ejml/data/DenseMatrix64F;D)I

    move-result v0

    return v0
.end method

.method public static nullity(Lorg/ejml/data/DenseMatrix64F;D)I
    .locals 2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(II)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decomposition failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, p1, p2}, Lorg/ejml/ops/SingularOps;->nullity(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I

    move-result v0

    return v0
.end method

.method public static rank(Lorg/ejml/data/DenseMatrix64F;)I
    .locals 4

    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/MatrixFeatures;->rank(Lorg/ejml/data/DenseMatrix64F;D)I

    move-result v0

    return v0
.end method

.method public static rank(Lorg/ejml/data/DenseMatrix64F;D)I
    .locals 2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(II)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decomposition failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, p1, p2}, Lorg/ejml/ops/SingularOps;->rank(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I

    move-result v0

    return v0
.end method
