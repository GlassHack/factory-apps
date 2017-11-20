.class public Lorg/ejml/alg/generic/GenericMatrixOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/Matrix64F;->getNumCols()I

    move-result v3

    invoke-virtual {p0}, Lorg/ejml/data/Matrix64F;->getNumRows()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v2, v0, v5, v6}, Lorg/ejml/data/Matrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isEquivalent(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;D)Z
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    iget v3, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p2

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEquivalentTriangle(ZLorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;D)Z
    .locals 7

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p2, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v2, p2, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_3

    move v0, v1

    :goto_1
    iget v2, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_5

    move v2, v0

    :goto_2
    iget v3, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p3

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_3
    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v0, v2, :cond_5

    move v2, v0

    :goto_4
    iget v3, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2, v0}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p2, v2, v0}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p3

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isIdentity(Lorg/ejml/data/Matrix64F;D)Z
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-lez v3, :cond_2

    :cond_0
    :goto_2
    return v1

    :cond_1
    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-gtz v3, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static setRandom(Lorg/ejml/data/Matrix64F;DDLjava/util/Random;)V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    sub-double v5, p3, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/ejml/data/Matrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
