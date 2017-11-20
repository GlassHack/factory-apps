.class public Lorg/ejml/simple/SimpleSVD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/simple/SimpleMatrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private U:Lorg/ejml/simple/SimpleMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private V:Lorg/ejml/simple/SimpleMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private W:Lorg/ejml/simple/SimpleMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mat:Lorg/ejml/data/DenseMatrix64F;

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
.method public constructor <init>(Lorg/ejml/data/DenseMatrix64F;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/simple/SimpleSVD;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v1, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v0, v1, v2, v2, p2}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->svd(IIZZZ)Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v0, p1}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->decompose(Lorg/ejml/data/Matrix64F;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decomposition failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v0, v3}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getU(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleMatrix;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getW(Lorg/ejml/data/Matrix64F;)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleMatrix;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v0, v3}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getV(Z)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleMatrix;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v1}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v2}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v0, v3, v1, v2, v3}, Lorg/ejml/ops/SingularOps;->descendingOrder(Lorg/ejml/data/DenseMatrix64F;ZLorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Z)V

    return-void
.end method


# virtual methods
.method public getSVD()Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    return-object v0
.end method

.method public getSingleValue(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    invoke-interface {v0}, Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v0

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getU()Lorg/ejml/simple/SimpleMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method public getV()Lorg/ejml/simple/SimpleMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method public getW()Lorg/ejml/simple/SimpleMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleMatrix;

    return-object v0
.end method

.method public nullSpace()Lorg/ejml/simple/SimpleMatrix;
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ejml/ops/SingularOps;->nullSpace(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method public nullity()I
    .locals 5

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    sget-wide v3, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/SingularOps;->nullity(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I

    move-result v0

    return v0
.end method

.method public quality()D
    .locals 4

    iget-object v1, p0, Lorg/ejml/simple/SimpleSVD;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->U:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->W:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->V:Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->transpose()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    check-cast v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lorg/ejml/alg/dense/decomposition/DecompositionFactory;->quality(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public rank()I
    .locals 5

    iget-object v0, p0, Lorg/ejml/simple/SimpleSVD;->svd:Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    sget-wide v3, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/SingularOps;->rank(Lorg/ejml/alg/dense/decomposition/SingularValueDecomposition;D)I

    move-result v0

    return v0
.end method
