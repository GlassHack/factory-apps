.class public Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;
.super Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;


# instance fields
.field private decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

.field private x_basic:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/BaseLinearSolverQrp;-><init>(Lorg/ejml/alg/dense/decomposition/QRPDecomposition;Z)V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iput-object p1, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    return-void
.end method


# virtual methods
.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 16

    move-object/from16 v0, p2

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numCols:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected dimensions for X"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numRows:I

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
    move-object/from16 v0, p1

    iget v10, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->getPivots()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->getQR()[[D

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->decomposition:Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;->getGammas()[D

    move-result-object v13

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numRows:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->Y:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numRows:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(II)V

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numRows:I

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v9}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->rank:I

    if-ge v6, v1, :cond_4

    aget-object v2, v12, v6

    aget-wide v14, v2, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    aget-wide v3, v13, v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numRows:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->Y:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, v8, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static/range {v1 .. v8}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    aput-wide v14, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->R11:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->rank:I

    invoke-static {v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numCols:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->rank:I

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numCols:I

    if-ge v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->norm2Solution:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->rank:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numCols:I

    if-ge v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->upgradeSolution(Lorg/ejml/data/DenseMatrix64F;)V

    :cond_6
    const/4 v1, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->numCols:I

    if-ge v1, v2, :cond_7

    aget v2, v11, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->x_basic:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v3, v3, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
