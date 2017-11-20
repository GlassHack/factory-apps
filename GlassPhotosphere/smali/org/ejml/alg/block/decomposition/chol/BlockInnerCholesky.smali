.class public Lorg/ejml/alg/block/decomposition/chol/BlockInnerCholesky;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lower(Lorg/ejml/data/D1Submatrix64F;)Z
    .locals 3

    iget v0, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v2, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static {v2, v1, v0}, Lorg/ejml/alg/block/decomposition/chol/BlockInnerCholesky;->lower([DII)Z

    move-result v0

    return v0
.end method

.method public static lower([DII)Z
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_4

    move v5, v6

    :goto_1
    if-ge v5, p2, :cond_3

    mul-int v2, v5, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v6

    aget-wide v3, p0, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_0

    mul-int v7, v6, p2

    add-int/2addr v7, p1

    add-int/2addr v7, v2

    aget-wide v7, p0, v7

    mul-int v9, v5, p2

    add-int/2addr v9, p1

    add-int/2addr v9, v2

    aget-wide v9, p0, v9

    mul-double/2addr v7, v9

    sub-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    if-ne v6, v5, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-int v2, v6, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v6

    aput-wide v0, p0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_2
    mul-int v2, v5, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v6

    mul-double/2addr v3, v0

    aput-wide v3, p0, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static upper(Lorg/ejml/data/D1Submatrix64F;)Z
    .locals 3

    iget v0, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget-object v2, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v2, v2, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget-object v2, v2, Lorg/ejml/data/D1Matrix64F;->data:[D

    invoke-static {v2, v1, v0}, Lorg/ejml/alg/block/decomposition/chol/BlockInnerCholesky;->upper([DII)Z

    move-result v0

    return v0
.end method

.method public static upper([DII)Z
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_4

    move v5, v6

    :goto_1
    if-ge v5, p2, :cond_3

    mul-int v2, v6, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v5

    aget-wide v3, p0, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_0

    mul-int v7, v2, p2

    add-int/2addr v7, p1

    add-int/2addr v7, v6

    aget-wide v7, p0, v7

    mul-int v9, v2, p2

    add-int/2addr v9, p1

    add-int/2addr v9, v5

    aget-wide v9, p0, v9

    mul-double/2addr v7, v9

    sub-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    if-ne v6, v5, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-int v2, v6, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v6

    aput-wide v0, p0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_2
    mul-int v2, v6, p2

    add-int/2addr v2, p1

    add-int/2addr v2, v5

    mul-double/2addr v3, v0

    aput-wide v3, p0, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method
