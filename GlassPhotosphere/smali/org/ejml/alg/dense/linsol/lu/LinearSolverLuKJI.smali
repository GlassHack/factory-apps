.class public Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;
.super Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;


# instance fields
.field private dataLU:[D

.field private pivot:[I


# direct methods
.method public constructor <init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;-><init>(Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;)V

    return-void
.end method


# virtual methods
.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuBase;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getPivot()[I

    move-result-object v1

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->pivot:[I

    iget-object v1, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->decomp:Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;

    invoke-virtual {v1}, Lorg/ejml/alg/dense/decomposition/lu/LUDecompositionBase;->getLU()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iput-object v1, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->dataLU:[D

    return v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 13

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    if-eq v0, v2, :cond_0

    iget v0, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected matrix size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq p1, p2, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->pivot:[I

    invoke-static {v0, p1, p2}, Lorg/ejml/ops/SpecializedOps;->copyChangeRow([ILorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    iget v4, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v5, p2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    :goto_1
    iget v3, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_2

    mul-int v6, v2, v4

    add-int/2addr v6, v3

    aget-wide v7, v5, v6

    mul-int v9, v0, v4

    add-int/2addr v9, v3

    aget-wide v9, v5, v9

    iget-object v11, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->dataLU:[D

    iget v12, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    mul-int/2addr v12, v2

    add-int/2addr v12, v0

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Current doesn\'t support using the same matrix instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_8

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_5

    mul-int v2, v3, v4

    add-int/2addr v2, v0

    aget-wide v6, v5, v2

    iget-object v8, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->dataLU:[D

    iget v9, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v3

    aget-wide v8, v8, v9

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_7

    move v0, v1

    :goto_6
    if-ge v0, v4, :cond_6

    mul-int v6, v2, v4

    add-int/2addr v6, v0

    aget-wide v7, v5, v6

    mul-int v9, v3, v4

    add-int/2addr v9, v0

    aget-wide v9, v5, v9

    iget-object v11, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->dataLU:[D

    iget v12, p0, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->numCols:I

    mul-int/2addr v12, v2

    add-int/2addr v12, v3

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_8
    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/lu/LinearSolverLuKJI;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
