.class public Lorg/ejml/alg/block/BlockVectorOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V
    .locals 21

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p5

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p9

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p9

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    rem-int v1, p11, p0

    sub-int v9, p11, v1

    rem-int v7, p11, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v13, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v14, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p9

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v15, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move v8, v9

    :goto_0
    move/from16 v0, p12

    if-ge v8, v0, :cond_2

    sub-int v1, p12, v8

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p5

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p5

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p9

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p9

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    move/from16 v0, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v8

    mul-int/2addr v4, v10

    add-int/2addr v3, v4

    mul-int v1, v1, p2

    add-int v4, v3, v1

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v3

    move-object/from16 v0, p5

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v3, v8

    mul-int/2addr v3, v11

    add-int/2addr v1, v3

    mul-int v2, v2, p6

    add-int v3, v1, v2

    move-object/from16 v0, p9

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p9

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    move-object/from16 v0, p9

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v2, v8

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    mul-int v2, p10, v5

    add-int/2addr v2, v1

    if-ne v8, v9, :cond_0

    add-int/2addr v4, v7

    add-int/2addr v3, v7

    add-int v1, v2, v7

    move v2, v1

    move v5, v4

    move v4, v3

    move v1, v7

    :goto_1
    move/from16 v0, v16

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-wide v17, v13, v5

    mul-double v17, v17, p3

    add-int/lit8 v5, v4, 0x1

    aget-wide v19, v14, v4

    mul-double v19, v19, p7

    add-double v17, v17, v19

    aput-wide v17, v15, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    move v5, v6

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    :goto_2
    move/from16 v0, v16

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-wide v17, v13, v5

    mul-double v17, v17, p3

    add-int/lit8 v5, v4, 0x1

    aget-wide v19, v14, v4

    mul-double v19, v19, p7

    add-double v17, v17, v19

    aput-wide v17, v15, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_1
    add-int v1, v8, p0

    move v8, v1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static div_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v9, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v10, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    rem-int v1, p7, p0

    sub-int v8, p7, v1

    rem-int v6, p7, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p2

    rem-int v2, p2, p0

    sub-int v11, v1, v2

    rem-int v12, p2, p0

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p6

    rem-int v2, p6, p0

    sub-int v13, v1, v2

    rem-int v14, p6, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v11

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v13

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v7, v8

    :goto_0
    move/from16 v0, p8

    if-ge v7, v0, :cond_2

    sub-int v1, p8, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p5

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p5

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v11

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v7

    mul-int/2addr v4, v15

    add-int/2addr v3, v4

    mul-int/2addr v1, v12

    add-int/2addr v3, v1

    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v13

    move-object/from16 v0, p5

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v7

    mul-int v4, v4, v16

    add-int/2addr v1, v4

    mul-int/2addr v2, v14

    add-int/2addr v2, v1

    if-ne v7, v8, :cond_0

    add-int/2addr v3, v6

    add-int v1, v2, v6

    move v2, v1

    move v4, v3

    move v1, v6

    :goto_1
    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-wide v18, v9, v4

    div-double v18, v18, p3

    aput-wide v18, v10, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v4, v3

    :goto_2
    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-wide v18, v9, v4

    div-double v18, v18, p3

    aput-wide v18, v10, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_2

    :cond_1
    add-int v1, v7, p0

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dot_row(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;III)D
    .locals 23

    rem-int v1, p5, p0

    sub-int v10, p5, v1

    rem-int v8, p5, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v11, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v12, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p2

    rem-int v2, p2, p0

    sub-int v13, v1, v2

    rem-int v14, p2, p0

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p4

    rem-int v2, p4, p0

    sub-int v15, v1, v2

    rem-int v16, p4, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v13

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v15

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_0
    move v9, v10

    :goto_0
    move/from16 v0, p6

    if-ge v9, v0, :cond_3

    sub-int v1, p6, v9

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v9

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v13

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v6, v9

    mul-int v6, v6, v17

    add-int/2addr v3, v6

    mul-int/2addr v1, v14

    add-int/2addr v3, v1

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v15

    move-object/from16 v0, p3

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v6, v9

    mul-int v6, v6, v18

    add-int/2addr v1, v6

    mul-int v2, v2, v16

    add-int/2addr v2, v1

    if-ne v9, v10, :cond_1

    add-int/2addr v3, v8

    add-int v1, v2, v8

    move v6, v3

    move v3, v8

    move/from16 v22, v1

    move-wide v1, v4

    move/from16 v4, v22

    :goto_1
    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-wide v20, v12, v4

    add-int/lit8 v4, v6, 0x1

    aget-wide v6, v11, v6

    mul-double v6, v6, v20

    add-double/2addr v6, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v6

    move v6, v4

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v6, v3

    move v3, v1

    move/from16 v22, v2

    move-wide v1, v4

    move/from16 v4, v22

    :goto_2
    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-wide v20, v12, v4

    add-int/lit8 v4, v6, 0x1

    aget-wide v6, v11, v6

    mul-double v6, v6, v20

    add-double/2addr v6, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v6

    move v6, v4

    move v4, v5

    goto :goto_2

    :cond_2
    add-int v3, v9, p0

    move v9, v3

    move-wide v4, v1

    goto/16 :goto_0

    :cond_3
    return-wide v4
.end method

.method public static dot_row_col(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;III)D
    .locals 25

    rem-int v1, p5, p0

    sub-int v11, p5, v1

    rem-int v9, p5, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v12, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v13, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p2

    rem-int v2, p2, p0

    sub-int v14, v1, v2

    rem-int v15, p2, p0

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v1, v1, p4

    rem-int v2, p4, p0

    sub-int v16, v1, v2

    rem-int v17, p4, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v14

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int v1, v1, v16

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_0
    move v10, v11

    :goto_0
    move/from16 v0, p6

    if-ge v10, v0, :cond_3

    sub-int v1, p6, v10

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p3

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v14

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v6, v10

    mul-int v6, v6, v18

    add-int/2addr v3, v6

    mul-int/2addr v1, v15

    add-int/2addr v3, v1

    move-object/from16 v0, p3

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v1, v10

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v6, v6, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v6

    mul-int v2, v2, v16

    add-int/2addr v1, v2

    add-int v2, v1, v17

    if-ne v10, v11, :cond_1

    add-int/2addr v3, v9

    mul-int v1, v9, v19

    add-int/2addr v1, v2

    move/from16 v23, v1

    move-wide v1, v4

    move v5, v3

    move/from16 v4, v23

    move v3, v9

    :goto_1
    move/from16 v0, v20

    if-ge v3, v0, :cond_2

    aget-wide v7, v13, v4

    add-int/lit8 v6, v5, 0x1

    aget-wide v21, v12, v5

    mul-double v7, v7, v21

    add-double/2addr v7, v1

    add-int/lit8 v1, v3, 0x1

    add-int v2, v4, v19

    move v3, v1

    move v4, v2

    move v5, v6

    move-wide v1, v7

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move/from16 v23, v1

    move/from16 v24, v2

    move-wide v1, v4

    move v5, v3

    move/from16 v4, v24

    move/from16 v3, v23

    :goto_2
    move/from16 v0, v20

    if-ge v3, v0, :cond_2

    aget-wide v7, v13, v4

    add-int/lit8 v6, v5, 0x1

    aget-wide v21, v12, v5

    mul-double v7, v7, v21

    add-double/2addr v7, v1

    add-int/lit8 v1, v3, 0x1

    add-int v2, v4, v19

    move v3, v1

    move v4, v2

    move v5, v6

    move-wide v1, v7

    goto :goto_2

    :cond_2
    add-int v3, v10, p0

    move v10, v3

    move-wide v4, v1

    goto/16 :goto_0

    :cond_3
    return-wide v4
.end method

.method public static scale_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v9, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v10, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    rem-int v1, p7, p0

    sub-int v8, p7, v1

    rem-int v6, p7, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p2

    rem-int v2, p2, p0

    sub-int v11, v1, v2

    rem-int v12, p2, p0

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p6

    rem-int v2, p6, p0

    sub-int v13, v1, v2

    rem-int v14, p6, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v11

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p5

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v13

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v7, v8

    :goto_0
    move/from16 v0, p8

    if-ge v7, v0, :cond_2

    sub-int v1, p8, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p5

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p5

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v11

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v7

    mul-int/2addr v4, v15

    add-int/2addr v3, v4

    mul-int/2addr v1, v12

    add-int/2addr v3, v1

    move-object/from16 v0, p5

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v13

    move-object/from16 v0, p5

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v4, v7

    mul-int v4, v4, v16

    add-int/2addr v1, v4

    mul-int/2addr v2, v14

    add-int/2addr v2, v1

    if-ne v7, v8, :cond_0

    add-int/2addr v3, v6

    add-int v1, v2, v6

    move v2, v1

    move v4, v3

    move v1, v6

    :goto_1
    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-wide v18, v9, v4

    mul-double v18, v18, p3

    aput-wide v18, v10, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v4, v3

    :goto_2
    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-wide v18, v9, v4

    mul-double v18, v18, p3

    aput-wide v18, v10, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_2

    :cond_1
    add-int v1, v7, p0

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method
