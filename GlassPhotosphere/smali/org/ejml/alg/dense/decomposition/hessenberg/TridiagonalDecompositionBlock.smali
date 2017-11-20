.class public Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;
.super Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;",
        "Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalSimilarDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;

    invoke-direct {v0}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;-><init>(Lorg/ejml/alg/dense/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getDiagonal([D[D)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->getDiagonal([D[D)V

    return-void
.end method

.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    new-instance v1, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v1}, Lorg/ejml/data/BlockMatrix64F;-><init>()V

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->blockLength:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, v1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;

    invoke-virtual {v0, v1, p2}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v3, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->convertBlockToRow(III[D)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p1, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    new-array v2, v1, [D

    new-array v3, v1, [D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;

    invoke-virtual {v0, v2, v3}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalDecompositionBlockHouseholder;->getDiagonal([D[D)V

    aget-wide v4, v2, v6

    invoke-virtual {p1, v6, v6, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-wide v4, v2, v0

    invoke-virtual {p1, v0, v0, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v3, v5

    invoke-virtual {p1, v0, v4, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v3, v5

    invoke-virtual {p1, v4, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/hessenberg/TridiagonalDecompositionBlock;->getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method
