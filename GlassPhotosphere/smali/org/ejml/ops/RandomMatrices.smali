.class public Lorg/ejml/ops/RandomMatrices;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRandom(Lorg/ejml/data/DenseMatrix64F;DDLjava/util/Random;)V
    .locals 9

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getData()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v2

    sub-double v3, p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v5, v1, v0

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v7, p1

    add-double/2addr v5, v7

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createDiagonal(IDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    move v0, p0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/RandomMatrices;->createDiagonal(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public static createDiagonal(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    cmpg-double v0, p4, p2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max must be >= the min"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-double v3, p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, v3

    add-double/2addr v5, p2

    invoke-virtual {v1, v0, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static varargs createEigenvaluesSymm(ILjava/util/Random;[D)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    invoke-static {p0, p0, p1}, Lorg/ejml/ops/RandomMatrices;->createOrthogonal(IILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {p2}, Lorg/ejml/ops/CommonOps;->diag([D)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v2, p0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    invoke-static {v2, v0, v1}, Lorg/ejml/ops/CommonOps;->multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v1
.end method

.method public static createInSpan([Lorg/ejml/data/DenseMatrix64F;DDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    array-length v2, p0

    invoke-direct {v1, v2, v4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v3

    invoke-direct {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    sub-double v5, p3, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    invoke-static {v3, v4, v2}, Lorg/ejml/ops/CommonOps;->scale(DLorg/ejml/data/D1Matrix64F;)V

    invoke-static {v1, v2, v1}, Lorg/ejml/ops/CommonOps;->add(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createOrthogonal(IILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 9

    const/4 v2, 0x0

    if-ge p0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows must be more than or equal to the number of columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/ops/RandomMatrices;->createSpan(IILjava/util/Random;)[Lorg/ejml/data/DenseMatrix64F;

    move-result-object v8

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v5, v2

    :goto_0
    if-ge v5, p1, :cond_1

    aget-object v0, v8, v5

    const/4 v7, 0x1

    move v3, v2

    move v4, v2

    move v6, p0

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/mult/SubmatrixOps;->setSubMatrix(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;IIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static createRandom(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static createRandom(IILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static varargs createSingularValues(IILjava/util/Random;[D)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    invoke-static {p0, p0, p2}, Lorg/ejml/ops/RandomMatrices;->createOrthogonal(IILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {p1, p1, p2}, Lorg/ejml/ops/RandomMatrices;->createOrthogonal(IILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    new-instance v3, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v3, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v4, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v5, p3, v0

    invoke-virtual {v3, v0, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {v1, v3, v0}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    invoke-static {v0, v2, v3}, Lorg/ejml/ops/CommonOps;->multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v3
.end method

.method public static createSpan(IILjava/util/Random;)[Lorg/ejml/data/DenseMatrix64F;
    .locals 12

    if-ge p0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of vectors must be less than or equal to the dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v10, p1, [Lorg/ejml/data/DenseMatrix64F;

    const/4 v7, 0x0

    const/4 v1, 0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/RandomMatrices;->createRandom(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    aput-object v0, v10, v7

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lorg/ejml/ops/NormOps;->normalizeF(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x1

    move v9, v0

    :goto_0
    if-ge v9, p1, :cond_5

    new-instance v8, Lorg/ejml/data/DenseMatrix64F;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    :goto_1
    if-ge v7, v9, :cond_4

    if-nez v7, :cond_1

    const/4 v1, 0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/RandomMatrices;->createRandom(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    :cond_1
    invoke-virtual {v8, v0}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    aget-object v3, v10, v7

    invoke-static {v1, v2, v3, v0, v8}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->householder(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    invoke-static {v0, v8, v8}, Lorg/ejml/ops/CommonOps;->add(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v8}, Lorg/ejml/ops/CommonOps;->scale(DLorg/ejml/data/D1Matrix64F;)V

    invoke-static {v8}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed sanity check"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1, v2, v8}, Lorg/ejml/ops/CommonOps;->divide(DLorg/ejml/data/D1Matrix64F;)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    goto :goto_1

    :cond_4
    aput-object v0, v10, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_5
    return-object v10
.end method

.method public static createSymmPosDef(ILjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x1

    invoke-direct {v2, p0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    new-instance v3, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v3, p0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    invoke-virtual {v2, v1, v0, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v2, v3}, Lorg/ejml/ops/CommonOps;->multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_1
    if-ge v0, p0, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->add(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public static createSymmetric(IDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->createSymmetric(Lorg/ejml/data/DenseMatrix64F;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static createSymmetric(Lorg/ejml/data/DenseMatrix64F;DDLjava/util/Random;)V
    .locals 7

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be a square matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-double v2, p3, p1

    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, v2

    add-double/2addr v5, p1

    invoke-virtual {p0, v1, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    invoke-virtual {p0, v0, v1, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createUpperTriangle(IIDDLjava/util/Random;)Lorg/ejml/data/DenseMatrix64F;
    .locals 8

    const/4 v1, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hessenberg must be more than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-double v3, p4, p2

    new-instance v5, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v5, p0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    if-gt v2, p1, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p0, :cond_2

    invoke-virtual {p6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v6, v3

    add-double/2addr v6, p2

    invoke-virtual {v5, v2, v0, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int v0, v2, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public static setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V
    .locals 7

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getData()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v2

    sub-double v3, p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, v3

    add-double/2addr v5, p1

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setRandom(Lorg/ejml/data/DenseMatrix64F;Ljava/util/Random;)V
    .locals 6

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-void
.end method
