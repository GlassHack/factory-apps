.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;
.super Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;


# instance fields
.field private QR:Lorg/ejml/data/DenseMatrix64F;

.field private U:Lorg/ejml/data/DenseMatrix64F;

.field private a:[D

.field private decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

.field protected maxCols:I

.field protected maxRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverAbstract;-><init>()V

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxRows:I

    iput v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxCols:I

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->inputModified()Z

    move-result v0

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

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxRows:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxCols:I

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->setMaxSize(II)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->_setA(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->getQR()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public setMaxSize(II)V
    .locals 1

    iput p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxRows:I

    iput p2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->maxCols:I

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    return-void
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 15

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numCols:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected dimensions for X: X rows = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for B"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->U:Lorg/ejml/data/DenseMatrix64F;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->U:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->decomposer:Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderTran;->getGammas()[D

    move-result-object v7

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->QR:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    iget v9, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v9, :cond_8

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    mul-int v4, v1, v9

    add-int/2addr v4, v6

    aget-wide v3, v3, v4

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numCols:I

    if-ge v1, v2, :cond_6

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    add-int/lit8 v5, v2, 0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    aget-wide v3, v2, v1

    add-int/lit8 v2, v1, 0x1

    :goto_3
    iget v10, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    if-ge v2, v10, :cond_4

    aget-wide v10, v8, v5

    iget-object v12, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    aget-wide v12, v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v3, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    aget-wide v10, v7, v1

    mul-double v4, v3, v10

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    aget-wide v10, v2, v1

    sub-double/2addr v10, v4

    aput-wide v10, v2, v1

    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v1, 0x1

    :goto_4
    iget v10, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numRows:I

    if-ge v2, v10, :cond_5

    iget-object v10, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    aget-wide v11, v10, v2

    aget-wide v13, v8, v3

    mul-double/2addr v13, v4

    sub-double/2addr v11, v13

    aput-wide v11, v10, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->U:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    iget v3, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numCols:I

    invoke-static {v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->numCols:I

    if-ge v1, v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v6

    iget-object v4, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->a:[D

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseTran;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
