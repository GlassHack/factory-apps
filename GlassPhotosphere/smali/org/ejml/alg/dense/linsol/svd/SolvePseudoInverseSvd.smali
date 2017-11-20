.class public Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ejml/alg/dense/linsol/LinearSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/alg/dense/linsol/LinearSolver",
        "<",
        "Lorg/ejml/data/DenseMatrix64F;",
        ">;"
    }
.end annotation


# instance fields
.field private pinv:Lorg/ejml/data/DenseMatrix64F;

.field private svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition",
            "<",
            "Lorg/ejml/data/DenseMatrix64F;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0, v0}, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->pinv:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, p2, v1, v1, v1}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(IIZZZ)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    return-void
.end method


# virtual methods
.method public invert(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->pinv:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    return-void
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->invert(Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method

.method public modifiesA()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->inputModified()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported by this solver."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setA(Lorg/ejml/data/DenseMatrix64F;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->pinv:Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getU(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v1

    check-cast v1, Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getV(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v2

    check-cast v2, Lorg/ejml/data/DenseMatrix64F;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v3}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v7

    move-object/from16 v0, p1

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v13, v3

    move-wide v14, v4

    move-wide v3, v14

    move v5, v13

    :goto_1
    if-ge v5, v6, :cond_2

    aget-wide v8, v7, v5

    cmpl-double v8, v8, v3

    if-lez v8, :cond_1

    aget-wide v3, v7, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-wide v8, Lorg/ejml/UtilEjml;->EPS:D

    move-object/from16 v0, p1

    iget v5, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    move-object/from16 v0, p1

    iget v10, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    mul-double v4, v8, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_4

    aget-wide v8, v7, v3

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aget-wide v10, v7, v3

    div-double/2addr v8, v10

    aput-wide v8, v7, v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_4
    iget v4, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge v3, v4, :cond_6

    iget v4, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v5, v3, v4

    const/4 v4, 0x0

    :goto_5
    iget v6, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge v4, v6, :cond_5

    iget-object v8, v2, Lorg/ejml/data/DenseMatrix64F;->data:[D

    add-int/lit8 v6, v5, 0x1

    aget-wide v9, v8, v5

    aget-wide v11, v7, v4

    mul-double/2addr v9, v11

    aput-wide v9, v8, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->pinv:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v2, v1, v3}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix64F;)Z
    .locals 1

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->setA(Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->pinv:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, p1, p2}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 0

    check-cast p1, Lorg/ejml/data/DenseMatrix64F;

    check-cast p2, Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/linsol/svd/SolvePseudoInverseSvd;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-void
.end method
