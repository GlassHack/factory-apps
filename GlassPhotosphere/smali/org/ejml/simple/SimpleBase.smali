.class public abstract Lorg/ejml/simple/SimpleBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/simple/SimpleBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mat:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public static loadBinary(Ljava/lang/String;)Lorg/ejml/simple/SimpleMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/ejml/ops/MatrixIO;->loadBin(Ljava/lang/String;)Lorg/ejml/data/Matrix64F;

    move-result-object v0

    instance-of v1, v0, Lorg/ejml/data/DenseMatrix64F;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(Lorg/ejml/data/Matrix64F;)V

    invoke-static {v1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadCSV(Ljava/lang/String;)Lorg/ejml/simple/SimpleMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/ejml/ops/MatrixIO;->loadCSV(Ljava/lang/String;)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    instance-of v1, v0, Lorg/ejml/data/DenseMatrix64F;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v1, v0}, Lorg/ejml/data/DenseMatrix64F;-><init>(Lorg/ejml/data/Matrix64F;)V

    invoke-static {v1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public combine(IILorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    const v1, 0x7fffffff

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget p1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget p2, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    :cond_1
    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-le v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v2, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0, v3, v3, p0}, Lorg/ejml/simple/SimpleBase;->insertIntoThis(IILorg/ejml/simple/SimpleBase;)V

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/ejml/simple/SimpleBase;->insertIntoThis(IILorg/ejml/simple/SimpleBase;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    goto :goto_0
.end method

.method public conditionP2()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/NormOps;->conditionP2(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method protected abstract createMatrix(II)Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public determinant()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->det(Lorg/ejml/data/DenseMatrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public divide(D)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/ejml/ops/CommonOps;->divide(DLorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public dot(Lorg/ejml/simple/SimpleBase;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->isVector()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'this\' matrix is not a vector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->isVector()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'v\' matrix is not a vector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ejml/alg/dense/mult/VectorVectorMult;->innerProd(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public eig()Lorg/ejml/simple/SimpleEVD;
    .locals 2

    new-instance v0, Lorg/ejml/simple/SimpleEVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1}, Lorg/ejml/simple/SimpleEVD;-><init>(Lorg/ejml/data/DenseMatrix64F;)V

    return-object v0
.end method

.method public elementMaxAbs()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/ejml/ops/CommonOps;->elementMult(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public elementSum()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->elementSum(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public extractDiag()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->extractDiag(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-object v0
.end method

.method public extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    const v4, 0x7fffffff

    if-ne p1, v4, :cond_3

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    :goto_0
    if-ne p2, v4, :cond_2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v2, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    :goto_1
    if-ne p3, v4, :cond_1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    :goto_2
    if-ne p4, v4, :cond_0

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v4, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    :goto_3
    sub-int v0, v2, v1

    sub-int v5, v4, v3

    invoke-virtual {p0, v0, v5}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v8

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v8}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v5

    move v7, v6

    invoke-static/range {v0 .. v7}, Lorg/ejml/ops/CommonOps;->extract(Lorg/ejml/data/Matrix64F;IIIILorg/ejml/data/Matrix64F;II)V

    return-object v8

    :cond_0
    move v4, p4

    goto :goto_3

    :cond_1
    move v3, p3

    goto :goto_2

    :cond_2
    move v2, p2

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public extractVector(ZI)Lorg/ejml/simple/SimpleBase;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)TT;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v4, v3}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    move-object v11, v0

    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v11}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v6

    move v1, p2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    :goto_2
    return-object v11

    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v3, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v11}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v10

    move v5, v2

    move v6, p2

    move v7, v3

    move v8, v2

    move v9, v2

    invoke-static/range {v4 .. v10}, Lorg/ejml/ops/SpecializedOps;->subvector(Lorg/ejml/data/RowD1Matrix64F;IIIZILorg/ejml/data/RowD1Matrix64F;)V

    goto :goto_2
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public get(II)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIndex(II)I
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public getMatrix()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getNumElements()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v0

    return v0
.end method

.method public hasUncountable()Z
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/MatrixFeatures;->hasUncountable(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    return v0
.end method

.method public insertIntoThis(IILorg/ejml/simple/SimpleBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, p1, p2}, Lorg/ejml/ops/CommonOps;->insert(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;II)V

    return-void
.end method

.method public invert()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->invert(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public isIdentical(Lorg/ejml/simple/SimpleBase;D)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lorg/ejml/ops/MatrixFeatures;->isIdentical(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;D)Z

    move-result v0

    return v0
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVector()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator(ZIIII)Lorg/ejml/data/MatrixIterator;
    .locals 7

    new-instance v0, Lorg/ejml/data/MatrixIterator;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/MatrixIterator;-><init>(Lorg/ejml/data/Matrix64F;ZIIII)V

    return-object v0
.end method

.method public kron(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/ejml/ops/CommonOps;->kron(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-object v0
.end method

.method public minus(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->subEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/ejml/ops/CommonOps;->mult(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v0
.end method

.method public negative()Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {v1}, Lorg/ejml/ops/CommonOps;->changeSign(Lorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public normF()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/NormOps;->normF(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public numCols()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    return v0
.end method

.method public numRows()I
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    return v0
.end method

.method public plus(DLorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lorg/ejml/ops/CommonOps;->addEquals(Lorg/ejml/data/D1Matrix64F;DLorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public plus(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->addEquals(Lorg/ejml/data/D1Matrix64F;Lorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public print()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public print(II)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, p1, p2}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;II)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v1, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;Ljava/lang/String;)V

    return-void
.end method

.method public printDimensions()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[rows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->pinv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V

    return-object v0
.end method

.method public reshape(II)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/ejml/data/DenseMatrix64F;->reshape(IIZ)V

    return-void
.end method

.method public saveToFileBinary(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, p1}, Lorg/ejml/ops/MatrixIO;->saveBin(Lorg/ejml/data/Matrix64F;Ljava/lang/String;)V

    return-void
.end method

.method public saveToFileCSV(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, p1}, Lorg/ejml/ops/MatrixIO;->saveCSV(Lorg/ejml/data/Matrix64F;Ljava/lang/String;)V

    return-void
.end method

.method public scale(D)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/ejml/ops/CommonOps;->scale(DLorg/ejml/data/D1Matrix64F;)V

    return-object v0
.end method

.method public set(D)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, p1, p2}, Lorg/ejml/ops/CommonOps;->set(Lorg/ejml/data/D1Matrix64F;D)V

    return-void
.end method

.method public set(ID)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    return-void
.end method

.method public set(IID)V
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    return-void
.end method

.method public set(Lorg/ejml/simple/SimpleBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    return-void
.end method

.method public varargs setColumn(II[D)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    add-int v2, p2, v0

    aget-wide v3, p3, v0

    invoke-virtual {v1, v2, p1, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setRow(II[D)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    add-int v2, p2, v0

    aget-wide v3, p3, v0

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public solve(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v1

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/ejml/ops/CommonOps;->solve(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/SingularMatrixException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public svd()Lorg/ejml/simple/SimpleSVD;
    .locals 3

    new-instance v0, Lorg/ejml/simple/SimpleSVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/simple/SimpleSVD;-><init>(Lorg/ejml/data/DenseMatrix64F;Z)V

    return-object v0
.end method

.method public svd(Z)Lorg/ejml/simple/SimpleSVD;
    .locals 2

    new-instance v0, Lorg/ejml/simple/SimpleSVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, v1, p1}, Lorg/ejml/simple/SimpleSVD;-><init>(Lorg/ejml/data/DenseMatrix64F;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1, v2}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()D
    .locals 2

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/CommonOps;->trace(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v0, v0, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget v1, v1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(II)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/ops/CommonOps;->transpose(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public zero()V
    .locals 1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->zero()V

    return-void
.end method
