.class public Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;
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

.field protected error:Z

.field protected gamma:D

.field protected gammas:[D

.field protected minLength:I

.field protected numCols:I

.field protected numRows:I

.field protected tau:D

.field protected v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A must have at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v0, v6

    add-int v9, v0, v6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v10, v0, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int v2, v6, v0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    aget-wide v3, v0, v6

    const/4 v5, 0x0

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DIDIII[D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aput-wide v10, v0, v9

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public applyTranQ(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    if-ge v6, v0, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v0, v6

    add-int v9, v0, v6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v10, v0, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int v2, v6, v0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    aget-wide v3, v0, v6

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DIDIII[D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aput-wide v10, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->setExpectedMaxSize(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, v0}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    iput-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->error:Z

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->householder(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->updateA(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->error:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getGammas()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 12

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->identity(II)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-ltz v5, :cond_7

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v1, v5

    add-int v9, v1, v5

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v10, v1, v9

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v9

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v2, v5

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    aget-wide v3, v3, v5

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    move v6, v5

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DIDIII[D)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aput-wide v10, v1, v9

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

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

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

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
    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getQR()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    :goto_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v1, v0, :cond_9

    move v0, v1

    :goto_1
    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    if-eq v0, v2, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

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

    invoke-virtual {p1, v0, v2, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method protected householder(I)V
    .locals 8

    const-wide/16 v5, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v0, p1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    add-int/2addr v1, v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    sub-int/2addr v3, p1

    invoke-static {v2, v0, v3}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->findMax([DII)D

    move-result-wide v2

    cmpl-double v4, v2, v5

    if-nez v4, :cond_0

    iput-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gamma:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->error:Z

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gamma:D

    aput-wide v1, v0, p1

    return-void

    :cond_0
    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v0, v1, v4, v2, v3}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v4, v4, v0

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    add-double/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v6, v1, v7, v4, v5}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements(II[DD)V

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gamma:D

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    mul-double v1, v4, v2

    iput-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->tau:D

    neg-double v2, v2

    aput-wide v2, v1, v0

    goto :goto_0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    if-nez v1, :cond_2

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, p2, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->v:[D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->minLength:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gammas:[D

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0
.end method

.method protected updateA(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int v1, v1, p1

    add-int v1, v1, p1

    add-int/lit8 v5, v1, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    add-int v2, v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numCols:I

    sub-int v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    mul-int/2addr v1, v3

    add-int v9, v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    add-int/2addr v1, v5

    sub-int v1, v1, p1

    add-int/lit8 v10, v1, -0x1

    :goto_0
    if-eq v9, v2, :cond_2

    add-int/lit8 v1, v2, -0x1

    aget-wide v3, v8, v1

    move v1, v2

    move-wide v6, v3

    move v3, v5

    :goto_1
    if-eq v3, v10, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-wide v11, v8, v3

    add-int/lit8 v3, v1, 0x1

    aget-wide v13, v8, v1

    mul-double/2addr v11, v13

    add-double/2addr v6, v11

    move v1, v3

    move v3, v4

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->gamma:D

    mul-double v11, v6, v3

    add-int/lit8 v1, v2, -0x1

    aget-wide v3, v8, v1

    sub-double/2addr v3, v11

    aput-wide v3, v8, v1

    move v1, v2

    move v4, v5

    :goto_2
    if-eq v4, v10, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-wide v13, v8, v1

    add-int/lit8 v6, v4, 0x1

    aget-wide v15, v8, v4

    mul-double/2addr v15, v11

    sub-double/2addr v13, v15

    aput-wide v13, v8, v1

    move v1, v3

    move v4, v6

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->numRows:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method
