.class public Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V
    .locals 15

    add-int v2, p2, p11

    move-object/from16 v0, p9

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v3, v2

    move-object/from16 v0, p9

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-lt v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v3

    mul-double v3, v3, p7

    add-double v3, v3, p3

    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v13, v2, 0x1

    move v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v14, p12

    invoke-static/range {v2 .. v14}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    goto :goto_0
.end method

.method public static computeHouseHolderCol(ILorg/ejml/data/D1Submatrix64F;[DI)Z
    .locals 7

    invoke-static {p0, p1, p3}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->findMaxCol(ILorg/ejml/data/D1Submatrix64F;I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p3, v0, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeTauAndDivideCol(ILorg/ejml/data/D1Submatrix64F;ID)D

    move-result-wide v2

    invoke-virtual {p1, p3, p3}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-static {p0, p1, p3, v4, v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->divideElementsCol(ILorg/ejml/data/D1Submatrix64F;ID)V

    iget v6, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v6, p3

    div-double/2addr v4, v2

    aput-wide v4, p2, v6

    mul-double/2addr v0, v2

    neg-double v0, v0

    invoke-virtual {p1, p3, p3, v0, v1}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static computeHouseHolderRow(ILorg/ejml/data/D1Submatrix64F;[DI)Z
    .locals 18

    add-int/lit8 v3, p3, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->findMaxRow(ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v7

    const-wide/16 v3, 0x0

    cmpl-double v3, v7, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v6, p3, 0x1

    move/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeTauAndDivideRow(ILorg/ejml/data/D1Submatrix64F;IID)D

    move-result-wide v3

    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v5

    add-double v12, v5, v3

    add-int/lit8 v16, p3, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v17, v5, v6

    move/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move-object/from16 v14, p1

    move/from16 v15, p3

    invoke-static/range {v9 .. v17}, Lorg/ejml/alg/block/BlockVectorOps;->div_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v5, v5, p3

    div-double v9, v12, v3

    aput-wide v9, p2, v5

    add-int/lit8 v5, p3, 0x1

    neg-double v3, v3

    mul-double/2addr v3, v7

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5, v3, v4}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static computeTauAndDivideCol(ILorg/ejml/data/D1Submatrix64F;ID)D
    .locals 14

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v10, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    iget v5, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v5, :cond_2

    iget v5, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v5, v0

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v5, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v5, v5, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v5, v0

    iget v6, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v6, v11

    add-int/2addr v5, v6

    add-int v6, v5, p2

    iget v5, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v0, v5, :cond_0

    mul-int v3, v9, p2

    add-int v7, v6, v3

    aget-wide v3, v10, v7

    div-double v3, v3, p3

    aput-wide v3, v10, v7

    mul-double v5, v3, v3

    add-double/2addr v5, v1

    add-int v2, v7, v9

    add-int/lit8 v1, p2, 0x1

    move v12, v1

    move v13, v2

    move-wide v1, v5

    move v5, v12

    move v6, v13

    :goto_1
    if-ge v5, v11, :cond_1

    aget-wide v7, v10, v6

    div-double v7, v7, p3

    aput-wide v7, v10, v6

    mul-double/2addr v7, v7

    add-double/2addr v7, v1

    add-int/lit8 v1, v5, 0x1

    add-int v2, v6, v9

    move v5, v1

    move v6, v2

    move-wide v1, v7

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v11, :cond_1

    aget-wide v7, v10, v6

    div-double v7, v7, p3

    aput-wide v7, v10, v6

    mul-double/2addr v7, v7

    add-double/2addr v7, v1

    add-int/lit8 v1, v5, 0x1

    add-int v2, v6, v9

    move v5, v1

    move v6, v2

    move-wide v1, v7

    goto :goto_2

    :cond_1
    add-int/2addr v0, p0

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    return-wide v0
.end method

.method public static computeTauAndDivideRow(ILorg/ejml/data/D1Submatrix64F;IID)D
    .locals 18

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v13, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v1, v1, p3

    rem-int v2, p3, p0

    sub-int v2, v1, v2

    rem-int v14, p3, p0

    move v1, v2

    :goto_0
    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v1, v7, :cond_2

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v7, v1

    move/from16 v0, p0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v8, v8, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v7, v8

    mul-int v8, v12, v1

    add-int/2addr v7, v8

    mul-int v8, p2, v15

    add-int/2addr v8, v7

    if-ne v1, v2, :cond_0

    add-int v9, v8, v14

    aget-wide v5, v13, v9

    div-double v5, v5, p4

    aput-wide v5, v13, v9

    mul-double v7, v5, v5

    add-double/2addr v7, v3

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v3, v14, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    move-wide v3, v7

    move/from16 v7, v16

    move/from16 v8, v17

    :goto_1
    if-ge v7, v15, :cond_1

    add-int/lit8 v9, v8, 0x1

    aget-wide v10, v13, v8

    div-double v10, v10, p4

    aput-wide v10, v13, v8

    mul-double/2addr v10, v10

    add-double/2addr v10, v3

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v8, v9

    move-wide v3, v10

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_1

    add-int/lit8 v9, v8, 0x1

    aget-wide v10, v13, v8

    div-double v10, v10, p4

    aput-wide v10, v13, v8

    mul-double/2addr v10, v10

    add-double/2addr v10, v3

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v8, v9

    move-wide v3, v10

    goto :goto_2

    :cond_1
    add-int v1, v1, p0

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v3, v5, v3

    if-gez v3, :cond_3

    neg-double v1, v1

    :cond_3
    return-wide v1
.end method

.method public static computeW_Column(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[D[DI)V
    .locals 9

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v3, v0, v1

    add-int/lit8 v6, p5, 0x1

    aget-wide v4, p4, p5

    move v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->initializeW(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v3, 0x1

    move v0, v6

    :goto_0
    if-ge v3, v8, :cond_0

    invoke-static {p0, p1, v3, p3}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeY_t_V(ILorg/ejml/data/D1Submatrix64F;I[D)V

    add-int/lit8 v7, v0, 0x1

    aget-wide v5, p4, v0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeZ(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I[DD)V

    add-int/lit8 v3, v3, 0x1

    move v0, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeY_t_V(ILorg/ejml/data/D1Submatrix64F;I[D)V
    .locals 6

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v3, v0, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdCol(ILorg/ejml/data/D1Submatrix64F;IIII)D

    move-result-wide v0

    aput-wide v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static computeZ(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I[DD)V
    .locals 21

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v10, v2, v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v11, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v12, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v13, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-wide/from16 v0, p5

    neg-double v14, v0

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v3, v2

    move/from16 v0, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    mul-int v3, v2, v13

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v4, v4, v16

    add-int v5, v3, v4

    mul-int v3, v2, v13

    move-object/from16 v0, p2

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v4, v4, v16

    add-int/2addr v3, v4

    add-int v4, v3, p3

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v2

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v6, v6, v16

    add-int/2addr v3, v6

    add-int v3, v3, p3

    move-object/from16 v0, p1

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v2, v6, :cond_3

    const/4 v6, 0x0

    move v7, v3

    move v8, v4

    move v9, v5

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_5

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    move/from16 v0, p3

    if-ge v3, v0, :cond_0

    add-int v17, v9, v3

    aget-wide v17, v11, v17

    aget-wide v19, p4, v3

    mul-double v17, v17, v19

    add-double v4, v4, v17

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v17, v0

    mul-double v3, v17, v4

    aput-wide v3, v11, v8

    :goto_3
    add-int/lit8 v3, v6, 0x1

    add-int v5, v8, v10

    add-int v6, v9, v10

    add-int v4, v7, v10

    move v7, v4

    move v8, v5

    move v9, v6

    move v6, v3

    goto :goto_1

    :cond_1
    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v3, v17, v4

    mul-double/2addr v3, v14

    aput-wide v3, v11, v8

    goto :goto_3

    :cond_2
    aget-wide v17, v12, v7

    add-double v3, v17, v4

    mul-double/2addr v3, v14

    aput-wide v3, v11, v8

    goto :goto_3

    :cond_3
    mul-int v6, v10, v16

    add-int v9, v4, v6

    move v6, v3

    move v7, v4

    move v8, v5

    :goto_4
    if-eq v7, v9, :cond_5

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_5
    move/from16 v0, p3

    if-ge v3, v0, :cond_4

    add-int v16, v8, v3

    aget-wide v16, v11, v16

    aget-wide v18, p4, v3

    mul-double v16, v16, v18

    add-double v4, v4, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    aget-wide v16, v12, v6

    add-double v3, v16, v4

    mul-double/2addr v3, v14

    aput-wide v3, v11, v7

    add-int v4, v7, v10

    add-int v5, v8, v10

    add-int v3, v6, v10

    move v6, v3

    move v7, v4

    move v8, v5

    goto :goto_4

    :cond_5
    add-int v2, v2, p0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static decomposeQR_block_col(ILorg/ejml/data/D1Submatrix64F;[D)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p0, p1, p2, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeHouseHolderCol(ILorg/ejml/data/D1Submatrix64F;[DI)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v3, v1

    aget-wide v3, p2, v3

    invoke-static {p0, p1, v1, v3, v4}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->rank1UpdateMultR_Col(ILorg/ejml/data/D1Submatrix64F;ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static divideElementsCol(ILorg/ejml/data/D1Submatrix64F;ID)V
    .locals 8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v4, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v1, :cond_2

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/lit8 v1, p2, 0x1

    :goto_1
    if-ge v1, v5, :cond_1

    aget-wide v6, v4, v2

    div-double/2addr v6, p3

    aput-wide v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    mul-int v2, v3, v5

    add-int/2addr v2, v1

    :goto_2
    if-eq v1, v2, :cond_1

    aget-wide v5, v4, v1

    div-double/2addr v5, p3

    aput-wide v5, v4, v1

    add-int/2addr v1, v3

    goto :goto_2

    :cond_1
    add-int/2addr v0, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static findMaxCol(ILorg/ejml/data/D1Submatrix64F;I)D
    .locals 11

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v8, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v1, 0x0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v3, :cond_2

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v3, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v3, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v0

    iget v4, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v4, v9

    add-int/2addr v3, v4

    add-int v4, v3, p2

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v0, v3, :cond_1

    mul-int v3, v7, p2

    add-int/2addr v3, v4

    move v5, p2

    move v6, v3

    move-wide v3, v1

    :goto_1
    if-ge v5, v9, :cond_0

    aget-wide v1, v8, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v3

    if-lez v10, :cond_5

    :goto_2
    add-int/lit8 v3, v5, 0x1

    add-int v4, v6, v7

    move v5, v3

    move v6, v4

    move-wide v3, v1

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_3
    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    move-wide v3, v1

    :goto_4
    if-ge v5, v9, :cond_4

    aget-wide v1, v8, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v3

    if-lez v10, :cond_3

    :goto_5
    add-int/lit8 v3, v5, 0x1

    add-int v4, v6, v7

    move v5, v3

    move v6, v4

    move-wide v3, v1

    goto :goto_4

    :cond_2
    return-wide v1

    :cond_3
    move-wide v1, v3

    goto :goto_5

    :cond_4
    move-wide v1, v3

    goto :goto_3

    :cond_5
    move-wide v1, v3

    goto :goto_2
.end method

.method public static findMaxRow(ILorg/ejml/data/D1Submatrix64F;II)D
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v8, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    const-wide/16 v1, 0x0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    :goto_0
    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v0, v3, :cond_2

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v3, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v4, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v3, v4

    mul-int v4, v7, v0

    add-int/2addr v3, v4

    mul-int v4, p2, v9

    add-int/2addr v4, v3

    iget v3, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-ne v0, v3, :cond_1

    add-int v3, v4, p3

    move v5, p3

    move v11, v3

    move-wide v3, v1

    move v1, v11

    :goto_1
    if-ge v5, v9, :cond_0

    add-int/lit8 v6, v1, 0x1

    aget-wide v1, v8, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v3

    if-lez v10, :cond_5

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-wide v3, v1

    move v1, v6

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_3
    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v5, v3

    move v11, v4

    move-wide v3, v1

    move v1, v11

    :goto_4
    if-ge v5, v9, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget-wide v1, v8, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v10, v1, v3

    if-lez v10, :cond_3

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-wide v3, v1

    move v1, v6

    goto :goto_4

    :cond_2
    return-wide v1

    :cond_3
    move-wide v1, v3

    goto :goto_5

    :cond_4
    move-wide v1, v3

    goto :goto_3

    :cond_5
    move-wide v1, v3

    goto :goto_2
.end method

.method public static initializeW(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V
    .locals 11

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v4, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v0, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v5, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v1, :cond_2

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v6

    add-int v3, v1, v2

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v2, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v6

    add-int/2addr v2, v1

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v0, v1, :cond_0

    neg-double v7, p4

    aput-wide v7, v4, v3

    add-int/2addr v3, p3

    add-int/2addr v2, p3

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v6, :cond_1

    neg-double v7, p4

    aget-wide v9, v5, v2

    mul-double/2addr v7, v9

    aput-wide v7, v4, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p3

    add-int/2addr v2, p3

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    neg-double v7, p4

    aget-wide v9, v5, v2

    mul-double/2addr v7, v9

    aput-wide v7, v4, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p3

    add-int/2addr v2, p3

    goto :goto_2

    :cond_1
    add-int/2addr v0, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static innerProdCol(ILorg/ejml/data/D1Submatrix64F;IIII)D
    .locals 18

    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v8, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v1, v1, p2

    rem-int v4, p2, p0

    sub-int v9, v1, v4

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v1, v1, p4

    rem-int v4, p4, p0

    sub-int v10, v1, v4

    rem-int v11, p2, p0

    rem-int v12, p4, p0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v1, v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v4, v1

    move/from16 v0, p0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v4, v1

    mul-int v5, v6, v9

    add-int/2addr v4, v5

    add-int v5, v4, v11

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v4, v1

    mul-int v7, v6, v10

    add-int/2addr v4, v7

    add-int/2addr v4, v12

    move-object/from16 v0, p1

    iget v7, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v1, v7, :cond_0

    add-int/lit8 v2, v11, 0x1

    mul-int v2, v2, p3

    add-int v3, v5, v2

    mul-int v2, p5, v11

    add-int/2addr v2, v4

    aget-wide v4, v8, v2

    add-int v2, v2, p5

    sub-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x1

    mul-int v6, v6, p3

    add-int v13, v3, v6

    move/from16 v16, v2

    move/from16 v17, v3

    move-wide v2, v4

    move/from16 v4, v16

    move/from16 v5, v17

    :goto_1
    if-eq v5, v13, :cond_1

    aget-wide v6, v8, v5

    aget-wide v14, v8, v4

    mul-double/2addr v6, v14

    add-double/2addr v6, v2

    add-int v3, v5, p3

    add-int v2, v4, p5

    move v4, v2

    move v5, v3

    move-wide v2, v6

    goto :goto_1

    :cond_0
    mul-int v6, v6, p3

    add-int v13, v5, v6

    :goto_2
    if-eq v5, v13, :cond_1

    aget-wide v6, v8, v5

    aget-wide v14, v8, v4

    mul-double/2addr v6, v14

    add-double/2addr v6, v2

    add-int v3, v5, p3

    add-int v2, v4, p5

    move v4, v2

    move v5, v3

    move-wide v2, v6

    goto :goto_2

    :cond_1
    add-int v1, v1, p0

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public static innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D
    .locals 9

    add-int v0, p2, p5

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v0

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-lt v1, v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p3, p4, v0}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v7

    add-int/lit8 v5, v0, 0x1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v6, v0, v1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockVectorOps;->dot_row(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;III)D

    move-result-wide v0

    add-double/2addr v0, v7

    goto :goto_0
.end method

.method public static multAdd_zeros(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 12

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v7, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v9, v0

    :goto_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v9, v0, :cond_3

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v10, v0

    :goto_1
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v10, v0, :cond_2

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v9, v0

    iget v1, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v10, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v11, v0

    :goto_2
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v11, v0, :cond_1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v9

    mul-int v1, v11, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v0, v11, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v10, v7

    add-int v4, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v9, v0, :cond_0

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->multBlockAdd_zerosone([D[D[DIIIIII)V

    :goto_3
    add-int v0, v11, p0

    move v11, v0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlus([D[D[DIIIIII)V

    goto :goto_3

    :cond_1
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_2
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multBlockAdd_zerosone([D[D[DIIIIII)V
    .locals 14

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p6

    if-ge v5, v0, :cond_3

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p8

    if-ge v4, v0, :cond_2

    move/from16 v0, p7

    if-ge v5, v0, :cond_0

    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int v1, v1, p4

    aget-wide v1, p1, v1

    :goto_2
    move/from16 v0, p7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v3, 0x0

    move v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move v1, v11

    :goto_3
    if-ge v1, v6, :cond_1

    mul-int v7, v5, p7

    add-int/2addr v7, v1

    add-int v7, v7, p3

    aget-wide v7, p0, v7

    mul-int v9, v1, p8

    add-int/2addr v9, v4

    add-int v9, v9, p4

    aget-wide v9, p1, v9

    mul-double/2addr v7, v9

    add-double/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_1
    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int v1, v1, p5

    aget-wide v6, p2, v1

    add-double/2addr v2, v6

    aput-wide v2, p2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static multTransABlockSet_lowerTriag([D[D[DIIIIII)V
    .locals 13

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p7

    if-ge v5, v0, :cond_3

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move/from16 v0, p8

    if-ge v4, v0, :cond_2

    move/from16 v0, p6

    if-ge v5, v0, :cond_0

    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int v1, v1, p4

    aget-wide v1, p1, v1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v10, v3

    move-wide v11, v1

    move-wide v2, v11

    move v1, v10

    :goto_3
    move/from16 v0, p6

    if-ge v1, v0, :cond_1

    mul-int v6, v1, p7

    add-int/2addr v6, v5

    add-int v6, v6, p3

    aget-wide v6, p0, v6

    mul-int v8, v1, p8

    add-int/2addr v8, v4

    add-int v8, v8, p4

    aget-wide v8, p1, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_1
    mul-int v1, v5, p8

    add-int/2addr v1, v4

    add-int v1, v1, p5

    aput-wide v2, p2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static multTransA_vecCol(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V
    .locals 11

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v7, v0, v1

    if-le v7, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A is expected to be at most one block wide."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    move v9, v0

    :goto_0
    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v9, v0, :cond_3

    iget v0, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v0, v9

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v0, p3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v1, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v9, v1

    iget v2, p3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    add-int v5, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move v10, v0

    :goto_1
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v10, v0, :cond_2

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v0, v10

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, v0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v10

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v1, v6

    add-int v3, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v0, v10, v0

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v0, v1

    mul-int v1, v9, v6

    add-int v4, v0, v1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v10, v0, :cond_1

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->multTransABlockSet_lowerTriag([D[D[DIIIIII)V

    :goto_2
    add-int v0, v10, p0

    move v10, v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v1, p2, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v1, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    iget-object v2, p3, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockInnerMultiplication;->blockMultPlusTransA([D[D[DIIIIII)V

    goto :goto_2

    :cond_2
    add-int v0, v9, p0

    move v9, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultL_LeftCol(ILorg/ejml/data/D1Submatrix64F;IDI)V
    .locals 19

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v11, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v1, v1, p0

    move v7, v1

    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v7, v1, :cond_2

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v12, :cond_1

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v1, v7, v1

    add-int v5, v8, v1

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v1

    mul-double v13, v1, p3

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    mul-int v2, p2, v10

    add-int/2addr v1, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v7

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v3, v12

    add-int/2addr v2, v3

    mul-int v3, v8, v10

    add-int/2addr v2, v3

    add-int/lit8 v3, p5, 0x1

    add-int/2addr v3, v1

    add-int v1, v2, p5

    add-int/lit8 v2, v1, 0x1

    aget-wide v4, v11, v1

    sub-double/2addr v4, v13

    aput-wide v4, v11, v1

    add-int/lit8 v1, p5, 0x1

    move v4, v3

    :goto_2
    if-ge v1, v10, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-wide v15, v11, v2

    add-int/lit8 v5, v4, 0x1

    aget-wide v17, v11, v4

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    aput-wide v15, v11, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :cond_1
    add-int v1, v7, p0

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rank1UpdateMultL_Row(ILorg/ejml/data/D1Submatrix64F;IID)V
    .locals 18

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v10, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    sub-int v6, p3, p2

    add-int/lit8 v5, p2, 0x1

    :goto_0
    if-ge v5, v9, :cond_3

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v1

    mul-double v11, v1, p4

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v1, v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v2, v1

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v9, v1

    add-int/2addr v2, v3

    mul-int v3, p2, v13

    add-int v4, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v3

    mul-int v3, v9, v1

    add-int/2addr v2, v3

    mul-int v3, v5, v13

    add-int/2addr v3, v2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, p3, 0x1

    add-int/2addr v4, v2

    add-int v2, v3, p3

    add-int/lit8 v3, v2, 0x1

    aget-wide v7, v10, v2

    sub-double/2addr v7, v11

    aput-wide v7, v10, v2

    add-int/lit8 v2, p3, 0x1

    move v7, v4

    :goto_2
    if-ge v2, v13, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-wide v14, v10, v3

    add-int/lit8 v8, v7, 0x1

    aget-wide v16, v10, v7

    mul-double v16, v16, v11

    sub-double v14, v14, v16

    aput-wide v14, v10, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v7, v8

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v7, v4

    :goto_3
    if-ge v2, v13, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-wide v14, v10, v3

    add-int/lit8 v8, v7, 0x1

    aget-wide v16, v10, v7

    mul-double v16, v16, v11

    sub-double v14, v14, v16

    aput-wide v14, v10, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v7, v8

    goto :goto_3

    :cond_1
    add-int v1, v1, p0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultR_Col(ILorg/ejml/data/D1Submatrix64F;ID)V
    .locals 14

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v6, v0, Lorg/ejml/data/D1Matrix64F;->data:[D

    add-int/lit8 v4, p2, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    move v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdCol(ILorg/ejml/data/D1Submatrix64F;IIII)D

    move-result-wide v0

    mul-double v7, v0, p3

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    :goto_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    if-ge v0, v1, :cond_2

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget-object v1, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, v1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v5, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v5, v9

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    iget v5, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    if-ne v0, v5, :cond_0

    add-int/lit8 v5, p2, 0x1

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int v2, v3, p2

    add-int/2addr v1, v2

    aget-wide v10, v6, v1

    sub-double/2addr v10, v7

    aput-wide v10, v6, v1

    add-int v2, v1, v3

    add-int/lit8 v1, p2, 0x1

    :goto_2
    if-ge v1, v9, :cond_1

    aget-wide v10, v6, v2

    aget-wide v12, v6, v5

    mul-double/2addr v12, v7

    sub-double/2addr v10, v12

    aput-wide v10, v6, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v5, v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_0
    mul-int v5, v3, v9

    add-int/2addr v5, v2

    :goto_3
    if-eq v2, v5, :cond_1

    aget-wide v9, v6, v1

    aget-wide v11, v6, v2

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    aput-wide v9, v6, v1

    add-int/2addr v2, v3

    add-int/2addr v1, v3

    goto :goto_3

    :cond_1
    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static rank1UpdateMultR_TopRow(ILorg/ejml/data/D1Submatrix64F;ID)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v9, v1, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int v1, v1, p2

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v1, v1, p0

    move v7, v1

    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    if-ge v7, v1, :cond_2

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    sub-int/2addr v1, v7

    move/from16 v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_1

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v1, v7, v1

    add-int v5, v1, v8

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdCol(ILorg/ejml/data/D1Submatrix64F;IIII)D

    move-result-wide v1

    mul-double v10, v1, p3

    move-object/from16 v0, p1

    iget v1, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    sub-int/2addr v2, v1

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v2, v1

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int v2, v2, p2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v3, v3, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v3

    mul-int v3, v5, v7

    add-int/2addr v1, v3

    add-int/2addr v1, v8

    add-int/lit8 v3, p2, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    mul-int v2, v6, p2

    add-int/2addr v1, v2

    aget-wide v12, v9, v1

    sub-double/2addr v12, v10

    aput-wide v12, v9, v1

    add-int v2, v1, v6

    add-int/lit8 v1, p2, 0x1

    :goto_2
    if-ge v1, v5, :cond_0

    aget-wide v12, v9, v2

    aget-wide v14, v9, v3

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    aput-wide v12, v9, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v4

    add-int/2addr v2, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    :cond_1
    add-int v1, v7, p0

    move v7, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static scale_row(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;IID)V
    .locals 9

    add-int v0, p3, p4

    iget v1, p2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p3, v0, p5, p6}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v7, v0, 0x1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v8, v0, v1

    move v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v3, p5

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lorg/ejml/alg/block/BlockVectorOps;->scale_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    goto :goto_0
.end method
