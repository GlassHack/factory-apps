.class public Lorg/ejml/alg/dense/decomposition/DecompositionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chol(IZ)Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    sget v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    if-ge p0, v0, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;

    invoke-direct {v0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;

    invoke-direct {v0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock;-><init>(I)V

    goto :goto_0
.end method

.method public static cholLDL(I)Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;
    .locals 1

    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;-><init>()V

    return-object v0
.end method

.method public static decomposeSafe(Lorg/ejml/alg/dense/decomposition/DecompositionInterface;Lorg/ejml/data/Matrix64F;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/Matrix64F;",
            ">(",
            "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
            "<TT;>;TT;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/ejml/data/Matrix64F;->copy()Lorg/ejml/data/Matrix64F;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    goto :goto_0
.end method

.method public static eig(I)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;

    invoke-direct {v0, p0}, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;-><init>(I)V

    return-object v0
.end method

.method public static eig(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/SwitchingEigenDecomposition;-><init>(IZD)V

    return-object v0
.end method

.method public static eigGeneral(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;

    invoke-direct {v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/WatchedDoubleStepQRDecomposition;-><init>(Z)V

    return-object v0
.end method

.method public static eigSymm(IZ)Lorg/ejml/alg/dense/decomposition/EigenDecomposition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->tridiagonal(I)Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;

    move-result-object v0

    new-instance v1, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;

    invoke-direct {v1, v0, p1}, Lorg/ejml/alg/dense/decomposition/eig/SymmetricQRAlgorithmDecomposition;-><init>(Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;Z)V

    return-object v1
.end method

.method public static lu(I)Lorg/ejml/alg/dense/decomposition/LUDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/alg/dense/decomposition/LUDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionAlt;-><init>()V

    return-object v0
.end method

.method public static qr(II)Lorg/ejml/alg/dense/decomposition/QRDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionHouseholderColumn;-><init>()V

    return-object v0
.end method

.method public static qrp(II)Lorg/ejml/alg/dense/decomposition/QRPDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/alg/dense/decomposition/QRPDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/qr/QRColPivDecompositionHouseholderColumn;-><init>()V

    return-object v0
.end method

.method public static quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DenseMatrix64F;",
            "Lorg/ejml/alg/dense/decomposition/EigenDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;)D"
        }
    .end annotation

    invoke-static {p0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    invoke-static {p1}, Lorg/ejml/ops/EigenOps;->createMatrixV(Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {v1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    invoke-static {p1}, Lorg/ejml/ops/EigenOps;->createMatrixD(Lorg/ejml/alg/dense/decomposition/EigenDecomposition;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v2}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v1, v2}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    check-cast v1, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->minus(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    check-cast v1, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v1}, Lorg/ejml/simple/SimpleMatrix;->normF()D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->normF()D

    move-result-wide v3

    div-double v0, v1, v3

    return-wide v0
.end method

.method public static quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/DenseMatrix64F;",
            "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getU(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getW(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;

    move-result-object v1

    check-cast v1, Lorg/ejml/data/DenseMatrix64F;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getV(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p0, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)D
    .locals 5

    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    invoke-static {p2}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    invoke-static {p3}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0, v2}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/ejml/ops/SpecializedOps;->diffNormF(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->normF()D

    move-result-wide v3

    div-double v0, v1, v3

    return-wide v0
.end method

.method public static svd(II)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;-><init>(ZZZ)V

    return-object v0
.end method

.method public static svd(IIZZZ)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ)",
            "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;

    invoke-direct {v0, p4, p2, p3}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;-><init>(ZZZ)V

    return-object v0
.end method

.method public static tridiagonal(I)Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x708

    if-lt p0, v0, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionHouseholder;-><init>()V

    goto :goto_0
.end method
