.class public Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field B:Lorg/ejml/data/DenseMatrix64F;

.field decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/QRPDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field min:I

.field n:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->qrp(II)Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v2, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A singular matrix must have been passed in.   Maybe QR with column pivoting instead?  Wait there isn\'t one in EJML yet..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->m:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getPivotMatrix(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v2, v1, v0}, Lorg/ejml/ops/CommonOps;->multTransB(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v0}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getB(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->handleB(Lorg/ejml/data/DenseMatrix64F;ZIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v4, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {v1, v4, v4, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->m:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    invoke-virtual {v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->getB(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonal([D[D)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v0

    aput-wide v0, p1, v2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->B:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getU(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->m:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->n:I

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->handleU(Lorg/ejml/data/DenseMatrix64F;ZZIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0, v7, v6}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    invoke-interface {v2, v7, v1, v6}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;

    move-result-object v1

    check-cast v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, v3}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-static {v3}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;)V

    :cond_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0, v3, v1}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    invoke-interface {v2, v7, v1, v6}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/DenseMatrix64F;

    iget v4, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->min:I

    invoke-static {v0, v1, v4, v1, v5}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/DenseMatrix64F;IIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v4

    new-instance v5, Lorg/ejml/data/DenseMatrix64F;

    iget v6, v4, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v7, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {v5, v6, v7}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    invoke-static {v4, v2, v5}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    invoke-static {v5, v0, v1, v1}, Lorg/ejml/ops/CommonOps;->insert(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;II)V

    goto :goto_0
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->getU(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getV(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompBi:Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;

    invoke-interface {v0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;->getV(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->getV(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionTall;->decompQRP:Lorg/ejml/alg/dense/decomposition/QRPDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/QRPDecomposition;->inputModified()Z

    move-result v0

    return v0
.end method
