.class public Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/QRDecomposition",
        "<",
        "Lorg/ejml/data/BlockMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lorg/ejml/data/D1Submatrix64F;

.field private W:Lorg/ejml/data/D1Submatrix64F;

.field private WTA:Lorg/ejml/data/D1Submatrix64F;

.field private Y:Lorg/ejml/data/D1Submatrix64F;

.field private blockLength:I

.field private dataA:Lorg/ejml/data/BlockMatrix64F;

.field private dataW:Lorg/ejml/data/BlockMatrix64F;

.field private dataWTA:Lorg/ejml/data/BlockMatrix64F;

.field private gammas:[D

.field private saveW:Z

.field private temp:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v2, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataW:Lorg/ejml/data/BlockMatrix64F;

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v2, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataWTA:Lorg/ejml/data/BlockMatrix64F;

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v0}, Lorg/ejml/data/D1Submatrix64F;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->A:Lorg/ejml/data/D1Submatrix64F;

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v0}, Lorg/ejml/data/D1Submatrix64F;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataW:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    new-instance v0, Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataWTA:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0, v1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    new-array v0, v2, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    new-array v0, v2, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    return-void
.end method

.method public static initializeQ(Lorg/ejml/data/BlockMatrix64F;IIIZ)Lorg/ejml/data/BlockMatrix64F;
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p4, :cond_3

    if-nez p0, :cond_0

    new-instance p0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {p0, p1, v0, p3}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    invoke-static {p0}, Lorg/ejml/alg/block/BlockMatrixOps;->setIdentity(Lorg/ejml/data/BlockMatrix64F;)V

    :goto_0
    return-object p0

    :cond_0
    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected matrix dimension. Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Lorg/ejml/alg/block/BlockMatrixOps;->setIdentity(Lorg/ejml/data/BlockMatrix64F;)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    new-instance p0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {p0, p1, p1, p3}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    invoke-static {p0}, Lorg/ejml/alg/block/BlockMatrixOps;->setIdentity(Lorg/ejml/data/BlockMatrix64F;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-ne v0, p1, :cond_5

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-eq v0, p1, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected matrix dimension. Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p0}, Lorg/ejml/alg/block/BlockMatrixOps;->setIdentity(Lorg/ejml/data/BlockMatrix64F;)V

    goto :goto_0
.end method

.method private setW()V
    .locals 3

    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    goto :goto_0
.end method

.method private setup(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iput v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataW:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iput v1, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataWTA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iput v1, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iput-object p1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->A:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iput-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataW:Lorg/ejml/data/BlockMatrix64F;

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-virtual {v1, v2, v0, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataWTA:Lorg/ejml/data/BlockMatrix64F;

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput-object p1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v2, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    array-length v0, v0

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    :cond_1
    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataW:Lorg/ejml/data/BlockMatrix64F;

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->applyQ(Lorg/ejml/data/BlockMatrix64F;Z)V

    return-void
.end method

.method public applyQ(Lorg/ejml/data/BlockMatrix64F;Z)V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v8, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v8, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iput v6, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v3, v3, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v3, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v6, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v6, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    rem-int v0, v1, v0

    sub-int v0, v1, v0

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    move v0, v6

    :cond_1
    move v7, v0

    :goto_0
    if-ltz v7, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-eqz p2, :cond_2

    iput v7, v8, Lorg/ejml/data/D1Submatrix64F;->col0:I

    :cond_2
    iput v7, v8, Lorg/ejml/data/D1Submatrix64F;->row0:I

    invoke-direct {p0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->setW()V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v8, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, v8, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v0, v1, v2, v6}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v5, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeW_Column(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D[DI)V

    :cond_3
    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, v8, v2}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->multTransA_vecCol(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, v2, v8}, Lorg/ejml/alg/block/BlockMultiplication;->multPlus(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    sub-int v0, v7, v0

    move v7, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public applyQTran(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v9, Lorg/ejml/data/D1Submatrix64F;

    invoke-direct {v9, p1}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v2, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v6, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v6, v9, Lorg/ejml/data/D1Submatrix64F;->row0:I

    invoke-direct {p0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->setW()V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v7, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v9, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, v9, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v0, v1, v2, v7}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v5, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeW_Column(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D[DI)V

    :cond_0
    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, v9, v2}, Lorg/ejml/alg/block/BlockMultiplication;->multTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, v2, v9}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->multAdd_zeros(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->setup(Lorg/ejml/data/BlockMatrix64F;)V

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v1, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v4, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v5, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v6, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iput v1, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    invoke-static {v3, v4, v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->decomposeQR_block_col(ILorg/ejml/data/D1Submatrix64F;[D)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->A:Lorg/ejml/data/D1Submatrix64F;

    invoke-virtual {p0, v3}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->updateA(Lorg/ejml/data/D1Submatrix64F;)V

    iget v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->decompose(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    invoke-static {p1, v0, v1, v2, p2}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->initializeQ(Lorg/ejml/data/BlockMatrix64F;IIIZ)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->applyQ(Lorg/ejml/data/BlockMatrix64F;Z)V

    return-object v0
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getQ(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getQR()Lorg/ejml/data/BlockMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Lorg/ejml/data/BlockMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->zeroTriangle(ZLorg/ejml/data/BlockMatrix64F;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v0, v1, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->copyTriangle(ZLorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/BlockMatrix64F;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/ejml/data/BlockMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v2, v2, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ne v1, v2, :cond_3

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v1, v0, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->dataA:Lorg/ejml/data/BlockMatrix64F;

    iget v1, v1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected dimension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->getR(Lorg/ejml/data/BlockMatrix64F;Z)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSaveW(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    return-void
.end method

.method protected updateA(Lorg/ejml/data/D1Submatrix64F;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->setW()V

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v0, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v0, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v0, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iput v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iput v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v1, v1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    iget v2, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/D1Matrix64F;->reshape(IIZ)V

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v5, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeW_Column(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D[DI)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, p1, v2}, Lorg/ejml/alg/block/BlockMultiplication;->multTransA(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->WTA:Lorg/ejml/data/D1Submatrix64F;

    invoke-static {v0, v1, v2, p1}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->multAdd_zeros(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->saveW:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->blockLength:I

    iget-object v1, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->W:Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->temp:[D

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->gammas:[D

    iget-object v5, p0, Lorg/ejml/alg/block/decomposition/qr/BlockMatrix64HouseholderQR;->Y:Lorg/ejml/data/D1Submatrix64F;

    iget v5, v5, Lorg/ejml/data/D1Submatrix64F;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeW_Column(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D[DI)V

    goto :goto_0
.end method
