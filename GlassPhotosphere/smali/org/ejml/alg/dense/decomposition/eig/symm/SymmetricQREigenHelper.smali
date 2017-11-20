.class public Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;
.super Ljava/lang/Object;


# instance fields
.field protected N:I

.field protected Q:Lorg/ejml/data/DenseMatrix64F;

.field private bulge:D

.field private c:D

.field private c2:D

.field private cs:D

.field protected diag:[D

.field protected eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

.field protected lastExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[D

.field protected rand:Ljava/util/Random;

.field private s:D

.field private s2:D

.field protected splits:[I

.field protected steps:I

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->rand:Ljava/util/Random;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    return-void
.end method

.method private computeRotation(DD)V
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    div-double v0, p1, p3

    mul-double v2, v0, v0

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v6, v8, v2

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double v6, v0, v0

    div-double/2addr v6, v2

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    div-double v2, v0, v2

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    div-double v2, v8, v4

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    :goto_0
    return-void

    :cond_0
    div-double v0, p3, p1

    mul-double v2, v0, v0

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v6, v8, v2

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double v6, v0, v0

    div-double/2addr v6, v2

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    div-double v2, v0, v2

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    div-double v2, v8, v4

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    goto :goto_0
.end method


# virtual methods
.method public computeShift()D
    .locals 2

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeWilkinsonShift()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public computeWilkinsonShift()D
    .locals 15

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v9, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v11, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    aget-wide v13, v0, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    :goto_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    move-wide v7, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmpl-double v0, v7, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this should never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    div-double v1, v9, v7

    div-double v3, v11, v7

    div-double v5, v13, v7

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->symm2x2_fast(DDD)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->real:D

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v0, v7

    :goto_2
    return-wide v0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v0, v7

    goto :goto_2

    :cond_3
    move-wide v7, v2

    goto :goto_1
.end method

.method public copyDiag([D)[D
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    new-array p1, v0, [D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyEigenvalues([D)[D
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    new-array p1, v0, [D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public copyOff([D)[D
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    add-int/lit8 v0, v0, -0x1

    new-array p1, v0, [D

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected createBulge(IDZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v1, v1, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v4, p1, 0x1

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v5, v5, p1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v8, p1, 0x1

    aget-wide v7, v7, v8

    if-eqz p4, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v12, v14

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v12, v3

    add-double/2addr v10, v12

    aput-wide v10, v9, p1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v10, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v11, v3

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v13, v15

    mul-double/2addr v13, v5

    sub-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v13, v1

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    sub-double/2addr v10, v12

    mul-double/2addr v5, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    sub-double v1, v3, v1

    mul-double/2addr v1, v10

    add-double/2addr v1, v5

    aput-wide v1, v9, p1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v3, v7

    aput-wide v3, v1, v2

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v1, v7

    move-object/from16 v0, p0

    iput-wide v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v1, :cond_0

    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->updateQ(IIDD)V

    :cond_0
    return-void

    :cond_1
    sub-double v9, v1, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v5, v6}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeRotation(DD)V

    goto/16 :goto_0
.end method

.method protected createBulge2by2(IDZ)V
    .locals 14

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v4, v4, p1

    if-eqz p4, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    :goto_0
    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    iget-wide v11, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v9, v11

    mul-double/2addr v9, v4

    add-double/2addr v7, v9

    iget-wide v9, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    aput-wide v7, v6, p1

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v7, p1, 0x1

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-wide v12, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v10, v12

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    iget-wide v10, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    iget-wide v9, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    sub-double/2addr v7, v9

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    sub-double v0, v2, v0

    mul-double/2addr v0, v7

    add-double/2addr v0, v4

    aput-wide v0, v6, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_0

    add-int/lit8 v2, p1, 0x1

    iget-wide v3, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->updateQ(IIDD)V

    :cond_0
    return-void

    :cond_1
    sub-double v6, v0, p2

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeRotation(DD)V

    goto :goto_0
.end method

.method protected eigenvalue2by2(I)V
    .locals 15

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v9, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v11, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v13, v0, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    :goto_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    move-wide v7, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmpl-double v0, v7, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v1, p1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    :goto_2
    return-void

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    div-double v1, v9, v7

    div-double v3, v11, v7

    div-double v5, v13, v7

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->symm2x2_fast(DDD)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v1, v1, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v1, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v1, v7

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v2, v7

    aput-wide v2, v0, v1

    goto :goto_2

    :cond_2
    move-wide v7, v2

    goto :goto_1
.end method

.method public exceptionalShift()V
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numExceptional:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numExceptional:I

    const-wide v2, 0x3fa999999999999aL    # 0.05

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numExceptional:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->rand:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->performImplicitSingleStep(DZ)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->lastExceptional:I

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getMatrixSize()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    return v0
.end method

.method public incrementSteps()V
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    return-void
.end method

.method public init([D[DI)V
    .locals 0

    invoke-virtual {p0, p3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->reset(I)V

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iput-object p2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    return-void
.end method

.method protected isZero(I)Z
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextSplit()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    aget v1, v1, v2

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    goto :goto_1
.end method

.method protected performImplicitSingleStep(DZ)V
    .locals 5

    const-wide/16 v3, 0x0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->createBulge2by2(IDZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->createBulge(IDZ)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_2

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->removeBulge(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->removeBulgeEnd(I)V

    goto :goto_0
.end method

.method public printMatrix()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Off Diag[ "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%5.2f "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    if-ge v0, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%5.2f "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method protected removeBulge(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v5, p1, 0x2

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v6, v6, p1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v9, p1, 0x1

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v11, p1, 0x2

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v12, v13}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeRotation(DD)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v13, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v14, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    mul-double v16, v16, v8

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v13, p1, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v6, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    mul-double/2addr v13, v15

    add-double/2addr v6, v13

    aput-wide v6, v12, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v7, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    sub-double/2addr v12, v14

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    sub-double v2, v4, v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v8

    aput-wide v2, v6, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v3, p1, 0x2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v4, v10

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->updateQ(IIDD)V

    :cond_0
    return-void
.end method

.method protected removeBulgeEnd(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v2, p1, 0x1

    aget-wide v1, v1, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    aget-wide v3, v3, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v6, p1, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v8, p1, 0x2

    aget-wide v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v9, v10}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->computeRotation(DD)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v10, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v11, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v13, v15

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    add-int/lit8 v10, p1, 0x2

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    mul-double/2addr v11, v7

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    mul-double/2addr v13, v15

    mul-double/2addr v13, v5

    sub-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    mul-double/2addr v13, v1

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    mul-double/2addr v3, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->bulge:D

    mul-double/2addr v10, v12

    add-double/2addr v3, v10

    aput-wide v3, v9, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c2:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s2:D

    sub-double/2addr v9, v11

    mul-double/2addr v5, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->cs:D

    sub-double v1, v7, v1

    mul-double/2addr v1, v9

    add-double/2addr v1, v5

    aput-wide v1, v3, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v1, :cond_0

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p1, 0x2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->c:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->s:D

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->updateQ(IIDD)V

    :cond_0
    return-void
.end method

.method public reset(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    iput-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iput-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->splits:[I

    :cond_0
    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numSplits:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->lastExceptional:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->numExceptional:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    iput-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public resetSteps()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->steps:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->lastExceptional:I

    return-void
.end method

.method public setQ(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x1:I

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->x2:I

    return-void
.end method

.method public swapDiag([D)[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->diag:[D

    return-object v0
.end method

.method public swapOff([D)[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->off:[D

    return-object v0
.end method

.method protected updateQ(IIDD)V
    .locals 15

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    mul-int v3, p1, v2

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    mul-int v2, v2, p2

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->N:I

    add-int v5, v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v6, v4, v3

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v4, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v8, v4, v2

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v10, v4, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v4, v3, 0x1

    mul-double v11, p3, v6

    mul-double v13, p5, v8

    add-double/2addr v11, v13

    aput-wide v11, v10, v3

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/symm/SymmetricQREigenHelper;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v10, v3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v3, v2, 0x1

    move-wide/from16 v0, p5

    neg-double v11, v0

    mul-double/2addr v6, v11

    mul-double v8, v8, p3

    add-double/2addr v6, v8

    aput-wide v6, v10, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method
