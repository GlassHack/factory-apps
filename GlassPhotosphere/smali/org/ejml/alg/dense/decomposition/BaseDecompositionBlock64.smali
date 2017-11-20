.class public Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected Ablock:Lorg/ejml/data/BlockMatrix64F;

.field protected alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
            "<",
            "Lorg/ejml/data/BlockMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field protected blockLength:I

.field protected tmp:[D


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/DecompositionInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
            "<",
            "Lorg/ejml/data/BlockMatrix64F;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0}, Lorg/ejml/data/BlockMatrix64F;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->blockLength:I

    return-void
.end method


# virtual methods
.method public convertBlockToRow(III[D)V
    .locals 2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    invoke-static {p1, p2, v0, p4, v1}, Lorg/ejml/alg/block/BlockMatrixOps;->convertBlockToRow(III[D[D)V

    return-void
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v1, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->blockLength:I

    iput v1, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v1, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v3, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    invoke-static {v0, v1, v2, v3, v4}, Lorg/ejml/alg/block/BlockMatrixOps;->convertRowToBlock(III[D[D)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    invoke-interface {v1}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->inputModified()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v4, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->tmp:[D

    invoke-static {v1, v2, v3, v4, v5}, Lorg/ejml/alg/block/BlockMatrixOps;->convertBlockToRow(III[D[D)V

    :cond_2
    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public inputModified()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/DecompositionInterface;->inputModified()Z

    move-result v0

    return v0
.end method
