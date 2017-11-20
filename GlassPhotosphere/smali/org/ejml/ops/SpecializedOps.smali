.class public Lorg/ejml/ops/SpecializedOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "B must be the same shape as A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v4, :cond_5

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    if-ne v3, v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    add-double/2addr v5, p2

    invoke-virtual {p1, v2, v5, v6}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p1, v2, v5, v6}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static copyChangeRow([ILorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    if-nez p2, :cond_1

    new-instance p2, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {p2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v1, :cond_3

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v0

    aget v2, p0, v0

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v3

    iget-object v3, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v5, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and dst must have the same dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p2
.end method

.method public static copyTriangle(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    if-eqz p2, :cond_3

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v5, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    sub-int/2addr v5, v0

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and dst must have the same dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static createReflector(Lorg/ejml/data/DenseMatrix64F;D)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "u must be a vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    neg-double v1, p1

    invoke-static {v1, v2, p0, p0, v0}, Lorg/ejml/ops/CommonOps;->multAddTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v0
.end method

.method public static createReflector(Lorg/ejml/data/RowD1Matrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    invoke-static {p0}, Lorg/ejml/ops/MatrixFeatures;->isVector(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "u must be a vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/ejml/ops/NormOps;->fastNormF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v0

    div-double v0, v2, v0

    invoke-virtual {p0}, Lorg/ejml/data/RowD1Matrix64F;->getNumElements()I

    move-result v2

    invoke-static {v2}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v0, v1, p0, p0, v2}, Lorg/ejml/ops/CommonOps;->multAddTransB(DLorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v2
.end method

.method public static diagProd(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 6

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0, v0}, Lorg/ejml/data/RowD1Matrix64F;->unsafe_get(II)D

    move-result-wide v4

    mul-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static diffNormF(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 7

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both matrices must have the same shape."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v1

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static diffNormF_fast(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 8

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both matrices must have the same shape."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static diffNormP1(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D
    .locals 8

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both matrices must have the same shape."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v0}, Lorg/ejml/data/D1Matrix64F;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public static elementSumSq(Lorg/ejml/data/D1Matrix64F;)D
    .locals 6

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v4, v4, v0

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static pivotMatrix(Lorg/ejml/data/DenseMatrix64F;[IIZ)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez p0, :cond_0

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p2, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    if-ge v0, p2, :cond_4

    aget v1, p1, v0

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v1, p2, :cond_1

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, p2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v0, p2, :cond_4

    aget v1, p1, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public static qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D
    .locals 8

    const-wide/16 v0, 0x0

    iget v2, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v4

    cmpl-double v2, v4, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0, v0}, Lorg/ejml/data/D1Matrix64F;->unsafe_get(II)D

    move-result-wide v6

    div-double/2addr v6, v4

    mul-double/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static splitIntoVectors(Lorg/ejml/data/RowD1Matrix64F;Z)[Lorg/ejml/data/DenseMatrix64F;
    .locals 19

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move/from16 v17, v1

    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move/from16 v16, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    move v15, v1

    :goto_2
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v17

    new-array v0, v0, [Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v3, v0, :cond_4

    new-instance v7, Lorg/ejml/data/DenseMatrix64F;

    move/from16 v0, v16

    invoke-direct {v7, v0, v15}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    :goto_4
    aput-object v7, v18, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    move/from16 v17, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    move v15, v1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v3

    move v11, v4

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_4

    :cond_4
    return-object v18
.end method

.method public static subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p5, v0

    add-int v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p6, v1, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    add-int v1, p5, v0

    add-int v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lorg/ejml/data/RowD1Matrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p6, v1, v2, v3}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
