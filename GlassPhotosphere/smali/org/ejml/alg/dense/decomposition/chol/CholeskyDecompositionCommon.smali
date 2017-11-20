.class public abstract Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected T:Lorg/ejml/data/DenseMatrix64F;

.field protected lower:Z

.field protected maxWidth:I

.field protected n:I

.field protected t:[D

.field protected vv:[D


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->maxWidth:I

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->lower:Z

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->vv:[D

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->maxWidth:I

    if-le v0, v1, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->setExpectedMaxSize(II)V

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->T:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->T:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->t:[D

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->lower:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->decomposeLower()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->decomposeUpper()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method protected abstract decomposeLower()Z
.end method

.method protected abstract decomposeUpper()Z
.end method

.method public getT()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->T:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_0
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->lower:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    if-ge v0, v2, :cond_6

    move v2, v1

    :goto_2
    if-gt v2, v0, :cond_3

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->T:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v3, v0, v2}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension for T."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    if-ge v1, v0, :cond_6

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->n:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->T:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DenseMatrix64F;->unsafe_get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLower()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->lower:Z

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only decompose square matrices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->maxWidth:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->maxWidth:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionCommon;->vv:[D

    return-void
.end method
