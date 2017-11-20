.class public Lorg/ejml/alg/dense/misc/TransposeAlgs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static block(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;I)V
    .locals 13

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v0

    move v3, v0

    move v4, v2

    move v2, v1

    :goto_1
    iget v5, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v5, :cond_2

    iget v5, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    sub-int/2addr v5, v2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v9, v4, v5

    :goto_2
    if-ge v4, v9, :cond_1

    add-int v10, v3, v8

    move v5, v3

    move v7, v4

    :goto_3
    if-ge v5, v10, :cond_0

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v7}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v11

    invoke-virtual {p1, v5, v11, v12}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    iget v5, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v5, v7

    move v7, v5

    move v5, v6

    goto :goto_3

    :cond_0
    iget v5, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v2, p2

    goto :goto_1

    :cond_2
    add-int/2addr v0, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static square(Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 9

    const/4 v2, 0x1

    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v6

    invoke-virtual {p0, v3, v6, v7}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    invoke-virtual {p0, v2, v4, v5}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static standard(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v0, v2, :cond_1

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v4, v1, v2

    move v2, v0

    :goto_1
    if-ge v1, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2}, Lorg/ejml/data/RowD1Matrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p1, v1, v5, v6}, Lorg/ejml/data/RowD1Matrix64F;->set(ID)D

    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v1, v2

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
