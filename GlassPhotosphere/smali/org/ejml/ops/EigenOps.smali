.class public Lorg/ejml/ops/EigenOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundLargestEigenValue(Lorg/ejml/data/DenseMatrix64F;[D)[D
    .locals 14

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v2, 0x0

    iget v10, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_4

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    move v13, v0

    move-wide v0, v6

    move v6, v13

    :goto_1
    if-ge v6, v10, :cond_2

    invoke-virtual {p0, v9, v6}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmpg-double v11, v7, v11

    if-gez v11, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-double/2addr v7, v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v0, v7

    goto :goto_1

    :cond_2
    cmpg-double v6, v0, v4

    if-gez v6, :cond_3

    move-wide v4, v0

    :cond_3
    cmpl-double v6, v0, v2

    if-lez v6, :cond_6

    :goto_2
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v2, v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x2

    new-array p1, v0, [D

    :cond_5
    const/4 v0, 0x0

    aput-wide v4, p1, v0

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-object p1

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method

.method public static computeEigenValue(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)D
    .locals 4

    invoke-static {p1, p1}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->innerProd(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    invoke-static {p1, p0, p1}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->innerProdA(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static computeEigenVector(Lorg/ejml/data/DenseMatrix64F;D)Lorg/ejml/data/Eigenpair;
    .locals 27

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be a square matrix."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v10, Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v10, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    new-instance v11, Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v3, 0x1

    invoke-direct {v11, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    new-instance v12, Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v3, 0x1

    invoke-direct {v12, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v2, v3}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    move-wide/from16 v0, p1

    neg-double v2, v0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v2, v3}, Lorg/ejml/ops/SpecializedOps;->addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V

    invoke-static/range {p0 .. p0}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double v13, v2, v4

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x0

    iget v2, v10, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v2}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->linear(I)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v15

    const-wide v16, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/4 v2, 0x0

    move v7, v2

    move-wide/from16 v8, p1

    :goto_0
    const/16 v2, 0xc8

    if-ge v7, v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v15, v10}, Lorg/ejml/alg/dense/linsol/LinearSolver;->setA(Lorg/ejml/data/Matrix64F;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v11}, Lorg/ejml/ops/MatrixFeatures;->hasUncountable(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_5

    if-nez v4, :cond_4

    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v16

    :goto_2
    div-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p1

    neg-double v8, v2

    move-object/from16 v0, p0

    invoke-static {v0, v10, v8, v9}, Lorg/ejml/ops/SpecializedOps;->addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V

    move/from16 v24, v4

    move-wide/from16 v25, v5

    move-wide v5, v2

    move/from16 v2, v24

    move-wide/from16 v3, v25

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-wide v8, v5

    move-wide v5, v3

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {v15, v12, v11}, Lorg/ejml/alg/dense/linsol/LinearSolver;->solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v16

    goto :goto_2

    :cond_4
    new-instance v2, Lorg/ejml/data/Eigenpair;

    invoke-direct {v2, v8, v9, v12}, Lorg/ejml/data/Eigenpair;-><init>(DLorg/ejml/data/DenseMatrix64F;)V

    :goto_4
    return-object v2

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v12, v11}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    invoke-static {v12}, Lorg/ejml/ops/NormOps;->normalizeF(Lorg/ejml/data/DenseMatrix64F;)V

    invoke-static {v10, v12, v11}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    invoke-static {v11}, Lorg/ejml/ops/NormOps;->normPInf(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v3

    sub-double v18, v3, v5

    sget-wide v20, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x0

    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v16

    :goto_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p1

    move/from16 v24, v4

    move-wide/from16 v25, v5

    move-wide v5, v2

    move/from16 v2, v24

    move-wide/from16 v3, v25

    :goto_6
    neg-double v8, v5

    move-object/from16 v0, p0

    invoke-static {v0, v10, v8, v9}, Lorg/ejml/ops/SpecializedOps;->addIdentity(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;D)V

    goto :goto_3

    :cond_6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v16

    goto :goto_5

    :cond_7
    cmpg-double v18, v3, v13

    if-lez v18, :cond_8

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sget-wide v18, Lorg/ejml/UtilEjml;->EPS:D

    cmpg-double v5, v5, v18

    if-gtz v5, :cond_9

    :cond_8
    new-instance v2, Lorg/ejml/data/Eigenpair;

    invoke-direct {v2, v8, v9, v12}, Lorg/ejml/data/Eigenpair;-><init>(DLorg/ejml/data/DenseMatrix64F;)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    invoke-static {v12, v0, v12}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->innerProdA(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v5

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public static createMatrixD(Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v1

    new-instance v2, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v2, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lorg/ejml/data/Complex64F;->real:D

    invoke-virtual {v2, v0, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static createMatrixV(Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)Lorg/ejml/data/DenseMatrix64F;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;)",
            "Lorg/ejml/data/DenseMatrix64F;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getNumberOfEigenvalues()I

    move-result v4

    new-instance v5, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v5, v4, v4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-interface {p0, v3}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenvalue(I)Lorg/ejml/data/Complex64F;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v3}, Lorg/ejml/alg/dense/decomposition/EigenDecomposition;->getEigenVector(I)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v6

    invoke-virtual {v5, v1, v3, v6, v7}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public static dominantEigenpair(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/Eigenpair;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;-><init>(I)V

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, p0, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/EigenPowerMethod;->computeShiftInvert(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-object v3
.end method
