.class public Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;
.super Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;

# interfaces
.implements Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;",
        "Lorg/ejml/alg/dense/decomposition/CholeskyDecomposition",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    new-instance v0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    invoke-direct {v0, p1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;-><init>(Z)V

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-direct {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/BaseDecompositionBlock64;-><init>(Lorg/ejml/alg/dense/decomposition/DecompositionInterface;I)V

    return-void
.end method


# virtual methods
.method public getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;
    .locals 3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->getT(Lorg/ejml/data/BlockMatrix64F;)Lorg/ejml/data/BlockMatrix64F;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Lorg/ejml/data/DenseMatrix64F;

    iget v1, v0, Lorg/ejml/data/BlockMatrix64F;->numRows:I

    iget v2, v0, Lorg/ejml/data/BlockMatrix64F;->numCols:I

    invoke-direct {p1, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    :cond_0
    invoke-static {v0, p1}, Lorg/ejml/alg/block/BlockMatrixOps;->convert(Lorg/ejml/data/BlockMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;->getT(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    return-object v0
.end method

.method public isLower()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionBlock64;->alg:Lorg/ejml/alg/dense/decomposition/DecompositionInterface;

    check-cast v0, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;

    invoke-virtual {v0}, Lorg/ejml/alg/block/decomposition/chol/BlockCholeskyOuterForm;->isLower()Z

    move-result v0

    return v0
.end method
