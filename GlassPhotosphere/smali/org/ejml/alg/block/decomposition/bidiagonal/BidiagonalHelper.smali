.class public Lorg/ejml/alg/block/decomposition/bidiagonal/BidiagonalHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidiagOuterBlocks(ILorg/ejml/data/D1Submatrix64F;[D[D)Z
    .locals 8

    const/4 v6, 0x0

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v2, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v2, v6

    :goto_0
    if-ge v2, v7, :cond_2

    invoke-static {p0, p1, p2, v2}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeHouseHolderCol(ILorg/ejml/data/D1Submatrix64F;[DI)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_1
    return v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v0, v2

    aget-wide v0, p2, v0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->rank1UpdateMultR_Col(ILorg/ejml/data/D1Submatrix64F;ID)V

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v0, v2

    aget-wide v0, p2, v0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->rank1UpdateMultR_TopRow(ILorg/ejml/data/D1Submatrix64F;ID)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "After column stuff"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/D1Matrix64F;->print()V

    invoke-static {p0, p1, p3, v2}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->computeHouseHolderRow(ILorg/ejml/data/D1Submatrix64F;[DI)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    iget v0, p1, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v0, v2

    aget-wide v4, p3, v0

    move v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/ejml/alg/block/decomposition/qr/BlockHouseHolder;->rank1UpdateMultL_Row(ILorg/ejml/data/D1Submatrix64F;IID)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "After update row"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/D1Matrix64F;->print()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "After row stuff"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/D1Matrix64F;->print()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
