.class public Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;
.super Ljava/lang/Object;


# instance fields
.field private Q:Lorg/ejml/data/DenseMatrix64F;

.field private Qm:Lorg/ejml/data/DenseMatrix64F;

.field private R:Lorg/ejml/data/DenseMatrix64F;

.field private U_tran:Lorg/ejml/data/DenseMatrix64F;

.field private autoGrow:Z

.field private m:I

.field private m_m:I

.field private maxCols:I

.field private maxRows:I

.field private n:I

.field private r_row:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->autoGrow:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->autoGrow:Z

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->declareInternalData(II)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->autoGrow:Z

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->declareInternalData(II)V

    return-void
.end method

.method private applyFirstGivens([D)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v1, 0x0

    aget-wide v6, v0, v1

    mul-double v0, v2, v2

    mul-double v4, v6, v6

    add-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v4, v2, v0

    div-double v2, v6, v0

    :goto_0
    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v6, v6, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    if-ge v0, v1, :cond_1

    aget-wide v6, p1, v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v8, v1, v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    mul-double v10, v4, v6

    mul-double v12, v2, v8

    add-double/2addr v10, v12

    aput-wide v10, v1, v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->r_row:[D

    mul-double/2addr v8, v4

    mul-double/2addr v6, v2

    sub-double v6, v8, v6

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    neg-double v2, v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    add-int/lit8 v1, v1, 0x1

    aput-wide v4, v0, v1

    return-void
.end method

.method private applyLaterGivens()V
    .locals 17

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->r_row:[D

    aget-wide v4, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    aget-wide v8, v2, v3

    mul-double v2, v4, v4

    mul-double v6, v8, v8

    add-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v6, v4, v2

    div-double v4, v8, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, v8, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v1

    aput-wide v2, v8, v9

    add-int/lit8 v2, v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->r_row:[D

    aget-wide v8, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v10, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v2

    aget-wide v10, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v12, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v12, v1

    add-int/2addr v12, v2

    mul-double v13, v6, v8

    mul-double v15, v4, v10

    add-double/2addr v13, v15

    aput-wide v13, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->r_row:[D

    mul-double/2addr v10, v6

    mul-double/2addr v8, v4

    sub-double v8, v10, v8

    aput-wide v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v3, v1, 0x1

    if-gt v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v8, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v2

    aget-wide v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v10, v1, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v10, v11

    add-int/2addr v10, v2

    aget-wide v10, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v12, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v12, v1

    add-int/2addr v12, v2

    mul-double v13, v6, v8

    mul-double v15, v4, v10

    add-double/2addr v13, v15

    aput-wide v13, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v2

    mul-double/2addr v10, v6

    mul-double/2addr v8, v4

    sub-double v8, v10, v8

    aput-wide v8, v3, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private computeRemoveGivens(I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/lit8 v8, v3, -0x2

    move-wide v3, v1

    :goto_0
    if-ltz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v2, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int v2, v2, p1

    add-int/2addr v2, v8

    aget-wide v5, v1, v2

    mul-double v1, v5, v5

    mul-double v9, v3, v3

    add-double/2addr v1, v9

    const-wide/16 v9, 0x0

    cmpl-double v7, v1, v9

    if-eqz v7, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v5, v1

    div-double/2addr v3, v1

    :goto_1
    move v7, v8

    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v7, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v10, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v7

    aget-wide v9, v9, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v11, v11, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v7

    aget-wide v11, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v13, v13, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move-object/from16 v0, p0

    iget v14, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v14, v8

    add-int/2addr v14, v7

    mul-double v15, v5, v9

    mul-double v17, v3, v11

    add-double v15, v15, v17

    aput-wide v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v13, v13, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v14, v15

    add-int/2addr v14, v7

    mul-double/2addr v11, v5

    mul-double/2addr v9, v3

    sub-double v9, v11, v9

    aput-wide v9, v13, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, -0x1

    move-wide v3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setQR(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;I)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Q should be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iput-object p2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->maxRows:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->maxCols:I

    if-le v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->autoGrow:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->declareInternalData(II)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Autogrow has been set to false and the maximum number of rows or columns has been exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateInsertQ(I)V
    .locals 13

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v2}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move v7, v1

    :goto_0
    if-ge v7, p1, :cond_2

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    if-ge v0, v2, :cond_1

    move v2, v1

    move-wide v3, v5

    :goto_2
    iget v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v8, v8, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v2

    aget-wide v8, v8, v9

    iget-object v10, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v10, v10, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v11, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v11, v0

    add-int/2addr v11, v2

    add-int/lit8 v11, v11, 0x1

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v0

    aput-wide v3, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v7, v0

    aget-wide v7, v4, v7

    aput-wide v7, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, p1, 0x1

    :goto_4
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    if-ge v0, v2, :cond_6

    move v2, v1

    :goto_5
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    if-ge v2, v3, :cond_5

    move v3, v1

    move-wide v7, v5

    :goto_6
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v9, v0, -0x1

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v3

    aget-wide v9, v4, v9

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v11, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    aget-wide v11, v4, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    aput-wide v7, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateRemoveQ(I)V
    .locals 14

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v2}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    invoke-virtual {v0, v2, v4, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move v8, v3

    :goto_0
    if-ge v8, p1, :cond_2

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v0, v2, :cond_1

    move v2, v3

    move-wide v4, v6

    :goto_2
    iget v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v2, v9, :cond_0

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v9, v9, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v2

    aget-wide v9, v9, v10

    iget-object v11, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v11, v11, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v12, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v12, v0

    add-int/2addr v12, v2

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v9, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    aput-wide v4, v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v0, v2, :cond_5

    move v2, v1

    :goto_4
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v2, v4, :cond_4

    move v4, v3

    move-wide v8, v6

    :goto_5
    iget v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v10, v0

    add-int/2addr v10, v4

    aget-wide v10, v5, v10

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v12, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v12, v2

    add-int/2addr v12, v4

    aget-wide v12, v5, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v5, v0, -0x1

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v5, v10

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    aput-wide v8, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private updateRemoveR()V
    .locals 9

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    if-ge v1, v2, :cond_1

    const-wide/16 v3, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-gt v2, v1, :cond_0

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget-object v5, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-wide v5, v5, v6

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v8, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    aget-wide v7, v7, v8

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    aput-wide v3, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addRow(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;[DIZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->setQR(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;I)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Q matrix does not have enough data to grow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "R matrix does not have enough data to grow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    invoke-virtual {p2, v0, v1, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    invoke-direct {p0, p3}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->applyFirstGivens([D)V

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->applyLaterGivens()V

    invoke-direct {p0, p4}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->updateInsertQ(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public declareInternalData(II)V
    .locals 1

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->maxRows:I

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->maxCols:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Qm:Lorg/ejml/data/DenseMatrix64F;

    new-array v0, p2, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->r_row:[D

    return-void
.end method

.method public deleteRow(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;IZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->setQR(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;I)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Removing any row would make the system under determined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    if-eqz p4, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->m_m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->n:I

    invoke-virtual {p2, v0, v1, v3}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    :cond_1
    invoke-direct {p0, p3}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->computeRemoveGivens(I)V

    invoke-direct {p0, p3}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->updateRemoveQ(I)V

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->updateRemoveR()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->R:Lorg/ejml/data/DenseMatrix64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public getU_tran()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/qr/QrUpdate;->U_tran:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method
