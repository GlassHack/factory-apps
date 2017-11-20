.class public Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;
.super Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 12

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->decomposeCommonInit(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->vv:[D

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    if-ge v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->m:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget-wide v2, v2, v3

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->m:I

    if-ge v1, v2, :cond_3

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int v6, v1, v2

    if-ge v1, v0, :cond_1

    move v2, v1

    :goto_3
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_2

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    add-int v9, v6, v3

    aget-wide v8, v8, v9

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    move v2, v0

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    add-int v3, v6, v0

    aget-wide v8, v7, v1

    sub-double v4, v8, v4

    aput-wide v4, v7, v1

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    aget-wide v1, v7, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-int/lit8 v1, v0, 0x1

    move v4, v0

    :goto_5
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->m:I

    if-ge v1, v5, :cond_5

    aget-wide v5, v7, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v8, v5, v2

    if-lez v8, :cond_4

    move-wide v2, v5

    move v4, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    if-eq v4, v0, :cond_7

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int v2, v4, v1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int/2addr v1, v0

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    add-int/2addr v3, v2

    :goto_6
    if-ge v2, v3, :cond_6

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    aget-wide v5, v5, v2

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    aget-wide v9, v9, v1

    aput-wide v9, v8, v2

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    aput-wide v5, v8, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivot:[I

    aget v1, v1, v4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivot:[I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivot:[I

    aget v3, v3, v0

    aput v3, v2, v4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivot:[I

    aput v1, v2, v0

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivsign:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->pivsign:D

    :cond_7
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->indx:[I

    aput v4, v1, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->m:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    :goto_7
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->m:I

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->dataLU:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->n:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    aget-wide v8, v4, v5

    div-double/2addr v8, v2

    aput-wide v8, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method
