.class public Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyReflectorsToRow(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I)V
    .locals 23

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v3, v4

    move/from16 v0, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v3, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v0, v3, Lorg/ejml/data/D1Matrix64F;->data:[D

    move-object/from16 v18, v0

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v9, v0, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v3, v4

    move/from16 v0, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v4, v4, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v5, v5, v16

    add-int/2addr v4, v5

    mul-int v5, v9, v3

    add-int/2addr v4, v5

    add-int v4, v4, p3

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v5, v5, Lorg/ejml/data/D1Matrix64F;->numCols:I

    move-object/from16 v0, p2

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    mul-int/2addr v5, v6

    move-object/from16 v0, p2

    iget v6, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int v6, v6, v16

    add-int/2addr v5, v6

    mul-int/2addr v3, v9

    add-int/2addr v3, v5

    add-int v3, v3, p3

    add-int/lit8 v5, v9, 0x1

    move/from16 v0, p3

    if-ne v5, v0, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :goto_1
    aget-wide v19, v18, v3

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v3}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v21

    add-int/lit8 v3, v9, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v3, v4, v5}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v15, v3, v4

    move/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v8, p2

    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v14, p3

    invoke-static/range {v3 .. v15}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v15, v3, v4

    move/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v8, p1

    move-wide/from16 v10, v19

    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v14, p3

    invoke-static/range {v3 .. v15}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v9, v3, v1, v2}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_0
    aget-wide v10, v17, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static computeRowOfV(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V
    .locals 19

    const/4 v9, 0x1

    move/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v4

    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v17

    add-int/lit8 v6, p3, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v6, v7, v8}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    mul-double v9, v9, p4

    mul-double v11, v9, v4

    add-int/lit8 v15, p3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v16, v4, v5

    move/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p1

    move/from16 v10, p3

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v4 .. v16}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    add-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    return-void
.end method

.method public static computeV_blockVector(ILorg/ejml/data/D1Submatrix64F;[DLorg/ejml/data/D1Submatrix64F;)V
    .locals 7

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v3

    aget-wide v4, p2, v0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->computeY(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->computeRowOfV(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static computeW_row(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;[DI)V
    .locals 24

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v10, v2, v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/lit8 v9, p4, 0x1

    aget-wide v2, p3, p4

    neg-double v7, v2

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->scale_row(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;IID)V

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/4 v4, 0x1

    move v2, v9

    :goto_0
    move/from16 v0, v21

    if-ge v4, v0, :cond_1

    add-int/lit8 v20, v2, 0x1

    aget-wide v2, p3, v2

    neg-double v0, v2

    move-wide/from16 v22, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    const/4 v7, 0x1

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v7}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v14, v22, v2

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v19, v2, v3

    move/from16 v7, p0

    move-object/from16 v8, p2

    move v9, v4

    move-object/from16 v12, p2

    move v13, v6

    move-object/from16 v16, p2

    move/from16 v17, v4

    invoke-static/range {v7 .. v19}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v14, v2, v3

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v5, v22

    move-object/from16 v7, p2

    move v8, v4

    move-object/from16 v11, p2

    move v12, v4

    invoke-static/range {v2 .. v14}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeY(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V
    .locals 20

    invoke-static/range {p0 .. p3}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->multA_u(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I)V

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_0

    const/4 v7, 0x1

    move/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v14

    const/4 v7, 0x1

    move/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v7}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->innerProdRow(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v18, p3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v19, v4, v5

    move/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p1

    move v13, v6

    move-object/from16 v16, p2

    move/from16 v17, p3

    invoke-static/range {v7 .. v19}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v18, p3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v19, v4, v5

    move/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p2

    move v13, v6

    move-wide v14, v2

    move-object/from16 v16, p2

    move/from16 v17, p3

    invoke-static/range {v7 .. v19}, Lorg/ejml/alg/block/BlockVectorOps;->add_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p4

    neg-double v5, v0

    add-int/lit8 v9, p3, 0x1

    move-object/from16 v0, p2

    iget v2, v0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v10, v2, v3

    move/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v10}, Lorg/ejml/alg/block/BlockVectorOps;->scale_row(ILorg/ejml/data/D1Submatrix64F;IDLorg/ejml/data/D1Submatrix64F;III)V

    return-void
.end method

.method public static innerProdRowSymm(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D
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
    if-ge v0, p4, :cond_1

    invoke-virtual {p3, v0, p4}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v7

    add-int/lit8 v5, v0, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockVectorOps;->dot_row_col(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;III)D

    move-result-wide v0

    add-double/2addr v7, v0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int v6, v0, v1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/block/BlockVectorOps;->dot_row(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;III)D

    move-result-wide v0

    add-double/2addr v0, v7

    goto :goto_0

    :cond_1
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

.method public static multA_u(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I)V
    .locals 7

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int v6, v0, v1

    add-int/lit8 v4, p3, 0x1

    :goto_0
    if-ge v4, v6, :cond_0

    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->innerProdRowSymm(ILorg/ejml/data/D1Submatrix64F;ILorg/ejml/data/D1Submatrix64F;II)D

    move-result-wide v0

    invoke-virtual {p2, p3, v4, v0, v1}, Lorg/ejml/data/D1Submatrix64F;->set(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static tridiagUpperRow(ILorg/ejml/data/D1Submatrix64F;[DLorg/ejml/data/D1Submatrix64F;)V
    .locals 8

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-static {p0, p1, p2, v3}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeHouseHolderRow(ILorg/ejml/data/D1Submatrix64F;[DI)Z

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v3

    aget-wide v4, p2, v0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->computeY(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->computeRowOfV(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ID)V

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v7, :cond_2

    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, p1, p3, v0}, Lorg/ejml/alg/block/decomposition/hessenberg/TridiagonalBlockHelper;->applyReflectorsToRow(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
