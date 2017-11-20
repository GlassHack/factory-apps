.class public Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private N:I

.field private QH:Lorg/ejml/data/DenseMatrix64F;

.field private b:[D

.field private gammas:[D

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->b:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    return-void
.end method

.method private _decompose()Z
    .locals 14

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    iget-object v13, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    add-int/lit8 v0, v0, -0x2

    if-ge v8, v0, :cond_4

    const-wide/16 v1, 0x0

    add-int/lit8 v0, v8, 0x1

    move-wide v9, v1

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v8

    aget-wide v2, v13, v2

    aput-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v3, v1, v9

    if-lez v3, :cond_6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-wide v9, v1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, v9, v0

    if-lez v0, :cond_3

    const-wide/16 v1, 0x0

    add-int/lit8 v0, v8, 0x1

    :goto_3
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    aget-wide v4, v3, v0

    div-double/2addr v4, v9

    aput-wide v4, v3, v0

    mul-double v3, v4, v4

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    add-int/lit8 v3, v8, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    neg-double v0, v0

    move-wide v11, v0

    :goto_4
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    add-int/lit8 v1, v8, 0x1

    aget-wide v0, v0, v1

    add-double v1, v0, v11

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    add-int/lit8 v3, v8, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v3

    add-int/lit8 v0, v8, 0x2

    :goto_5
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v3, :cond_2

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v8

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    aget-wide v5, v4, v0

    div-double/2addr v5, v1

    aput-wide v5, v4, v0

    aput-wide v5, v13, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2
    div-double v2, v1, v11

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    aput-wide v2, v0, v8

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->b:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    const/4 v4, 0x0

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    add-int/lit8 v0, v8, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v8

    neg-double v1, v11

    mul-double/2addr v1, v9

    aput-wide v1, v13, v0

    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v8

    goto :goto_6

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    move-wide v11, v0

    goto :goto_4

    :cond_6
    move-wide v1, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->b:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->b:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->_decompose()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getGammas()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    return-object v0
.end method

.method public getH(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided H must have the same dimensions as the decomposed matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 11

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    aput-wide v9, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    add-int/lit8 v1, v1, -0x2

    move v8, v1

    :goto_2
    if-ltz v8, :cond_5

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    add-int/lit8 v2, v8, 0x1

    aput-wide v9, v1, v2

    add-int/lit8 v1, v8, 0x2

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v1, v8}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_3

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
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->gammas:[D

    aget-wide v2, v2, v8

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->N:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->b:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public getQH()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/HessenbergSimilarDecomposition;->QH:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
