.class public Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition",
        "<",
        "Lorg/ejml/data/BlockMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private T:Lorg/ejml/data/BlockMatrix64F;

.field private lower:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->lower:Z

    iput-boolean p1, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->lower:Z

    return-void
.end method

.method private decomposeLower()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v2, v3}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v3, v4}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v7, Lorg/ejml/data/D1Submatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v7, v4}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    move v6, v1

    :goto_0
    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v6, v4, :cond_2

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v6, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v8, v6, v4

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v8, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v8, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput v6, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v8, v6, v4

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v8, v6, v4

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    add-int v8, v6, v4

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v8, v6, v4

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-static {v2}, Lorg/ejml/alg/block/decomposition/chol/BlockInnerCholesky;->lower(Lorg/ejml/data/D1Submatrix64F;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    return v1

    :cond_0
    if-ne v4, v0, :cond_1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveBlock(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ZZ)V

    invoke-static {v0, v7, v3}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->symmRankNMinus_L(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :cond_1
    add-int v4, v6, v0

    move v6, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v5, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->zeroTriangle(ZLorg/ejml/data/BlockMatrix64F;)V

    move v1, v5

    goto :goto_1
.end method

.method private decomposeUpper()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v0, v0, Lorg/ejml/data/BlockMatrix64F;->blockLength:I

    new-instance v2, Lorg/ejml/data/D1Submatrix64F;

    iget-object v3, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v2, v3}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v3, Lorg/ejml/data/D1Submatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v3, v4}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    new-instance v7, Lorg/ejml/data/D1Submatrix64F;

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-direct {v7, v4}, Lorg/ejml/data/D1Submatrix64F;-><init>(Lorg/ejml/data/D1Matrix64F;)V

    move v6, v5

    :goto_0
    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    if-ge v6, v4, :cond_2

    iget-object v4, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v4, v4, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    sub-int/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v6, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int v8, v6, v4

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v8, v2, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v8, v2, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v8, v2, Lorg/ejml/data/D1Submatrix64F;->row1:I

    add-int v8, v6, v4

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iput v6, v3, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int v8, v6, v4

    iput v8, v3, Lorg/ejml/data/D1Submatrix64F;->row1:I

    add-int v8, v6, v4

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->col1:I

    add-int v8, v6, v4

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v8, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget v8, v8, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iput v8, v7, Lorg/ejml/data/D1Submatrix64F;->row1:I

    invoke-static {v2}, Lorg/ejml/alg/block/decomposition/chol/BlockInnerCholesky;->upper(Lorg/ejml/data/D1Submatrix64F;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    return v5

    :cond_0
    if-ne v4, v0, :cond_1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/BlockTriangularSolver;->solveBlock(IZLorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;ZZ)V

    invoke-static {v0, v7, v3}, Lorg/ejml/alg/block/BlockInnerRankUpdate;->symmRankNMinus_U(ILorg/ejml/data/D1Submatrix64F;Lorg/ejml/data/D1Submatrix64F;)V

    :cond_1
    add-int v4, v6, v0

    move v6, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-static {v5, v0}, Lorg/ejml/alg/block/BlockMatrixOps;->zeroTriangle(ZLorg/ejml/data/BlockMatrix64F;)V

    move v5, v1

    goto :goto_1
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/BlockMatrix64F;)Z
    .locals 2

    iget v0, p1, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    iget v1, p1, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A must be square"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->lower:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->decomposeLower()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->decomposeUpper()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->decompose(Lorg/ejml/data/BlockMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->T:Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p1, v0}, Lorg/ejml/data/BlockMatrix64F;->set(Lorg/ejml/data/BlockMatrix64F;)V

    goto :goto_0
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/BlockMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

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

    iget-boolean v0, p0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->lower:Z

    return v0
.end method
