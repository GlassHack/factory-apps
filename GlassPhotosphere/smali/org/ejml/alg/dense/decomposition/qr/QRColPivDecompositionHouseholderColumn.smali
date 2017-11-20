.class public Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;
.super Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/QRPDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;",
        "Lorg/ejml/alg/dense/decomposition/QRPDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected maxAbs:D

.field protected normsCol:[D

.field protected pivots:[I

.field protected rank:I

.field protected singularThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    invoke-direct {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;-><init>()V

    iput-wide p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->singularThreshold:D

    return-void
.end method

.method private setupPivotInfo()V
    .locals 10

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    aput v0, v2, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v5, v2, v0

    const-wide/16 v2, 0x0

    move-wide v8, v2

    move-wide v3, v8

    move v2, v1

    :goto_1
    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    if-ge v2, v6, :cond_0

    aget-wide v6, v5, v2

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private swapColumns(I)V
    .locals 7

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v1, v0, p1

    add-int/lit8 v0, p1, 0x1

    move v3, p1

    :goto_0
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v4, v4, v0

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aput-object v0, v1, v3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v4, v4, v3

    aput-wide v4, v2, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aput-wide v0, v2, v3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    aget v2, v2, v3

    aput v2, v1, p1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    aput v0, v1, v3

    return-void
.end method

.method private updateNorms(I)V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v2, v2, v0

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v7, v6, v0

    mul-double/2addr v2, v2

    sub-double v2, v7, v2

    aput-wide v2, v6, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aget-wide v2, v2, v0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    move v0, p1

    :goto_2
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v6, v1, v0

    move v1, p1

    move-wide v2, v4

    :goto_3
    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    if-ge v1, v7, :cond_1

    aget-wide v7, v6, v1

    mul-double/2addr v7, v7

    add-double/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->setExpectedMaxSize(II)V

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->convertToColumnMajor(Lorg/ejml/data/DenseMatrix64F;)V

    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->maxAbs:D

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->setupPivotInfo()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->minLength:I

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->updateNorms(I)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->swapColumns(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->householderPivot(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->updateA(I)V

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->rank:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getPivotMatrix(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    aget v1, v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of rows must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of columns must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public getPivots()[I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    return-object v0
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 10

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->minLength:I

    invoke-static {v0, v1}, Lorg/ejml/ops/CommonOps;->identity(II)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->rank:I

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_7

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v1, v1, v4

    aget-wide v8, v1, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->gammas:[D

    aget-wide v2, v2, v4

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->v:[D

    move v5, v4

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    aput-wide v8, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->minLength:I

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

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->identity(I)Lorg/ejml/data/DenseMatrix64F;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

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

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->rank:I

    return v0
.end method

.method protected householderPivot(I)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->dataQR:[[D

    aget-object v1, v1, p1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v2}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->findMax([DII)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    invoke-static {p1, v4, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    aget-wide v4, v1, p1

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    add-double/2addr v4, v6

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->numRows:I

    invoke-static {v6, v7, v1, v4, v5}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements(II[DD)V

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->gamma:D

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    neg-double v2, v2

    aput-wide v2, v1, p1

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->tau:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->singularThreshold:D

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->maxAbs:D

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->gammas:[D

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->gamma:D

    aput-wide v1, v0, p1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->setExpectedMaxSize(II)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    array-length v0, v0

    if-ge v0, p2, :cond_1

    :cond_0
    new-array v0, p2, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->pivots:[I

    new-array v0, p2, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->normsCol:[D

    :cond_1
    return-void
.end method
