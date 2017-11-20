.class public Lorg/ejml/alg/dense/linsol/LinearSolverFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustable()Lorg/ejml/alg/dense/linsol/AdjustableLinearSolver;
    .locals 1

    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/qr/AdjLinearSolverQr;-><init>()V

    return-object v0
.end method

.method public static general(II)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    invoke-static {p0}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->linear(I)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->leastSquares(II)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    goto :goto_0
.end method

.method public static leastSquares(II)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    if-ge p1, v0, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrBlock64;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrBlock64;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrHouseCol;-><init>()V

    goto :goto_0
.end method

.method public static leastSquaresQrPivot(ZZ)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v1, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-direct {v1}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;

    invoke-direct {v0, v1, p0}, Lorg/ejml/alg/dense/linsol/qr/SolvePseudoInverseQrp;-><init>(Lorg/ejml/alg/dense/decomposition/QRPDecomposition;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;

    invoke-direct {v0, v1, p0}, Lorg/ejml/alg/dense/linsol/qr/LinearSolverQrpHouseCol;-><init>(Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;Z)V

    goto :goto_0
.end method

.method public static linear(I)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;

    new-instance v1, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;

    invoke-direct {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;-><init>()V

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLu;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    return-object v0
.end method

.method public static pseudoInverse(Z)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/linsol/LinearSolverFactory;->leastSquaresQrPivot(ZZ)Lorg/ejml/alg/dense/linsol/LinearSolver;

    move-result-object v0

    goto :goto_0
.end method

.method public static symmPosDef(I)Lorg/ejml/alg/dense/linsol/LinearSolver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/alg/dense/linsol/LinearSolver",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    if-ge p0, v0, :cond_0

    new-instance v1, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;-><init>(Z)V

    new-instance v0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;-><init>(Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;

    invoke-direct {v0}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverCholBlock64;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;

    invoke-direct {v1, v2}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;-><init>(Z)V

    new-instance v0, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/linsol/chol/LinearSolverChol;-><init>(Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;)V

    goto :goto_0
.end method
