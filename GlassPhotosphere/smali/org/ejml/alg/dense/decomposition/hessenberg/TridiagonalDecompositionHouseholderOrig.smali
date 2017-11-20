.class public Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;
.super Ljava/lang/Object;


# instance fields
.field N:I

.field QT:Lorg/ejml/data/DenseMatrix64F;

.field b:[D

.field gammas:[D

.field w:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->b:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    return-void
.end method

.method private similarTransform(I)V
    .locals 12

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int v8, v0, v1

    move v0, p1

    move-wide v1, v3

    :goto_0
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v5, :cond_1

    add-int v5, v8, v0

    aget-wide v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v9, v5, v1

    if-lez v9, :cond_0

    move-wide v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, v1, v3

    if-lez v0, :cond_4

    move v0, p1

    move-wide v5, v3

    :goto_1
    iget v9, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v9, :cond_2

    add-int v9, v8, v0

    aget-wide v10, v7, v9

    div-double/2addr v10, v1

    aput-wide v10, v7, v9

    mul-double v9, v10, v10

    add-double/2addr v5, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-int v0, v8, p1

    aget-wide v9, v7, v0

    cmpg-double v0, v9, v3

    if-gez v0, :cond_5

    neg-double v3, v5

    :goto_2
    add-int v0, v8, p1

    aget-wide v5, v7, v0

    add-double/2addr v5, v3

    add-int v0, v8, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v7, v0

    add-int/lit8 v0, p1, 0x1

    :goto_3
    iget v9, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v9, :cond_3

    add-int v9, v8, v0

    aget-wide v10, v7, v9

    div-double/2addr v10, v5

    aput-wide v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    div-double/2addr v5, v3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    aput-wide v5, v0, p1

    invoke-virtual {p0, p1, v5, v6}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->householderSymmetric(ID)V

    add-int v0, v8, p1

    neg-double v3, v3

    mul-double/2addr v1, v3

    aput-wide v1, v7, v0

    :goto_4
    return-void

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    aput-wide v3, v0, p1

    goto :goto_4

    :cond_5
    move-wide v3, v5

    goto :goto_2
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->init(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->similarTransform(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGamma(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 11

    const/4 v1, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    aput-wide v9, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided H must have the same dimensions as the decomposed matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    move-object v0, p1

    goto :goto_1

    :cond_4
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v1, v1, -0x2

    move v8, v1

    :goto_2
    if-ltz v8, :cond_6

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    add-int/lit8 v2, v8, 0x1

    aput-wide v9, v1, v2

    add-int/lit8 v1, v8, 0x2

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v8, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    add-int/lit8 v3, v8, 0x1

    aget-wide v2, v2, v3

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->b:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public getQT()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v2, v2, v4

    aput-wide v2, v1, v4

    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    invoke-virtual {p1, v0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided H must have the same dimensions as the decomposed matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public householderSymmetric(ID)V
    .locals 20

    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int v6, v2, v3

    move/from16 v2, p1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move-wide/from16 v18, v3

    move-wide/from16 v4, v18

    move/from16 v3, p1

    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v3, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v8, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v6, v3

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    move-wide/from16 v0, p2

    neg-double v7, v0

    mul-double/2addr v4, v7

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v3, v18

    move/from16 v2, p1

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v7, v6, v2

    aget-wide v7, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    aget-wide v9, v5, v2

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    mul-double v7, v7, p2

    mul-double/2addr v3, v7

    move/from16 v2, p1

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v2, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    aget-wide v7, v5, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v6, v2

    aget-wide v9, v9, v10

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    aput-wide v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    aget-wide v3, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v5, v6, p1

    aget-wide v7, v2, v5

    move/from16 v2, p1

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int/2addr v9, v2

    add-int v9, v9, p1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v10, v10, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v11, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    mul-int v11, v11, p1

    add-int/2addr v11, v2

    aget-wide v12, v10, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v14, v14, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v15, v6, v2

    aget-wide v14, v14, v15

    mul-double/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    mul-double v16, v16, v7

    add-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    aput-wide v12, v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public init(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->w:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->gammas:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->b:[D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholderOrig;->QT:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    return-void
.end method
