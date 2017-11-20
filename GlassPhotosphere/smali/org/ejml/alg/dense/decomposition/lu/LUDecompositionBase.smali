.class public abstract Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/LUDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/LUDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field protected LU:Lorg/ejml/data/DenseMatrix64F;

.field protected dataLU:[D

.field protected indx:[I

.field protected m:I

.field protected maxWidth:I

.field protected n:I

.field protected pivot:[I

.field protected pivsign:D

.field protected vv:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->vv:[D

    return-object v0
.end method

.method public _solveVectorInternal([D)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->indx:[I

    aget v4, v2, v0

    aget-wide v2, p1, v4

    aget-wide v5, p1, v0

    aput-wide v5, p1, v4

    if-eqz v1, :cond_0

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->dataLU:[D

    add-int/lit8 v6, v5, 0x1

    aget-wide v7, v7, v5

    aget-wide v9, p1, v4

    mul-double/2addr v7, v9

    sub-double v7, v2, v7

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v6

    move-wide v2, v7

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    :cond_1
    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->dataLU:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    invoke-static {v0, p1, v1}, Lorg/ejml/alg/dense/decomposition/TriangularSolver;->solveU([D[DI)V

    return-void
.end method

.method public computeDeterminant()D
    .locals 6

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->m:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivsign:D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->m:I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    mul-int/2addr v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->dataLU:[D

    aget-wide v4, v4, v0

    mul-double/2addr v1, v4

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method protected decomposeCommonInit(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->setExpectedMaxSize(II)V

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->m:I

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->setReshape(Lorg/ejml/data/DenseMatrix64F;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->m:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivot:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivsign:D

    return-void
.end method

.method public getIndx()[I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->indx:[I

    return-object v0
.end method

.method public getLU()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v4, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p1, v4, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v2, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_4

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v5, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v2, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v0, v3, :cond_2

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v4, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v5, 0x0

    invoke-static {p1, v5, v6}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    if-le v4, v3, :cond_7

    move v2, v3

    :goto_4
    if-ge v2, v4, :cond_7

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_6

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v5, v2, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v2, v0, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    return-object p1
.end method

.method public bridge synthetic getLower(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getLower(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getPivot(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivot:[I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/ops/SpecializedOps;->pivotMatrix(Lorg/ejml/data/DenseMatrix64F;[IIZ)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPivot(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getPivot(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public getPivot()[I
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivot:[I

    return-object v0
.end method

.method public getUpper(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-nez p1, :cond_1

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {p1, v0, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v4, v2, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v1, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public bridge synthetic getUpper(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getUpper(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingular()Z
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->m:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->dataLU:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public quality()D
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/SpecializedOps;->qualityTriangular(ZLorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->LU:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->dataLU:[D

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->vv:[D

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->indx:[I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->maxWidth:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->pivot:[I

    return-void
.end method
