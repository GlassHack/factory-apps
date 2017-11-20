.class public Lorg/ejml/alg/dense/misc/DeterminantFromMinor;
.super Ljava/lang/Object;


# instance fields
.field private dirty:Z

.field private levelIndexes:[I

.field private levelRemoved:[I

.field private levelResults:[D

.field private minWidth:I

.field private numOpen:I

.field private open:[I

.field private tempMat:Lorg/ejml/data/DenseMatrix64F;

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->dirty:Z

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No direct function for that width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p1, p2, :cond_2

    move p2, p1

    :cond_2
    iput p2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->minWidth:I

    iput p1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    add-int/lit8 v0, p2, -0x2

    sub-int v0, p1, v0

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->tempMat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method private createMinor(Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->minWidth:I

    add-int/lit8 v5, v0, -0x1

    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    sub-int/2addr v0, v5

    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    mul-int v6, v0, v2

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    aget v2, v2, v0

    add-int/2addr v2, v6

    move v3, v0

    move v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    iget-object v7, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->tempMat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v8

    invoke-virtual {v7, v3, v8, v9}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/2addr v3, v5

    iget v7, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    add-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initStructures()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    iput v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    iget-boolean v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->dirty:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->dirty:Z

    return-void
.end method

.method private openAdd(I)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    iget v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    aput p1, v0, v1

    return-void
.end method

.method private openAdd(II)V
    .locals 4

    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    :goto_0
    if-le v0, p1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    aput p2, v0, p1

    return-void
.end method

.method private openRemove(I)I
    .locals 5

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    iget v4, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    return v0
.end method

.method private putIntoOpen(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->numOpen:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->open:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aget v3, v3, p1

    if-le v2, v3, :cond_2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aget v2, v2, p1

    invoke-direct {p0, v0, v2}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->openAdd(II)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->openAdd(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compute(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->initStructures()V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_4

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    aget-wide v0, v0, v1

    return-wide v0

    :cond_2
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v2, v3

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    add-int/lit8 v5, v0, -0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    iget-object v8, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    aget-wide v8, v8, v0

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    aput-wide v2, v4, v5

    :goto_1
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->putIntoOpen(I)V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    iget-object v8, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    aget-wide v8, v8, v0

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    aput-wide v2, v4, v5

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->openRemove(I)I

    move-result v4

    iget-object v5, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aput v4, v5, v0

    iget v4, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->minWidth:I

    if-ne v2, v4, :cond_6

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->createMinor(Lorg/ejml/data/RowD1Matrix64F;)V

    iget v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->width:I

    mul-int/2addr v2, v0

    iget-object v4, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelRemoved:[I

    aget v4, v4, v0

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v4

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->tempMat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v2}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    rem-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    aget-wide v6, v2, v0

    add-double v3, v6, v4

    aput-wide v3, v2, v0

    :goto_2
    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->putIntoOpen(I)V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelIndexes:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/DeterminantFromMinor;->levelResults:[D

    aget-wide v6, v2, v0

    sub-double v3, v6, v4

    aput-wide v3, v2, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
