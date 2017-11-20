.class public Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/linsol/LinearSolver",
        "<",
        "Lorg/ejml/data/BlockMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected QR:Lorg/ejml/data/BlockMatrix64F;

.field protected decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-direct {v0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->setSaveW(Z)V

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v0, v3, :cond_0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A_inv must be square an have dimension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/ejml/alg/block/BlockMatrixOps;->setIdentity(Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->applyQTran(Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    const/4 v7, 0x1

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v1, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v1, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    invoke-static {v6, v7, v0, v1, v2}, Lorg/ejml/alg/block/BlockTriangularSolver;->solve(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->invert(Lorg/ejml/data/BlockMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public quality()D
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getQR()Lorg/ejml/data/BlockMatrix64F;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows must be more than or equal to the number of columns.  Can\'t solve an underdetermined system."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->decompose(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getQR()Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->setA(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V
    .locals 8

    const/4 v2, 0x0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Columns of B and X do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in X do not match the columns in A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rows in B do not match the rows in A."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-ne v0, v1, :cond_3

    iget v0, p2, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All matrices must have the same block length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->decomp:Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;

    invoke-virtual {v0, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->applyQTran(Lorg/ejml/data/BlockMatrix64F;)V

    invoke-static {p1, p2}, Lorg/ejml/alg/block/BlockMatrixOps;->extractAligned(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    iget v6, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    const/4 v7, 0x1

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->QR:Lorg/ejml/data/BlockMatrix64F;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;IIII)V

    new-instance v1, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v1, p2}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    invoke-static {v6, v7, v0, v1, v2}, Lorg/ejml/alg/block/BlockTriangularSolver;->solve(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Z)V

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    check-cast p2, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/block/linsol/qr/BlockQrHouseHolderSolver;->solve(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    return-void
.end method
