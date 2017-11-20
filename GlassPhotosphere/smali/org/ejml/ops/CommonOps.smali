.class public Lorg/ejml/ops/CommonOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/D1Matrix64F;DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p5, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p5, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p6, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p6, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrices are not all the same dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p5, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static add(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p4, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrices are not all the same dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p4, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static add(Lorg/ejml/data/D1Matrix64F;D)V
    .locals 2

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add(Lorg/ejml/data/D1Matrix64F;DLorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimensions of a and c do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    add-double/2addr v2, p1

    invoke-virtual {p3, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static add(Lorg/ejml/data/D1Matrix64F;DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p4, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrices are not all the same dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p3, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {p4, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static add(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrices are not all the same dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/D1Matrix64F;DLorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->plus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static changeSign(Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static columnsToVector(Lorg/ejml/data/DenseMatrix64F;[Lorg/ejml/data/DenseMatrix64F;)[Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    new-array p1, v0, [Lorg/ejml/data/DenseMatrix64F;

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v2, p1, v0

    if-nez v2, :cond_2

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v2, v3, v6}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    aput-object v2, p1, v0

    :goto_1
    aget-object v3, p1, v0

    move v2, v1

    :goto_2
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    aget-object v2, p1, v0

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v2, v3, v6, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static det(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 2

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumCols()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumRows()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;-><init>()V

    invoke-virtual {v0, p0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->computeDeterminant()D

    move-result-wide v0

    goto :goto_0
.end method

.method public static varargs diag(Lorg/ejml/data/DenseMatrix64F;I[D)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    aget-wide v1, p2, v0

    invoke-virtual {p0, v0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static varargs diag([D)Lorg/ejml/data/DenseMatrix64F;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Lorg/ejml/ops/CommonOps;->diag(Lorg/ejml/data/DenseMatrix64F;I[D)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public static varargs diagR(II[D)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v3, p2, v0

    invoke-virtual {v1, v0, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static divide(DLorg/ejml/data/D1Matrix64F;)V
    .locals 2

    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0, p0, p1}, Lorg/ejml/data/D1Matrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divide(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrices must have the same shape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    div-double/2addr v2, p0

    invoke-virtual {p3, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatable dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static elementMax(Lorg/ejml/data/D1Matrix64F;)D
    .locals 7

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D
    .locals 7

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static elementMin(Lorg/ejml/data/D1Matrix64F;)D
    .locals 7

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static elementMinAbs(Lorg/ejml/data/D1Matrix64F;)D
    .locals 7

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v5

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static elementMult(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatable dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->times(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static elementMult(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatible dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static elementSum(Lorg/ejml/data/D1Matrix64F;)D
    .locals 6

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static elementSumAbs(Lorg/ejml/data/D1Matrix64F;)D
    .locals 6

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static extract(Lorg/ejml/data/DenseMatrix64F;IIII)Lorg/ejml/data/DenseMatrix64F;
    .locals 8

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcY1 <= srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p4, p3, :cond_2

    if-ltz p3, :cond_2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-le p4, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcX1 <= srcX0 || srcX0 < 0 || srcX1 > src.numCols"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int v7, p4, p3

    sub-int v6, p2, p1

    new-instance v3, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v3, v6, v7}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v5, v4

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/misc/ImplCommonOps_DenseMatrix64F;->extract(Lorg/ejml/data/DenseMatrix64F;IILorg/ejml/data/DenseMatrix64F;IIII)V

    return-object v3
.end method

.method public static extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V
    .locals 8

    if-lt p2, p1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcY1 < srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p4, p3, :cond_2

    if-ltz p3, :cond_2

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-le p4, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcX1 < srcX0 || srcX0 < 0 || srcX1 > src.numCols"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int v7, p4, p3

    sub-int v6, p2, p1

    add-int v0, p6, v6

    iget v1, p5, Lorg/ejml/data/Matrix64F;->numRows:I

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dst is too small in rows"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int v0, p7, v7

    iget v1, p5, Lorg/ejml/data/Matrix64F;->numCols:I

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dst is too small in columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    instance-of v0, p0, Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_6

    instance-of v0, p5, Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    move-object v3, p5

    check-cast v3, Lorg/ejml/data/DenseMatrix64F;

    move v1, p1

    move v2, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/misc/ImplCommonOps_DenseMatrix64F;->extract(Lorg/ejml/data/DenseMatrix64F;IILorg/ejml/data/DenseMatrix64F;IIII)V

    :goto_0
    return-void

    :cond_6
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/misc/ImplCommonOps_Matrix64F;->extract(Lorg/ejml/data/Matrix64F;IILorg/ejml/data/Matrix64F;IIII)V

    goto :goto_0
.end method

.method public static extractDiag(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a vector for dst."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elements in dst."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static identity(I)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static identity(II)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    if-ge p0, p1, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static insert(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;II)V
    .locals 8

    const/4 v1, 0x0

    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v4, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    move-object v0, p0

    move v3, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V

    return-void
.end method

.method public static invert(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x5

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

    invoke-static {p0, p0}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;

    invoke-direct {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;-><init>()V

    new-instance v2, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;

    invoke-direct {v2, v1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    invoke-virtual {v2, p0}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, p0}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    goto :goto_0
.end method

.method public static invert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_3

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-static {p0, p1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;

    invoke-direct {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;-><init>()V

    new-instance v2, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;

    invoke-direct {v2, v1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    invoke-virtual {v2, p0}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    goto :goto_0
.end method

.method public static kron(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 11

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    mul-int/2addr v2, v3

    iget v3, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v3, v0, :cond_0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "C does not have the expected dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_5

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    move v3, v1

    :goto_2
    iget v4, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v3, v4, :cond_3

    move v4, v1

    :goto_3
    iget v7, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v4, v7, :cond_2

    invoke-virtual {p1, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    mul-double/2addr v7, v5

    iget v9, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    mul-int/2addr v9, v0

    add-int/2addr v9, v3

    iget v10, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v4

    invoke-virtual {p2, v9, v10, v7, v8}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static mult(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->mult_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->mult_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->mult_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->mult_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAdd(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAdd_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAdd_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAdd(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multAdd(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAdd_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAdd_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAddTransA(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_0

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransA_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransA_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAddTransA(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multAddTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multAddTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_3

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAddTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 6

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransAB_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAddTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multAddTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multAddTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransAB_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multAddTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multAddTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method

.method public static multInner(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows and columns of \'c\' must be the same as the columns in \'a\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_INNER_SWITCH:I

    if-lt v0, v1, :cond_2

    invoke-static {p0, p1}, Lorg/ejml/alg/dense/mult/MatrixMultProduct;->inner_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p0, p1}, Lorg/ejml/alg/dense/mult/MatrixMultProduct;->inner_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multOuter(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows and columns of \'c\' must be the same as the rows in \'a\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/alg/dense/mult/MatrixMultProduct;->outer(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_0

    iget v0, p3, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransA_reorder(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransA_small(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multTransA(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_3

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 6

    iget v0, p2, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransAB_aux(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransAB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multTransA_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->multTransA_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransAB_aux(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;[D)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransAB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static multTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixVectorMult;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/alg/dense/mult/MatrixMatrixMult;->multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static pinv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->pseudoInverse(Z)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->copy()Lorg/ejml/data/DenseMatrix64F;

    move-result-object p0

    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invert failed, maybe a bug?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolver;->invert(Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public static rowsToVector(Lorg/ejml/data/DenseMatrix64F;[Lorg/ejml/data/DenseMatrix64F;)[Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    new-array p1, v0, [Lorg/ejml/data/DenseMatrix64F;

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v2, p1, v0

    if-nez v2, :cond_2

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v2, v3, v6}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    aput-object v2, p1, v0

    :goto_1
    aget-object v3, p1, v0

    move v2, v1

    :goto_2
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    aget-object v2, p1, v0

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v2, v3, v6, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static scale(DLorg/ejml/data/D1Matrix64F;)V
    .locals 2

    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0, p0, p1}, Lorg/ejml/data/D1Matrix64F;->times(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scale(DLorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrices must have the same shape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static set(Lorg/ejml/data/D1Matrix64F;D)V
    .locals 2

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/RowD1Matrix64F;->getNumElements()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v2, v3, v4}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->general(II)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    new-instance v1, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/alg/dense/linsol/LinearSolverSafe;-><init>(Lorg/ejml/alg/dense/linsol/LinearSolver;)V

    invoke-interface {v1, p0}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1, p1, p2}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sub(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 6

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatable dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static subEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'a\' and \'b\' matrices do not have compatable dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/ejml/data/D1Matrix64F;->minus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static sumCols(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 9

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    const/4 v0, 0x1

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v1, :cond_3

    const-wide/16 v1, 0x0

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    mul-int/2addr v3, v4

    add-int v4, v0, v3

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v5, v5, v1

    add-double/2addr v2, v5

    iget v5, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output does not have enough elements to store the results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static sumRows(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v1, :cond_3

    const-wide/16 v2, 0x0

    add-int/lit8 v1, v0, 0x1

    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v4, v1

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v5, v5, v1

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output does not have enough elements to store the results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static trace(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v1, 0x0

    move-wide v6, v1

    move-wide v2, v6

    move v1, v0

    :goto_0
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v1}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 2

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_3

    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-static {p0, p1, v0}, Lorg/ejml/alg/dense/misc/TransposeAlgs;->block(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;I)V

    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible matrix dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p0, p1}, Lorg/ejml/alg/dense/misc/TransposeAlgs;->standard(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public static transpose(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 3

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/TransposeAlgs;->square(Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p0, v0}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, v0}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    goto :goto_0
.end method
