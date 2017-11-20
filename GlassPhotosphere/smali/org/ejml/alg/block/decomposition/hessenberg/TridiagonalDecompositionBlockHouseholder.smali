.class public Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
        "<",
        "Lorg/ejml/data/BlockMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Lorg/ejml/data/BlockMatrix64F;

.field protected V:Lorg/ejml/data/BlockMatrix64F;

.field protected gammas:[D

.field protected tmp:Lorg/ejml/data/BlockMatrix64F;

.field protected zerosM:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->V:Lorg/ejml/data/BlockMatrix64F;

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->tmp:Lorg/ejml/data/BlockMatrix64F;

    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->gammas:[D

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method private copyZeros(Lorg/ejml/data/D1Submatrix64F;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-gt v0, v2, :cond_0

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v2, v0}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v5

    invoke-virtual {v4, v2, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v5}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2, v5}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v5

    invoke-virtual {v0, v2, v4, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v0, v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v2, v0, v4, v5}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->V:Lorg/ejml/data/BlockMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIIZ)V

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->tmp:Lorg/ejml/data/BlockMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIIZ)V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->gammas:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->gammas:[D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    return-void
.end method

.method public static multPlusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 11

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, p0

    move v9, v0

    :goto_0
    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_1

    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v1, v9, v1

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v3, v0, v1

    move v10, v9

    :goto_1
    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_0

    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v0, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v10, v7

    add-int v5, v0, v1

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v4, v0, v1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransA([D[D[DIIIIII)V

    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_0
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceZeros(Lorg/ejml/data/D1Submatrix64F;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-gt v0, v2, :cond_0

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v4, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v0, v4, v5}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->zerosM:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v0, v4, v5}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 12

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->init(Lorg/ejml/data/BlockMatrix64F;)V

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v2, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->V:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v3, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v4, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v4, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget v5, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_2

    iget-object v6, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v6, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v7, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v7, v7, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v0, v4, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v4, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v7, v4, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v7, v6

    iput v7, v4, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v6, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v6, v3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v7, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v8, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v6, v7, v8, v1}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    iget-object v6, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v6, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v7, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->gammas:[D

    invoke-static {v6, v2, v7, v3}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->tridiagUpperRow(ILorg/ejml/data/D1Submatrix64F;[DLorg/ejml/data/D1Submatrix64F;)V

    iget v6, v4, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v7, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v6, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v7, v7, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-virtual {v4, v6, v7}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v6

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v9, v9, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v8, v9, v10, v11}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v4, v3, v2}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->multPlusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v3, v4, v2}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->multPlusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v9, v9, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-virtual {v4, v8, v9, v6, v7}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    :cond_1
    iget-object v6, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v6, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    add-int/2addr v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->decompose(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getDiagonal([D[D)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    aget-wide v0, v0, v2

    aput-wide v0, p1, v2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/BlockMatrix64F;->get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/BlockMatrix64F;->get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {p1, v0, v2, v3, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->initializeQ(Lorg/ejml/data/BlockMatrix64F;IIIZ)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v2

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->V:Lorg/ejml/data/BlockMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-virtual {v3, v0, v4, v1}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->tmp:Lorg/ejml/data/BlockMatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-virtual {v3, v0, v4, v1}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v3, v2}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v4, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v4, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v5, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->V:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v5, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v6, Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->tmp:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v6, v0}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v7, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    rem-int v0, v7, v0

    sub-int v0, v7, v0

    if-ne v0, v7, :cond_0

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    sub-int/2addr v0, v8

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    if-ltz v0, :cond_5

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    sub-int v9, v7, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v0, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v8, v5, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v9, v5, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v10, v5, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v11, v5, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v9, v10, v11, v1}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    if-eqz p2, :cond_2

    iput v0, v6, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v9, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v9, v9, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput v9, v6, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v1, v6, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v8, v6, Lorg/ejml/data/D1Submatrix64F;->col1:I

    :goto_1
    iget-object v9, v6, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v10, v6, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v11, v6, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v9, v10, v11, v1}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    iput v0, v4, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v4, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v9, v4, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v8, v9

    iput v8, v4, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-direct {p0, v4}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->copyZeros(Lorg/ejml/data/D1Submatrix64F;)V

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v9, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->gammas:[D

    invoke-static {v8, v4, v5, v9, v0}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->computeW_row(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[DI)V

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v0, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-eqz p2, :cond_3

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v3, v4, v6}, Lorg/ejml/alg/block/BlockMultiplication;->multTransB(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :goto_2
    if-eqz p2, :cond_4

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v6, v5, v3}, Lorg/ejml/alg/block/BlockMultiplication;->multPlus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :goto_3
    invoke-direct {p0, v4}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->replaceZeros(Lorg/ejml/data/D1Submatrix64F;)V

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    sub-int/2addr v0, v8

    goto :goto_0

    :cond_2
    iput v0, v6, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v8, v6, Lorg/ejml/data/D1Submatrix64F;->row1:I

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v4, v3, v6}, Lorg/ejml/alg/block/BlockMultiplication;->mult(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v8, v5, v6, v3}, Lorg/ejml/alg/block/BlockMultiplication;->multPlusTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    goto :goto_3

    :cond_5
    return-object v2
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    aget-wide v0, v0, v3

    invoke-virtual {p1, v3, v3, v0, v1}, Lorg/ejml/data/BlockMatrix64F;->set(IID)V

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ejml/data/BlockMatrix64F;->get(II)D

    move-result-wide v1

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {v3, v0, v0}, Lorg/ejml/data/BlockMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v0, v3, v4}, Lorg/ejml/data/BlockMatrix64F;->set(IID)V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/ejml/data/BlockMatrix64F;->set(IID)V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lorg/ejml/data/BlockMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->A:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T must have the same dimensions as the input matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
