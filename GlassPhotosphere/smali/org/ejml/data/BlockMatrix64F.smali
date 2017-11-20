.class public Lorg/ejml/data/BlockMatrix64F;
.super Lorg/ejml/data/D1Matrix64F;


# instance fields
.field public blockLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/data/D1Matrix64F;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/data/D1Matrix64F;-><init>()V

    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iput p3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iput p1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    return-void
.end method

.method public static wrap([DIII)Lorg/ejml/data/BlockMatrix64F;
    .locals 1

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v0}, Lorg/ejml/data/BlockMatrix64F;-><init>()V

    iput-object p0, v0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iput p1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput p2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput p3, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/ejml/data/BlockMatrix64F;
    .locals 4

    new-instance v0, Lorg/ejml/data/BlockMatrix64F;

    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ejml/data/BlockMatrix64F;-><init>(III)V

    invoke-virtual {v0, p0}, Lorg/ejml/data/BlockMatrix64F;->set(Lorg/ejml/data/BlockMatrix64F;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0}, Lorg/ejml/data/BlockMatrix64F;->copy()Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public get(II)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BlockMatrix64F;->getIndex(II)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getData()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    return-object v0
.end method

.method public getIndex(II)I
    .locals 4

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    div-int v0, p1, v0

    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    div-int v1, p2, v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    mul-int/2addr v0, v3

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v0, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    mul-int/2addr v1, v3

    sub-int v1, v2, v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    rem-int v2, p1, v2

    iget v3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    rem-int v3, p2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public getNumCols()I
    .locals 1

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    return v0
.end method

.method public getNumElements()I
    .locals 2

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getNumRows()I
    .locals 1

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    return v0
.end method

.method public print()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public reshape(IIIZ)V
    .locals 0

    iput p3, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    invoke-virtual {p0, p1, p2, p4}, Lorg/ejml/data/BlockMatrix64F;->reshape(IIZ)V

    return-void
.end method

.method public reshape(IIZ)V
    .locals 4

    const/4 v3, 0x0

    mul-int v0, p1, p2

    iget-object v1, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iput p1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    :goto_0
    return-void

    :cond_0
    mul-int v0, p1, p2

    new-array v0, v0, [D

    if-eqz p3, :cond_1

    iget-object v1, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/BlockMatrix64F;->getNumElements()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput p1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    goto :goto_0
.end method

.method public set(IID)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BlockMatrix64F;->getIndex(II)I

    move-result v1

    aput-wide p3, v0, v1

    return-void
.end method

.method public set(Lorg/ejml/data/BlockMatrix64F;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iput v0, p0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v0, p0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    :cond_0
    iget-object v1, p1, Lorg/ejml/data/BlockMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public unsafe_get(II)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BlockMatrix64F;->getIndex(II)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public unsafe_set(IID)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/BlockMatrix64F;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BlockMatrix64F;->getIndex(II)I

    move-result v1

    aput-wide p3, v0, v1

    return-void
.end method
