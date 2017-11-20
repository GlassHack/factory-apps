.class public Lorg/ejml/alg/dense/linsol/gj/GaussJordan;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field private indexCol:[I

.field private indexRow:[I

.field private ipiv:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexRow:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexCol:[I

    return-void
.end method

.method public static checkArgumentSquare(Lorg/ejml/data/RowD1Matrix64F;Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be a square matrix."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static swapRow(Lorg/ejml/data/RowD1Matrix64F;III)V
    .locals 7

    mul-int v1, p2, p1

    mul-int v0, p3, p1

    add-int v2, v1, p1

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v3

    invoke-virtual {p0, v1}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p0, v0, v5, v6}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    invoke-virtual {p0, v1, v3, v4}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static unscramble(ILorg/ejml/data/RowD1Matrix64F;[I[I)V
    .locals 8

    add-int/lit8 v0, p0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    aget v0, p2, v1

    aget v2, p3, v1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_0

    mul-int v2, v0, p0

    aget v3, p2, v1

    add-int/2addr v3, v2

    aget v4, p3, v1

    add-int/2addr v2, v4

    invoke-virtual {p1, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    invoke-virtual {p1, v2, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    const-string v0, "A"

    invoke-static {p1, v0}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->checkArgumentSquare(Lorg/ejml/data/RowD1Matrix64F;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    :cond_0
    iget v9, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_c

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_4

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v1, v1, v3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v4, v4, v1

    if-nez v4, :cond_d

    invoke-virtual {p1, v3, v1}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_2

    neg-double v4, v4

    :cond_2
    cmpl-double v10, v4, v6

    if-lez v10, :cond_d

    move v0, v1

    move v2, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-wide v6, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    if-eq v2, v0, :cond_6

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {p1, v1, v2, v0}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->swapRow(Lorg/ejml/data/RowD1Matrix64F;III)V

    :cond_6
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexRow:[I

    aput v2, v1, v8

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexCol:[I

    aput v0, v1, v8

    invoke-virtual {p1, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_7

    new-instance v0, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;-><init>()V

    throw v0

    :cond_7
    mul-int v1, v0, v9

    add-int/2addr v1, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_8

    mul-int v4, v0, v9

    add-int/2addr v4, v1

    invoke-virtual {p1, v4, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->div(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v9, :cond_b

    if-ne v0, v2, :cond_a

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_a
    invoke-virtual {p1, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    mul-int v1, v2, v9

    add-int/2addr v1, v0

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v1, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v9, :cond_9

    mul-int v5, v2, v9

    add-int/2addr v5, v1

    mul-int v6, v0, v9

    add-int/2addr v6, v1

    invoke-virtual {p1, v6}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v3

    invoke-virtual {p1, v5, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexRow:[I

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexCol:[I

    invoke-static {v9, p1, v0, v1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->unscramble(ILorg/ejml/data/RowD1Matrix64F;[I[I)V

    return-void

    :cond_d
    move-wide v4, v6

    goto/16 :goto_4
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->invert(Lorg/ejml/data/DenseMatrix64F;)V

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

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "A"

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->checkArgumentSquare(Lorg/ejml/data/RowD1Matrix64F;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumRows()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimensions of A and B are not compatible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v9, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_d

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_4

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v1, v1, v3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v4, v4, v1

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v4, v3, v1}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_2

    neg-double v4, v4

    :cond_2
    cmpl-double v10, v4, v6

    if-lez v10, :cond_e

    move v0, v1

    move v2, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-wide v6, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->ipiv:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    if-eq v2, v0, :cond_5

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v3, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v1, v3, v2, v0}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->swapRow(Lorg/ejml/data/RowD1Matrix64F;III)V

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {p2, v1, v2, v0}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->swapRow(Lorg/ejml/data/RowD1Matrix64F;III)V

    :cond_5
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexRow:[I

    aput v2, v1, v8

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexCol:[I

    aput v0, v1, v8

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Singular Matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v2, v3, v1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v0, v0, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_7

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v5, v0, v9

    add-int/2addr v5, v1

    invoke-virtual {v4, v5, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->times(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget v4, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v1, v4, :cond_8

    iget v4, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {p2, v4, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->times(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v9, :cond_c

    if-ne v0, v2, :cond_a

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_a
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v5, v2, v9

    add-int/2addr v5, v0

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_b

    iget-object v5, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v6, v2, v9

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    mul-int v10, v0, v9

    add-int/2addr v10, v1

    invoke-virtual {v7, v10}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v10

    mul-double/2addr v10, v3

    invoke-virtual {v5, v6, v10, v11}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_9
    iget v5, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v1, v5, :cond_9

    iget v5, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    iget v6, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    invoke-virtual {p2, v6}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v6

    mul-double/2addr v6, v3

    invoke-virtual {p2, v5, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->minus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexRow:[I

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->indexCol:[I

    invoke-static {v9, v0, v1, v2}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->unscramble(ILorg/ejml/data/RowD1Matrix64F;[I[I)V

    return-void

    :cond_e
    move-wide v4, v6

    goto/16 :goto_4
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/gj/GaussJordan;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
