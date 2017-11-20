.class public Lorg/ejml/data/DenseMatrix64F;
.super Lorg/ejml/data/RowD1Matrix64F;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/data/RowD1Matrix64F;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/data/RowD1Matrix64F;-><init>()V

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/data/RowD1Matrix64F;-><init>()V

    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput p1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    return-void
.end method

.method public varargs constructor <init>(IIZ[D)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/data/RowD1Matrix64F;-><init>()V

    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput p1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DenseMatrix64F;->set(IIZ[D)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v1, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/Matrix64F;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    invoke-direct {p0, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/ejml/data/RowD1Matrix64F;-><init>()V

    array-length v0, p1

    iput v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    aget-object v0, p1, v1

    array-length v0, v0

    iput v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, v2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    array-length v4, v3

    iget v5, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v4, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All rows must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v5, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static wrap(II[D)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0}, Lorg/ejml/data/DenseMatrix64F;-><init>()V

    iput-object p2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput p0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput p1, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    return-object v0
.end method


# virtual methods
.method public add(IID)V
    .locals 4

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified element is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-wide v2, v0, v1

    add-double/2addr v2, p3

    aput-wide v2, v0, v1

    return-void
.end method

.method public copy()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p0}, Lorg/ejml/data/DenseMatrix64F;-><init>(Lorg/ejml/data/DenseMatrix64F;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/ejml/data/Matrix64F;
    .locals 1

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->copy()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public get(II)D
    .locals 3

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified element is out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getIndex(II)I
    .locals 1

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public getNumElements()I
    .locals 2

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;Ljava/lang/String;)V

    return-void
.end method

.method public reshape(IIZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v0, v0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_1

    mul-int v0, p1, p2

    new-array v0, v0, [D

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    :cond_1
    iput p1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput p2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    return-void
.end method

.method public set(IID)V
    .locals 3

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge p2, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified element is out of bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    return-void
.end method

.method public varargs set(IIZ[D)V
    .locals 8

    const/4 v1, 0x0

    mul-int v0, p1, p2

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq p2, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix shape."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v2, v2

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of this matrix\'s data array is too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v2, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {p4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void

    :cond_4
    move v4, v1

    move v0, v1

    :goto_0
    if-ge v4, p1, :cond_3

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_5

    iget-object v5, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    mul-int v6, v0, p1

    add-int/2addr v6, v4

    aget-wide v6, p4, v6

    aput-wide v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0
.end method

.method public setReshape(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    iget-object v1, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v1, v1

    if-ge v1, v0, :cond_0

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    :cond_0
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v1, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v1, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, p0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsafe_get(II)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public unsafe_set(IID)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    return-void
.end method

.method public zero()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    return-void
.end method
