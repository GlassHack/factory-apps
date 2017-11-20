.class public Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;
.super Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected decomposeLower()Z
    .locals 13

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v0, v3, :cond_4

    move v3, v0

    :goto_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    aget-wide v6, v4, v5

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int v5, v0, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v4, v3

    add-int v8, v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    aget-wide v9, v9, v5

    iget-object v11, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    aget-wide v11, v11, v4

    mul-double/2addr v9, v11

    sub-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_2

    const-wide/16 v1, 0x0

    cmpg-double v1, v6, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v0

    aput-wide v1, v4, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v1

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v0

    mul-double/2addr v6, v1

    aput-wide v6, v4, v5

    move-wide v4, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    :goto_6
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected decomposeUpper()Z
    .locals 11

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v0, v3, :cond_4

    move v3, v0

    :goto_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    aget-wide v5, v4, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_0

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v8, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v0

    aget-wide v7, v7, v8

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v3

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_2

    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v0

    aput-wide v1, v4, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v1

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v3

    mul-double/2addr v5, v1

    aput-wide v5, v4, v7

    move-wide v4, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    if-ge v0, v1, :cond_6

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->t:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method
