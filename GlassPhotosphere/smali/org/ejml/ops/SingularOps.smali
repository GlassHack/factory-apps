.class public Lorg/ejml/ops/SingularOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSvdMatrixSize(Lorg/ejml/data/DenseMatrix64F;ZLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Z)V
    .locals 3

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix U"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix U"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_8

    if-eqz p4, :cond_3

    iget v0, p3, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix V"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p4, :cond_8

    iget v0, p3, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix V"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p0, :cond_5

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix U"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz p3, :cond_6

    iget v0, p3, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p3, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of matrix V"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz p0, :cond_7

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of W"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz p3, :cond_8

    iget v0, p3, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected size of W"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public static descendingOrder(Lorg/ejml/data/DenseMatrix64F;ZLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Z)V
    .locals 10

    const/4 v7, -0x1

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/ops/SingularOps;->checkSvdMatrixSize(Lorg/ejml/data/DenseMatrix64F;ZLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Z)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move v1, v6

    move v0, v7

    :goto_1
    if-ge v1, v8, :cond_0

    invoke-virtual {p2, v1, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    cmpl-double v9, v2, v4

    if-lez v9, :cond_6

    move v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-wide v4, v2

    goto :goto_1

    :cond_0
    if-ne v0, v6, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2, v6, v6}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    invoke-virtual {p2, v6, v6, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    invoke-virtual {p2, v0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    if-eqz p3, :cond_5

    invoke-static {p3, p4, v6, v0}, Lorg/ejml/ops/SingularOps;->swapRowOrCol(Lorg/ejml/data/DenseMatrix64F;ZII)V

    :cond_5
    if-eqz p0, :cond_1

    invoke-static {p0, p1, v6, v0}, Lorg/ejml/ops/SingularOps;->swapRowOrCol(Lorg/ejml/data/DenseMatrix64F;ZII)V

    goto :goto_3

    :cond_6
    move-wide v2, v4

    goto :goto_2
.end method

.method public static descendingOrder(Lorg/ejml/data/DenseMatrix64F;Z[DILorg/ejml/data/DenseMatrix64F;Z)V
    .locals 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p3, :cond_3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move v1, v6

    move v0, v7

    :goto_1
    if-ge v1, p3, :cond_0

    aget-wide v2, p2, v1

    cmpl-double v8, v2, v4

    if-lez v8, :cond_6

    move v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-wide v4, v2

    goto :goto_1

    :cond_0
    if-ne v0, v6, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_4

    :cond_3
    return-void

    :cond_4
    aget-wide v1, p2, v6

    aput-wide v4, p2, v6

    aput-wide v1, p2, v0

    if-eqz p4, :cond_5

    invoke-static {p4, p5, v6, v0}, Lorg/ejml/ops/SingularOps;->swapRowOrCol(Lorg/ejml/data/DenseMatrix64F;ZII)V

    :cond_5
    if-eqz p0, :cond_1

    invoke-static {p0, p1, v6, v0}, Lorg/ejml/ops/SingularOps;->swapRowOrCol(Lorg/ejml/data/DenseMatrix64F;ZII)V

    goto :goto_3

    :cond_6
    move-wide v2, v4

    goto :goto_2
.end method

.method public static nullSpace(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;",
            "Lorg/ejml/data/DenseMatrix64F;",
            ")",
            "Lorg/ejml/data/DenseMatrix64F;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->numberOfSingularValues()I

    move-result v7

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v8

    invoke-interface {p0, v1}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getV(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->numCols()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compute the null space using a compact SVD for a matrix of this size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_3

    new-instance v6, Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->numCols()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v6, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, -0x1

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_2

    aget-wide v9, v8, v3

    cmpg-double v9, v9, v4

    if-gez v9, :cond_1

    aget-wide v4, v8, v3

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    return-object v6

    :cond_3
    move-object v6, p1

    goto :goto_0
.end method

.method public static nullity(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v2

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->numberOfSingularValues()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static rank(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v2

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->numberOfSingularValues()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    cmpl-double v4, v4, p1

    if-lez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static swapRowOrCol(Lorg/ejml/data/DenseMatrix64F;ZII)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    invoke-virtual {p0, p3, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, p2, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    invoke-virtual {p0, p3, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    invoke-virtual {p0, v0, p3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v0, p2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    invoke-virtual {p0, v0, p3, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
