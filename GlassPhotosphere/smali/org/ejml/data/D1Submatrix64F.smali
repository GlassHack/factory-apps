.class public Lorg/ejml/data/D1Submatrix64F;
.super Ljava/lang/Object;


# instance fields
.field public col0:I

.field public col1:I

.field public original:Lorg/ejml/data/D1Matrix64F;

.field public row0:I

.field public row1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/D1Matrix64F;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v0, p1, Lorg/ejml/data/D1Matrix64F;->numCols:I

    iput v0, p0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/D1Matrix64F;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iput p2, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iput p4, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iput p3, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iput p5, p0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    return-void
.end method


# virtual methods
.method public extract()Lorg/ejml/simple/SimpleMatrix;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Lorg/ejml/simple/SimpleMatrix;

    iget v0, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v4, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v2, v4

    invoke-direct {v3, v0, v2}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/ejml/simple/SimpleMatrix;->numRows()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Lorg/ejml/simple/SimpleMatrix;->numCols()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v0, v2}, Lorg/ejml/data/D1Submatrix64F;->get(II)D

    move-result-wide v4

    invoke-virtual {v3, v0, v2, v4, v5}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public get(II)D
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/D1Matrix64F;->get(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCols()I
    .locals 2

    iget v0, p0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRows()I
    .locals 2

    iget v0, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public print()V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    const-string v2, "%6.3f"

    iget v3, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    iget v4, p0, Lorg/ejml/data/D1Submatrix64F;->row1:I

    iget v5, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    iget v6, p0, Lorg/ejml/data/D1Submatrix64F;->col1:I

    invoke-static/range {v0 .. v6}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix64F;Ljava/lang/String;IIII)V

    return-void
.end method

.method public set(IID)V
    .locals 3

    iget-object v0, p0, Lorg/ejml/data/D1Submatrix64F;->original:Lorg/ejml/data/D1Matrix64F;

    iget v1, p0, Lorg/ejml/data/D1Submatrix64F;->row0:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/ejml/data/D1Submatrix64F;->col0:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/ejml/data/D1Matrix64F;->set(IID)V

    return-void
.end method
