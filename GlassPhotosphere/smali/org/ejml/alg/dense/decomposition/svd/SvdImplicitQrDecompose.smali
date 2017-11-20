.class public Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private A_mod:Lorg/ejml/data/DenseMatrix64F;

.field private Ut:Lorg/ejml/data/DenseMatrix64F;

.field private Vt:Lorg/ejml/data/DenseMatrix64F;

.field private bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field private compact:Z

.field private computeU:Z

.field private computeV:Z

.field diag:[D

.field private numCols:I

.field private numColsT:I

.field private numRows:I

.field private numRowsT:I

.field private numSingular:I

.field off:[D

.field private prefComputeU:Z

.field private prefComputeV:Z

.field private qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

.field private singularValues:[D

.field private transposed:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    iput-boolean p2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeU:Z

    iput-boolean p3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeV:Z

    return-void
.end method

.method private bidiagonalization(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->transposed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, v1}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v1, v2}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v3, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->A_mod:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    goto :goto_0
.end method

.method private computeUWV()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->diag:[D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->off:[D

    invoke-interface {v0, v3, v4}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getDiagonal([D[D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRowsT:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->diag:[D

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->off:[D

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setMatrix(II[D[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    invoke-interface {v0, v3, v1, v4}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    :cond_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    iget-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    invoke-interface {v0, v3, v1, v4}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getV(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0, v2}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setFastValues(Z)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeU:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setUt(Lorg/ejml/data/DenseMatrix64F;)V

    :goto_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeV:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v3}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setVt(Lorg/ejml/data/DenseMatrix64F;)V

    :goto_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->process()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    return v0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0, v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setUt(Lorg/ejml/data/DenseMatrix64F;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0, v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setVt(Lorg/ejml/data/DenseMatrix64F;)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private makeSingularPositive()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->getNumberOfSingularValues()I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->getSingularValues()[D

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->singularValues:[D

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->qralg:Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;

    invoke-virtual {v1, v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->getSingularValue(I)D

    move-result-wide v1

    cmpg-double v3, v1, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->singularValues:[D

    sub-double v1, v6, v1

    aput-wide v1, v3, v0

    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeU:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v4, v1}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v4

    sub-double v4, v6, v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->singularValues:[D

    aput-wide v1, v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setup(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->transposed:Z

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->transposed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeU:Z

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeV:Z

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRowsT:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    :goto_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRows:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numCols:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->diag:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->diag:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->diag:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->off:[D

    :cond_1
    new-instance v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiag:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeU:Z

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeU:Z

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeV:Z

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeV:Z

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRowsT:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numColsT:I

    goto :goto_1
.end method

.method private undoTranspose()V
    .locals 2

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->transposed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    :cond_0
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->setup(Lorg/ejml/data/DenseMatrix64F;)V

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->bidiagonalization(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->computeUWV()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->makeSingularPositive()V

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->undoTranspose()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getSingularValues()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->singularValues:[D

    return-object v0
.end method

.method public getU(Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeU:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "As requested U was not computed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Ut:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v0}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0
.end method

.method public bridge synthetic getU(Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->getU(Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getV(Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->prefComputeV:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "As requested V was not computed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->Vt:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v0}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    goto :goto_0
.end method

.method public bridge synthetic getV(Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->getV(Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getW(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    :goto_0
    iget-boolean v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    :goto_1
    if-nez p1, :cond_2

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_2
    move v0, v1

    :goto_3
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->singularValues:[D

    aget-wide v1, v1, v0

    invoke-virtual {p1, v0, v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRows:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numCols:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v2, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getW(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->getW(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCompact()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->compact:Z

    return v0
.end method

.method public numCols()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numCols:I

    return v0
.end method

.method public numRows()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numRows:I

    return v0
.end method

.method public numberOfSingularValues()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/SvdImplicitQrDecompose;->numSingular:I

    return v0
.end method
