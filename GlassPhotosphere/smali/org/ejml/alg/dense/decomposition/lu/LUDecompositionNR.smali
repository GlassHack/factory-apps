.class public Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;
.super Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;


# static fields
.field private static final TINY:D = 1.0E-40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 17

    invoke-virtual/range {p0 .. p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->decomposeCommonInit(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->m:I

    if-ge v1, v2, :cond_3

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    if-ge v2, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    cmpl-double v2, v3, v5

    if-nez v2, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->vv:[D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    if-ge v1, v2, :cond_d

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    move v5, v4

    move-wide v15, v2

    move-wide v3, v15

    move v2, v1

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->m:I

    if-ge v2, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->vv:[D

    aget-wide v6, v6, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    neg-double v6, v6

    :cond_4
    cmpl-double v8, v6, v3

    if-lez v8, :cond_5

    move-wide v3, v6

    move v5, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-gez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->indx:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    if-eq v1, v5, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int v3, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    add-int/2addr v4, v2

    :goto_4
    if-ge v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    aget-wide v6, v6, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    aget-wide v9, v9, v2

    aput-wide v9, v8, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    aput-wide v6, v8, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivsign:D

    neg-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivsign:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->vv:[D

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->vv:[D

    aget-wide v3, v3, v1

    aput-wide v3, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivot:[I

    aget v2, v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivot:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivot:[I

    aget v4, v4, v1

    aput v4, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->pivot:[I

    aput v2, v3, v1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->indx:[I

    aput v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    const-wide v4, 0x37a16c262777579cL    # 1.0E-40

    aput-wide v4, v2, v3

    const-wide v2, 0x37a16c262777579cL    # 1.0E-40

    :cond_b
    add-int/lit8 v4, v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->m:I

    if-ge v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    add-int v7, v6, v1

    aget-wide v8, v5, v7

    div-double/2addr v8, v2

    aput-wide v8, v5, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->n:I

    add-int/2addr v7, v6

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v6, v10

    :goto_6
    if-ge v6, v7, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    aget-wide v11, v10, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->dataLU:[D

    aget-wide v13, v13, v5

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    aput-wide v11, v10, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionNR;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method
