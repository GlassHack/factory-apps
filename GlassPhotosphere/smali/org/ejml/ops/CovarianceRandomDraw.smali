.class public Lorg/ejml/ops/CovarianceRandomDraw;
.super Ljava/lang/Object;


# instance fields
.field private A:Lorg/ejml/data/DenseMatrix64F;

.field private r:Lorg/ejml/data/DenseMatrix64F;

.field private rand:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;

    invoke-direct {v0, v2}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;-><init>(Z)V

    invoke-virtual {v0, p2}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->decompose(Lorg/ejml/data/DenseMatrix64F;)Z

    invoke-virtual {v0}, Lorg/ejml/alg/dense/decomposition/chol/CholeskyDecompositionInner;->getT()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/ops/CovarianceRandomDraw;->A:Lorg/ejml/data/DenseMatrix64F;

    iput-object p1, p0, Lorg/ejml/ops/CovarianceRandomDraw;->rand:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public computeLikelihoodP()D
    .locals 8

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    iget v4, v4, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v4, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    neg-double v6, v4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public next(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    iget-object v3, p0, Lorg/ejml/ops/CovarianceRandomDraw;->rand:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/ops/CovarianceRandomDraw;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/ops/CovarianceRandomDraw;->r:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, p1}, Lorg/ejml/ops/CommonOps;->multAdd(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method
