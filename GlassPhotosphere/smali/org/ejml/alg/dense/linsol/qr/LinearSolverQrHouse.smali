.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field private QR:Lorg/ejml/data/DenseMatrix64F;

.field private a:[D

.field private decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

.field private gammas:[D

.field private maxRows:I

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->maxRows:I

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

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

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->maxRows:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->setMaxSize(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->getGammas()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->gammas:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholder;->getQR()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->QR:Lorg/ejml/data/DenseMatrix64F;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public setMaxSize(I)V
    .locals 1

    iput p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->maxRows:I

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->u:[D

    return-void
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 12

    const/4 v1, 0x0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numRows:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimensions for B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v6, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move v5, v1

    :goto_0
    if-ge v5, v6, :cond_8

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numRows:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    iget-object v3, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    mul-int v4, v0, v6

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numCols:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->u:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    aget-wide v3, v2, v0

    add-int/lit8 v2, v0, 0x1

    :goto_3
    iget v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numRows:I

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->u:[D

    iget-object v8, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v8, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v8

    aput-wide v8, v7, v2

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    aget-wide v10, v7, v2

    mul-double v7, v8, v10

    add-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->gammas:[D

    aget-wide v7, v2, v0

    mul-double/2addr v3, v7

    move v2, v0

    :goto_4
    iget v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numRows:I

    if-ge v2, v7, :cond_5

    iget-object v7, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    aget-wide v8, v7, v2

    iget-object v10, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->u:[D

    aget-wide v10, v10, v2

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numCols:I

    invoke-static {v0, v2, v3}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    move v0, v1

    :goto_5
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->numCols:I

    if-ge v0, v2, :cond_7

    iget-object v2, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v5

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->a:[D

    aget-wide v7, v4, v0

    aput-wide v7, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouse;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
