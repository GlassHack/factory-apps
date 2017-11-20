.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field private QR:[[D

.field private R:Lorg/ejml/data/DenseMatrix64F;

.field private a:Lorg/ejml/data/DenseMatrix64F;

.field private decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

.field private gammas:[D

.field protected maxCols:I

.field protected maxRows:I

.field private temp:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->temp:Lorg/ejml/data/DenseMatrix64F;

    iput v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxRows:I

    iput v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxCols:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->R:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxRows:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxCols:I

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->setMaxSize(II)V

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->temp:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-virtual {v1, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->getGammas()[D

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->gammas:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->getQR()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->QR:[[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->R:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v2, v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public setMaxSize(II)V
    .locals 0

    iput p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxRows:I

    iput p2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->maxCols:I

    return-void
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    const/4 v4, 0x0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dimensions for X: X rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v9, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v8, v4

    :goto_0
    if-ge v8, v9, :cond_6

    move v0, v4

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numRows:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    mul-int v3, v0, v9

    add-int/2addr v3, v8

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_2
    iget v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numCols:I

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->QR:[[D

    aget-object v1, v0, v5

    aget-wide v10, v1, v5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v5

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->gammas:[D

    aget-wide v2, v2, v5

    iget v6, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numRows:I

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    aput-wide v10, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numCols:I

    invoke-static {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    move v0, v4

    :goto_3
    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->numCols:I

    if-ge v0, v1, :cond_5

    iget-object v1, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v8

    iget-object v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->a:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v5, v3, v0

    aput-wide v5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
