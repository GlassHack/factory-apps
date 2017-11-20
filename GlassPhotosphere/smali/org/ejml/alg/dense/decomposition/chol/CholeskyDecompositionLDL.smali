.class public Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/DecompositionInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/DecompositionInterface",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private L:Lorg/ejml/data/DenseMatrix64F;

.field private d:[D

.field private el:[D

.field private maxWidth:I

.field private n:I

.field vv:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->vv:[D

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 11

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    if-le v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->setExpectedMaxSize(II)V

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->L:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    if-ge v0, v3, :cond_6

    move v3, v0

    :goto_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    aget-wide v5, v4, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v8, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v10, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v10, v3

    add-int/2addr v10, v4

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    iget-object v9, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->d:[D

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can only decompose square matrices"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v0, v3, :cond_4

    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_3
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->d:[D

    aput-wide v5, v1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v4, v1, v5

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v2

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v0

    mul-double/2addr v5, v1

    aput-wide v5, v4, v7

    move-wide v4, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    :goto_6
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getD()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->d:[D

    return-object v0
.end method

.method public getL()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->L:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 3

    if-eq p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only decompose square matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->L:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->L:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->el:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->vv:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->maxWidth:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionLDL;->d:[D

    return-void
.end method
