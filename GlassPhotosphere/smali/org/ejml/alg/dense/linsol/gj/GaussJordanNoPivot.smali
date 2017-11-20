.class public Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const-string v0, "A"

    invoke-static {p1, v0}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->checkArgumentSquare(Lorg/ejml/data/RowD1Matrix64F;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    :cond_0
    iget v4, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    cmpl-double v0, v5, v10

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This algorithm only works if all the diagonal elements are not zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    mul-int v0, v3, v4

    add-int/2addr v0, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v7, v8}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    mul-int v2, v3, v4

    add-int/2addr v2, v0

    invoke-virtual {p1, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_5

    if-ne v3, v2, :cond_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    mul-int v0, v2, v4

    add-int/2addr v0, v3

    invoke-virtual {p1, v0, v10, v11}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_3

    mul-int v7, v2, v4

    add-int/2addr v7, v0

    mul-int v8, v3, v4

    add-int/2addr v8, v0

    invoke-virtual {p1, v8}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v8

    mul-double/2addr v8, v5

    invoke-virtual {p1, v7, v8, v9}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported by this solver."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v2, "A"

    invoke-static {v0, v2}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->checkArgumentSquare(Lorg/ejml/data/RowD1Matrix64F;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumRows()I

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimensions of A and B are not compatible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v4, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_8

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    cmpl-double v0, v5, v11

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This algorithm only works if all the diagonal elements are not zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v2, v3, v4

    add-int/2addr v2, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v7, v8}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v7, v3, v4

    add-int/2addr v7, v0

    invoke-virtual {v2, v7, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v2, :cond_3

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p2, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->div(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_7

    if-ne v3, v2, :cond_5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v7, v2, v4

    add-int/2addr v7, v3

    invoke-virtual {v0, v7, v11, v12}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_6

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v8, v2, v4

    add-int/2addr v8, v0

    iget-object v9, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v9, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v9

    mul-double/2addr v9, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_5
    iget v7, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v7, :cond_4

    iget v7, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v0

    iget v8, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v0

    invoke-virtual {p2, v8}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v8

    mul-double/2addr v8, v5

    invoke-virtual {p2, v7, v8, v9}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/gj/GaussJordanNoPivot;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
