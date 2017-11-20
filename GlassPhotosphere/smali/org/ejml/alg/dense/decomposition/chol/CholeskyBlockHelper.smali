.class Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;
.super Ljava/lang/Object;


# instance fields
.field private L:Lorg/ejml/data/DenseMatrix64F;

.field private el:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->L:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->L:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->el:[D

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DenseMatrix64F;II)Z
    .locals 15

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const-wide/16 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v8, v0, :cond_4

    move v7, v8

    :goto_1
    move/from16 v0, p3

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v3, v8

    add-int v3, v3, p2

    add-int/2addr v3, v7

    aget-wide v5, v9, v3

    mul-int v4, v8, p3

    mul-int v3, v7, p3

    add-int v10, v4, v8

    :goto_2
    if-ge v4, v10, :cond_0

    iget-object v11, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->el:[D

    aget-wide v11, v11, v4

    iget-object v13, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->el:[D

    aget-wide v13, v13, v3

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    if-ne v8, v7, :cond_2

    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->el:[D

    mul-int v4, v8, p3

    add-int/2addr v4, v8

    aput-wide v1, v3, v4

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v3, v8

    add-int v3, v3, p2

    add-int/2addr v3, v8

    aput-wide v1, v9, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    :goto_4
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    :cond_2
    mul-double v3, v5, v1

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->el:[D

    mul-int v6, v7, p3

    add-int/2addr v6, v8

    aput-wide v3, v5, v6

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v5, v7

    add-int v5, v5, p2

    add-int/2addr v5, v8

    aput-wide v3, v9, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getL()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyBlockHelper;->L:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method
