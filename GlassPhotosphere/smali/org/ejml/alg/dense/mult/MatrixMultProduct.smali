.class public Lorg/ejml/alg/dense/mult/MatrixMultProduct;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inner_reorder(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v1, :cond_4

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v4, v2, v0

    move v2, v1

    move v1, v0

    :goto_1
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v1, v3, :cond_0

    iget-object v6, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    iget-object v7, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v7, v7, v1

    mul-double/2addr v7, v4

    aput-wide v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_2
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v1, v2, :cond_2

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v0

    add-int v3, v2, v0

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v4, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v7, v4, v2

    move v5, v3

    move v3, v2

    move v2, v0

    :goto_3
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_1

    iget-object v9, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v6, v5, 0x1

    aget-wide v10, v9, v5

    iget-object v12, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v12, v12, v3

    mul-double/2addr v12, v7

    add-double/2addr v10, v12

    aput-wide v10, v9, v5

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    move v2, v1

    move v3, v1

    move v1, v0

    :goto_4
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v1, v4, :cond_3

    iget-object v5, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    iget-object v6, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v6, v6, v3

    aput-wide v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    iget v3, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v2, v3

    move v3, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static inner_reorder_upper(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v1, :cond_3

    iget v1, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v4, v2, v0

    move v2, v1

    move v1, v0

    :goto_1
    iget v3, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v1, v3, :cond_0

    iget-object v6, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    iget-object v7, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v7, v7, v1

    mul-double/2addr v7, v4

    aput-wide v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_2
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v1, v2, :cond_2

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v0

    add-int v3, v2, v0

    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v4, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v7, v4, v2

    move v5, v3

    move v3, v2

    move v2, v0

    :goto_3
    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v2, v4, :cond_1

    iget-object v9, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v6, v5, 0x1

    aget-wide v10, v9, v5

    iget-object v12, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    aget-wide v12, v12, v3

    mul-double/2addr v12, v7

    add-double/2addr v10, v12

    aput-wide v10, v9, v5

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static inner_small(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 13

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v0, v1, :cond_2

    move v1, v0

    :goto_1
    iget v2, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    if-ge v1, v2, :cond_1

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v0

    add-int v6, v2, v1

    iget v2, p1, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v1

    add-int v7, v2, v0

    const-wide/16 v2, 0x0

    iget v4, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    iget v5, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v4, v5

    add-int v8, v0, v4

    move v4, v1

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    iget-object v9, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v9, v9, v5

    iget-object v11, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v11, v11, v4

    mul-double/2addr v9, v11

    add-double/2addr v2, v9

    iget v9, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v5, v9

    iget v9, p0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v4, v9

    goto :goto_2

    :cond_0
    iget-object v4, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    iget-object v5, p1, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aput-wide v2, v5, v7

    aput-wide v2, v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static outer(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V
    .locals 17

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v1, v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    if-ge v2, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v8, v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    mul-int v7, v2, v5

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int v10, v8, v9

    move v9, v8

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    :goto_2
    if-ge v9, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v11, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    aget-wide v13, v5, v8

    mul-double/2addr v11, v13

    add-double v5, v6, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move-wide v15, v5

    move-wide v6, v15

    goto :goto_2

    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    add-int/lit8 v5, v4, 0x1

    aput-wide v6, v9, v4

    aput-wide v6, v8, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/RowD1Matrix64F;->numCols:I

    add-int/2addr v3, v4

    move v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
