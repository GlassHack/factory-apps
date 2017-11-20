.class public Lorg/ejml/ops/NormOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditionP(Lorg/ejml/data/DenseMatrix64F;D)D
    .locals 5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->conditionP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, v0}, Lorg/ejml/ops/CommonOps;->invert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A can\'t be inverted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/ops/NormOps;->normP(Lorg/ejml/data/DenseMatrix64F;D)D

    move-result-wide v1

    invoke-static {v0, p1, p2}, Lorg/ejml/ops/NormOps;->normP(Lorg/ejml/data/DenseMatrix64F;D)D

    move-result-wide v3

    mul-double v0, v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, v0}, Lorg/ejml/ops/CommonOps;->pinv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    invoke-static {p0, p1, p2}, Lorg/ejml/ops/NormOps;->normP(Lorg/ejml/data/DenseMatrix64F;D)D

    move-result-wide v1

    invoke-static {v0, p1, p2}, Lorg/ejml/ops/NormOps;->normP(Lorg/ejml/data/DenseMatrix64F;D)D

    move-result-wide v3

    mul-double v0, v1, v3

    goto :goto_0
.end method

.method public static conditionP2(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 10

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(II)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v7

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/SingularOps;->rank(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v2, 0x1

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-wide v0, v7, v6

    cmpg-double v9, v0, v4

    if-gez v9, :cond_1

    move-wide v4, v0

    :cond_1
    cmpl-double v9, v0, v2

    if-lez v9, :cond_3

    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    :cond_2
    div-double v0, v2, v4

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method public static elementP(Lorg/ejml/data/RowD1Matrix64F;D)D
    .locals 13

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v8

    if-nez v2, :cond_1

    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementSumAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v3

    cmpl-double v2, v3, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/ejml/data/RowD1Matrix64F;->getNumElements()I

    move-result v5

    const/4 v2, 0x0

    move v10, v2

    move-wide v11, v0

    move-wide v1, v11

    move v0, v10

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-virtual {p0, v0}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    div-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    div-double v5, v8, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v3

    goto :goto_0
.end method

.method public static fastElementP(Lorg/ejml/data/D1Matrix64F;D)D
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->fastNormF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static fastNormF(Lorg/ejml/data/D1Matrix64F;)D
    .locals 6

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastNormP(Lorg/ejml/data/DenseMatrix64F;D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normP1(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->fastNormP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/ejml/ops/NormOps;->fastElementP(Lorg/ejml/data/D1Matrix64F;D)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Doesn\'t support induced norms yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fastNormP2(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->fastNormF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/ejml/ops/NormOps;->inducedP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static inducedP1(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 13

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget v11, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v12, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v10, v5

    move-wide v2, v6

    :goto_0
    if-ge v10, v12, :cond_1

    move v4, v5

    move-wide v0, v6

    :goto_1
    if-ge v4, v11, :cond_0

    invoke-virtual {p0, v4, v10}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v8

    goto :goto_1

    :cond_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method public static inducedP2(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(IIZZZ)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decomposition failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/ejml/UtilEjml;->max([DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static inducedPInf(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 13

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget v11, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v12, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v10, v5

    move-wide v2, v6

    :goto_0
    if-ge v10, v11, :cond_1

    move v4, v5

    move-wide v0, v6

    :goto_1
    if-ge v4, v12, :cond_0

    invoke-virtual {p0, v10, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v8

    goto :goto_1

    :cond_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method public static normF(Lorg/ejml/data/D1Matrix64F;)D
    .locals 11

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v3

    cmpl-double v2, v3, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v5

    const/4 v2, 0x0

    move v8, v2

    move-wide v9, v0

    move-wide v1, v9

    move v0, v8

    :goto_1
    if-ge v0, v5, :cond_1

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    div-double/2addr v6, v3

    mul-double/2addr v6, v6

    add-double/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    goto :goto_0
.end method

.method public static normP(Lorg/ejml/data/DenseMatrix64F;D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normP1(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/ejml/ops/NormOps;->elementP(Lorg/ejml/data/RowD1Matrix64F;D)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Doesn\'t support induced norms yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static normP1(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementSumAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/ejml/ops/NormOps;->inducedP1(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static normP2(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/ejml/ops/NormOps;->inducedP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static normPInf(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 2

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/ejml/ops/NormOps;->inducedPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static normalizeF(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 5

    invoke-static {p0}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
