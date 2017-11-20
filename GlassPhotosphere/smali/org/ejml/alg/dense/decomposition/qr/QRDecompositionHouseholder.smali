.class public Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/DenseMatrix64F;

.field protected dataQR:[D

.field protected error:Z

.field protected gamma:D

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:D

.field protected u:[D

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected commonSetup(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->setExpectedMaxSize(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->commonSetup(Lorg/ejml/data/DenseMatrix64F;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->householder(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->updateA(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->error:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getGammas()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 8

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->identity(II)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_8

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v4

    add-int/lit8 v1, v4, 0x1

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v1, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    move-object v0, p1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-eq v0, v1, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    move-object v0, p1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    aget-wide v2, v2, v4

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    move v5, v4

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getQR()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    if-ge v1, v0, :cond_9

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    if-eq v0, v2, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-eq v0, v2, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    :goto_2
    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_0

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_7

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method protected householder(I)V
    .locals 9

    const-wide/16 v3, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p1

    move-wide v1, v3

    move v5, v0

    move v0, p1

    :goto_0
    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v6, :cond_2

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    aget-wide v6, v6, v5

    aput-wide v6, v8, v0

    cmpg-double v8, v6, v3

    if-gez v8, :cond_0

    neg-double v6, v6

    :cond_0
    cmpg-double v8, v1, v6

    if-gez v8, :cond_1

    move-wide v1, v6

    :cond_1
    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v1, v3

    if-nez v0, :cond_3

    iput-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gamma:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->error:Z

    :goto_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gamma:D

    aput-wide v1, v0, p1

    return-void

    :cond_3
    iput-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    move v0, p1

    :goto_2
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v6, v5, v0

    div-double/2addr v6, v1

    aput-wide v6, v5, v0

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v5, v5, v0

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    mul-double/2addr v5, v5

    add-double/2addr v5, v7

    iput-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v5, v0, p1

    cmpg-double v0, v5, v3

    if-gez v0, :cond_5

    iget-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    :cond_5
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v3, v0, p1

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    div-double v5, v3, v5

    iput-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gamma:D

    add-int/lit8 v0, p1, 0x1

    :goto_3
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v6, v5, v0

    div-double/2addr v6, v3

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v0, p1

    iget-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    mul-double v0, v3, v1

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    goto :goto_1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->error:Z

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    if-nez v1, :cond_2

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p1, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->minLength:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gammas:[D

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, p1, p2, v2}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0
.end method

.method protected updateA(I)V
    .locals 11

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v2, v2, p1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, p1, 0x1

    :goto_2
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    aget-wide v5, v4, v1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v7, v3, v0

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    :goto_3
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    aget-wide v2, v1, v0

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->gamma:D

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_4
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v4, v1, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, p1, 0x1

    :goto_5
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge v1, v3, :cond_4

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v7, v6, v2

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->v:[D

    aget-wide v9, v9, v1

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p1

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->tau:D

    neg-double v2, v2

    aput-wide v2, v0, v1

    :cond_6
    add-int/lit8 v0, p1, 0x1

    :goto_6
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numRows:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->dataQR:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->u:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method
