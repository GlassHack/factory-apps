.class public Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private UBV:Lorg/ejml/data/DenseMatrix64F;

.field private b:[D

.field private gammasU:[D

.field private gammasV:[D

.field private m:I

.field private min:I

.field private n:I

.field private u:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    return-void
.end method

.method private _decompose()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->computeU(I)V

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->computeV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static handleB(Lorg/ejml/data/DenseMatrix64F;ZIII)Lorg/ejml/data/DenseMatrix64F;
    .locals 2

    const/4 v1, 0x0

    if-le p3, p2, :cond_0

    add-int/lit8 v0, p4, 0x1

    :goto_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p4, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_1
    return-object p0

    :cond_0
    move v0, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p2, p3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    goto :goto_1
.end method

.method public static handleU(Lorg/ejml/data/DenseMatrix64F;ZZIII)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p5, p3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p5, p3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p3, p5}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3, p5, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p3, p3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3, p3, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0
.end method

.method public static handleV(Lorg/ejml/data/DenseMatrix64F;ZZIII)Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    add-int/lit8 p5, p5, 0x1

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p5, p4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p5, p4, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p4, p5}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p4, p5, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    new-instance p0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p0, p4, p4}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p4, p4, v0}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    goto :goto_0
.end method


# virtual methods
.method protected computeU(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v3, 0x0

    move-wide/from16 v16, v3

    move/from16 v3, p1

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    if-ge v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    mul-int/2addr v5, v3

    add-int v5, v5, p1

    aget-wide v5, v7, v5

    aput-wide v5, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, v16

    if-lez v6, :cond_2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double v3, v16, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    move/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v3, v4, v1, v2}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    aget-wide v3, v3, p1

    add-double v9, v3, v18

    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    move/from16 v8, p1

    invoke-static/range {v3 .. v10}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements_Bcol(III[D[DID)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, p1

    div-double v10, v9, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    aput-wide v10, v3, p1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    add-int/lit8 v12, p1, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    move/from16 v13, p1

    invoke-static/range {v8 .. v15}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    mul-int v3, v3, p1

    add-int v3, v3, p1

    move-wide/from16 v0, v18

    neg-double v4, v0

    mul-double v4, v4, v16

    aput-wide v4, v7, v3

    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p1

    goto :goto_2

    :cond_2
    move-wide/from16 v4, v16

    goto :goto_1
.end method

.method protected computeV(I)V
    .locals 13

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    mul-int v3, p1, v0

    add-int v0, v3, p1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v1}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->findMax([DII)D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->computeTauAndDivide(II[DID)D

    move-result-wide v0

    add-int v6, v3, p1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v2, v6

    add-double v11, v6, v0

    add-int/lit8 v6, p1, 0x2

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget-object v8, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    move-object v9, v2

    move v10, v3

    invoke-static/range {v6 .. v12}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->divideElements_Brow(II[D[DID)V

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    add-int/lit8 v7, p1, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v7

    div-double v8, v11, v0

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    aput-wide v8, v6, p1

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    add-int/lit8 v10, p1, 0x1

    add-int/lit8 v11, p1, 0x1

    iget v12, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    invoke-static/range {v6 .. v12}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    neg-double v0, v0

    mul-double/2addr v0, v4

    aput-wide v0, v2, v3

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    aput-wide v6, v0, p1

    goto :goto_0
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->init(Lorg/ejml/data/DenseMatrix64F;)V

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->_decompose()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getB(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    invoke-static {p1, p2, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->handleB(Lorg/ejml/data/DenseMatrix64F;ZIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v4, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {v1, v4, v4, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    invoke-virtual {v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getB(Lorg/ejml/data/Matrix64F;Z)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->getB(Lorg/ejml/data/DenseMatrix64F;Z)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonal([D[D)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v0

    aput-wide v0, p1, v2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v1, v0, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGammasU()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    return-object v0
.end method

.method public getGammasV()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    return-object v0
.end method

.method public getU(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;
    .locals 8

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->handleU(Lorg/ejml/data/DenseMatrix64F;ZZIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_3

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v4

    add-int/lit8 v1, v4, 0x1

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v1, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    aget-wide v2, v2, v4

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    aget-wide v2, v2, v4

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    move v5, v4

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public bridge synthetic getU(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->getU(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getUBV()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getV(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;
    .locals 9

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->handleV(Lorg/ejml/data/DenseMatrix64F;ZZIII)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_0
    if-ltz v8, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    add-int/lit8 v2, v8, 0x1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    add-int/lit8 v1, v8, 0x2

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v8, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    aget-wide v2, v2, v8

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    :goto_2
    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    aget-wide v2, v2, v8

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getV(Lorg/ejml/data/Matrix64F;ZZ)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->getV(Lorg/ejml/data/DenseMatrix64F;ZZ)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 3

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->UBV:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->min:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->b:[D

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->u:[D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->m:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasU:[D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    array-length v0, v0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->n:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/bidiagonal/BidiagonalDecompositionRow;->gammasV:[D

    :cond_2
    return-void
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
