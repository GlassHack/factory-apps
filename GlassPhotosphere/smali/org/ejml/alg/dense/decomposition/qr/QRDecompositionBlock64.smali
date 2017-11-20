.class public Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;
.super Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;",
        "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-direct {v0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;-><init>()V

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;-><init>(Lorg/ejml/alg/dense/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-direct {p1, v1, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    :cond_0
    :goto_0
    new-instance v1, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v1}, Lorg/ejml/data/BlockMatrix64F;-><init>()V

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->blockLength:I

    iput v0, v1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, v1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0, v1, p2}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v3, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->convertBlockToRow(III[D)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->Ablock:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->getQ(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getR(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    invoke-static {v0, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-object p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QRDecompositionBlock64;->getR(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method
