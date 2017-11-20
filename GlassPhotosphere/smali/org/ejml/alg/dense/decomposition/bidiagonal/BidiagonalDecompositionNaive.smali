.class public Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;
.super Ljava/lang/Object;


# instance fields
.field private B:Lorg/ejml/simple/SimpleMatrix;

.field private U:Lorg/ejml/simple/SimpleMatrix;

.field private V:Lorg/ejml/simple/SimpleMatrix;

.field private m:I

.field private min:I

.field private n:I

.field u:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _decompose()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->min:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->computeU(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->computeV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected computeU(I)V
    .locals 10

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v0, p1

    move-wide v1, v3

    :goto_0
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v5, v0, p1}, Lorg/ejml/simple/SimpleMatrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v7, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v8, v5, v1

    if-lez v8, :cond_0

    move-wide v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    move v0, p1

    move-wide v5, v3

    :goto_1
    iget v8, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    if-ge v0, v8, :cond_2

    aget-wide v8, v7, v0

    div-double/2addr v8, v1

    aput-wide v8, v7, v0

    mul-double/2addr v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aget-wide v5, v7, p1

    cmpg-double v2, v5, v3

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    aget-wide v2, v7, p1

    add-double v3, v2, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v7, p1

    add-int/lit8 v2, p1, 0x1

    :goto_2
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    if-ge v2, v5, :cond_4

    aget-wide v5, v7, v2

    div-double/2addr v5, v3

    aput-wide v5, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    div-double v0, v3, v0

    invoke-static {v2, v0, v1}, Lorg/ejml/ops/SpecializedOps;->createReflector(Lorg/ejml/data/DenseMatrix64F;D)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->U:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->U:Lorg/ejml/simple/SimpleMatrix;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v1, v0}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    :cond_5
    return-void
.end method

.method protected computeV(I)V
    .locals 10

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v0, p1, 0x1

    move-wide v1, v3

    :goto_0
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v5, p1, v0}, Lorg/ejml/simple/SimpleMatrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v7, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v8, v5, v1

    if-lez v8, :cond_0

    move-wide v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    move-wide v5, v3

    :goto_1
    iget v8, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    if-ge v0, v8, :cond_2

    aget-wide v8, v7, v0

    div-double/2addr v8, v1

    aput-wide v8, v7, v0

    mul-double/2addr v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v5, v7, v2

    cmpg-double v2, v5, v3

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-wide v2, v7, v2

    add-double v3, v2, v0

    add-int/lit8 v2, p1, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v7, v2

    add-int/lit8 v2, p1, 0x2

    :goto_2
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    if-ge v2, v5, :cond_4

    aget-wide v5, v7, v2

    div-double/2addr v5, v3

    aput-wide v5, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    div-double v0, v3, v0

    invoke-static {v2, v0, v1}, Lorg/ejml/ops/SpecializedOps;->createReflector(Lorg/ejml/data/DenseMatrix64F;D)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->V:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->V:Lorg/ejml/simple/SimpleMatrix;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0, v1}, Lorg/ejml/simple/SimpleMatrix;->mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    :cond_5
    return-void
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->init(Lorg/ejml/data/DenseMatrix64F;)V

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->_decompose()Z

    move-result v0

    return v0
.end method

.method public getB()Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method public getU()Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->U:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method public getV()Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->V:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method protected init(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 3

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->min:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->identity(I)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->U:Lorg/ejml/simple/SimpleMatrix;

    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p1}, Lorg/ejml/simple/SimpleMatrix;-><init>(Lorg/ejml/data/DenseMatrix64F;)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->B:Lorg/ejml/simple/SimpleMatrix;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->identity(I)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->V:Lorg/ejml/simple/SimpleMatrix;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionNaive;->u:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method
