.class public Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;
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
.field protected dataQR:[[D

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
.method protected convertToColumnMajor(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v3, v2, v0

    move v2, v1

    :goto_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-ge v2, v4, :cond_0

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->setExpectedMaxSize(II)V

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->convertToColumnMajor(Lorg/ejml/data/DenseMatrix64F;)V

    iput-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->error:Z

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->householder(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->updateA(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->error:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getGammas()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 10

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->identity(II)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_7

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v1, v1, v4

    aget-wide v8, v1, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    aget-wide v2, v2, v4

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->v:[D

    move v5, v4

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    aput-wide v8, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

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

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getQR()[[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v3, v2, v0

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v1

    :goto_2
    if-gt v2, v4, :cond_8

    aget-wide v5, v3, v2

    invoke-virtual {p1, v2, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    if-eq v0, v2, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dimensions: found( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) expected( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-eq v0, v2, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    :goto_3
    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_0

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_7

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method protected householder(I)V
    .locals 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v0, v0, p1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->findMax([DII)D

    move-result-wide v1

    cmpl-double v3, v1, v4

    if-nez v3, :cond_0

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gamma:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->error:Z

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gamma:D

    aput-wide v1, v0, p1

    return-void

    :cond_0
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    invoke-static {p1, v3, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DD)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    aget-wide v3, v0, p1

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    add-double/2addr v3, v5

    add-int/lit8 v5, p1, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    invoke-static {v5, v6, v0, v3, v4}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements(II[DD)V

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gamma:D

    iget-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->tau:D

    neg-double v1, v1

    aput-wide v1, v0, p1

    goto :goto_0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    array-length v0, v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->v:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->v:[D

    array-length v0, v0

    if-ge v0, v1, :cond_2

    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->v:[D

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->minLength:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gammas:[D

    :cond_3
    return-void
.end method

.method protected updateA(I)V
    .locals 10

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v4, v0, p1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v5, v1, v0

    aget-wide v2, v5, p1

    add-int/lit8 v1, p1, 0x1

    :goto_1
    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-ge v1, v6, :cond_0

    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->gamma:D

    mul-double/2addr v2, v6

    aget-wide v6, v5, p1

    sub-double/2addr v6, v2

    aput-wide v6, v5, p1

    add-int/lit8 v1, p1, 0x1

    :goto_2
    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->numRows:I

    if-ge v1, v6, :cond_1

    aget-wide v6, v5, v1

    aget-wide v8, v4, v1

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    aput-wide v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
