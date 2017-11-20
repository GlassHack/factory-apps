.class public Lorg/ejml/alg/dense/misc/NaiveDeterminant;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leibniz(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 9

    new-instance v6, Lorg/ejml/alg/dense/misc/PermuteArray;

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v6, v0}, Lorg/ejml/alg/dense/misc/PermuteArray;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v6}, Lorg/ejml/alg/dense/misc/PermuteArray;->next()[I

    move-result-object v0

    move-object v3, v0

    move-wide v4, v1

    :goto_0
    if-eqz v3, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v7, :cond_0

    aget v7, v3, v0

    invoke-virtual {p0, v0, v7}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    mul-double/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/ejml/alg/dense/misc/PermuteArray;->sgn()I

    move-result v0

    int-to-double v7, v0

    mul-double v0, v7, v1

    add-double v1, v4, v0

    invoke-virtual {v6}, Lorg/ejml/alg/dense/misc/PermuteArray;->next()[I

    move-result-object v0

    move-object v3, v0

    move-wide v4, v1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public static recursive(Lorg/ejml/data/DenseMatrix64F;)D
    .locals 12

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v0

    invoke-virtual {p0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v5}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v4}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det3(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v4, :cond_0

    new-instance v7, Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    add-int/lit8 v4, v4, -0x1

    iget v6, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v7, v4, v6}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v4, v5

    :goto_2
    iget v6, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v4, v6, :cond_7

    move v6, v1

    :goto_3
    iget v8, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v6, v8, :cond_6

    if-ge v6, v0, :cond_5

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v4, v6}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v9

    invoke-virtual {v7, v8, v6, v9, v10}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-le v6, v0, :cond_4

    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v4, v6}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_8

    invoke-virtual {p0, v1, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v8

    invoke-static {v7}, Lorg/ejml/alg/dense/misc/NaiveDeterminant;->recursive(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v1, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v8

    invoke-static {v7}, Lorg/ejml/alg/dense/misc/NaiveDeterminant;->recursive(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    goto :goto_5
.end method
