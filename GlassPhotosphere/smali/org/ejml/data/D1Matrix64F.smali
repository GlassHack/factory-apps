.class public abstract Lorg/ejml/data/D1Matrix64F;
.super Lorg/ejml/data/Matrix64F;


# instance fields
.field public data:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/data/Matrix64F;-><init>()V

    return-void
.end method


# virtual methods
.method public div(ID)D
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v1, v0, p1

    div-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getData()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    return-object v0
.end method

.method public abstract getIndex(II)I
.end method

.method public minus(ID)D
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v1, v0, p1

    sub-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public plus(ID)D
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method

.method public set(ID)D
    .locals 1

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aput-wide p2, v0, p1

    return-wide p2
.end method

.method public set(Lorg/ejml/data/D1Matrix64F;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/ejml/alg/dense/mult/MatrixDimensionException;

    const-string v1, "The two matrices do not have compatible shapes."

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/mult/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/ejml/data/D1Matrix64F;->getNumElements()I

    move-result v0

    iget-object v1, p1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setData([D)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    return-void
.end method

.method public times(ID)D
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Matrix64F;->data:[D

    aget-wide v1, v0, p1

    mul-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-wide v1
.end method
