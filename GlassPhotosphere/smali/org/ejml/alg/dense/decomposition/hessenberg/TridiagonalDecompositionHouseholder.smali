.class public Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QT:Lorg/ejml/data/DenseMatrix64F;

.field private b:[D

.field private gammas:[D

.field private w:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->b:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    return-void
.end method

.method private similarTransform(I)V
    .locals 12

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int v3, v0, v1

    move v0, p1

    move-wide v4, v6

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v0, v1, :cond_1

    add-int v1, v3, v0

    aget-wide v8, v2, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v1, v8, v4

    if-lez v1, :cond_0

    move-wide v4, v8

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DID)D

    move-result-wide v0

    add-int v6, v3, p1

    aget-wide v6, v2, v6

    add-double v10, v6, v0

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    move-object v8, v2

    move v9, v3

    invoke-static/range {v6 .. v11}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements(II[DID)V

    add-int v6, v3, p1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v2, v6

    div-double v6, v10, v0

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    aput-wide v6, v8, p1

    invoke-virtual {p0, p1, v6, v7}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->householderSymmetric(ID)V

    add-int/2addr v3, p1

    neg-double v0, v0

    mul-double/2addr v0, v4

    aput-wide v0, v2, v3

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    aput-wide v6, v0, p1

    goto :goto_1
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->init(Lorg/ejml/data/DenseMatrix64F;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->similarTransform(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getDiagonal([D[D)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    aget-wide v1, v1, v2

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-wide v1, v1, v2

    aput-wide v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 11

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided H must have the same dimensions as the decomposed matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    move-object v0, p1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v1, v1, -0x2

    move v7, v1

    :goto_2
    if-ltz v7, :cond_7

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    add-int/lit8 v2, v7, 0x1

    aput-wide v9, v1, v2

    add-int/lit8 v1, v7, 0x2

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v1

    aget-wide v3, v3, v4

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    add-int/lit8 v3, v7, 0x1

    aget-wide v2, v2, v3

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v5, v7, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    add-int/lit8 v1, v7, -0x1

    move v7, v1

    goto :goto_2

    :cond_5
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v1, v1, -0x2

    move v8, v1

    :goto_4
    if-ltz v8, :cond_7

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    add-int/lit8 v2, v8, 0x1

    aput-wide v9, v1, v2

    add-int/lit8 v1, v8, 0x2

    :goto_5
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v8, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    add-int/lit8 v3, v8, 0x1

    aget-wide v2, v2, v3

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->b:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getQT()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v2, v2, v4

    aput-wide v2, v0, v4

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v0, v4, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided H must have the same dimensions as the decomposed matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-le v0, v1, :cond_4

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    :cond_4
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public householderSymmetric(ID)V
    .locals 19

    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int v8, v2, v3

    move/from16 v2, p1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v2, v3, :cond_2

    const-wide/16 v3, 0x0

    move/from16 v5, p1

    :goto_1
    if-ge v5, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v8, v5

    aget-wide v9, v9, v10

    mul-double/2addr v6, v9

    add-double/2addr v6, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-wide v3, v6

    goto :goto_1

    :cond_0
    move-wide/from16 v17, v3

    move-wide/from16 v4, v17

    move v3, v2

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v3, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v8, v3

    aget-wide v9, v9, v10

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    move-wide/from16 v0, p2

    neg-double v6, v0

    mul-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    move-wide/from16 v17, v2

    move-wide/from16 v3, v17

    move/from16 v2, p1

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v6, v8, v2

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    aget-wide v9, v7, v2

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double v5, v5, p2

    mul-double/2addr v3, v5

    move/from16 v2, p1

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v2, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    aget-wide v6, v5, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v8, v2

    aget-wide v9, v9, v10

    mul-double/2addr v9, v3

    add-double/2addr v6, v9

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    aget-wide v3, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v5, v8, p1

    aget-wide v5, v2, v5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    mul-int v7, p1, v2

    move/from16 v2, p1

    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v2, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v10, v7, v2

    aget-wide v11, v9, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    iget-object v13, v13, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int v14, v8, v2

    aget-wide v13, v13, v14

    mul-double/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    aget-wide v15, v15, v2

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public init(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->w:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->gammas:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->b:[D

    :cond_1
    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;->QT:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
