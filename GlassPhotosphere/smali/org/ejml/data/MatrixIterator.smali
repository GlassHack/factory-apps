.class public Lorg/ejml/data/MatrixIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/ejml/data/Matrix64F;

.field private index:I

.field private minCol:I

.field private minRow:I

.field private rowMajor:Z

.field private size:I

.field subCol:I

.field subRow:I

.field private submatrixStride:I


# direct methods
.method public constructor <init>(Lorg/ejml/data/Matrix64F;ZIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    if-ge p6, p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCol has to be more than or equal to minCol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p5, p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRow has to be more than or equal to minCol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-lt p6, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCol must be < numCols"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-lt p5, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRow must be < numCRows"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/ejml/data/MatrixIterator;->a:Lorg/ejml/data/Matrix64F;

    iput-boolean p2, p0, Lorg/ejml/data/MatrixIterator;->rowMajor:Z

    iput p4, p0, Lorg/ejml/data/MatrixIterator;->minCol:I

    iput p3, p0, Lorg/ejml/data/MatrixIterator;->minRow:I

    sub-int v0, p6, p4

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->size:I

    if-eqz p2, :cond_4

    sub-int v0, p6, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    :goto_0
    return-void

    :cond_4
    sub-int v0, p5, p3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    goto :goto_0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRowMajor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ejml/data/MatrixIterator;->rowMajor:Z

    return v0
.end method

.method public next()Ljava/lang/Double;
    .locals 4

    iget-boolean v0, p0, Lorg/ejml/data/MatrixIterator;->rowMajor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->subRow:I

    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->subCol:I

    :goto_0
    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget-object v0, p0, Lorg/ejml/data/MatrixIterator;->a:Lorg/ejml/data/Matrix64F;

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->subRow:I

    iget v2, p0, Lorg/ejml/data/MatrixIterator;->minRow:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/MatrixIterator;->subCol:I

    iget v3, p0, Lorg/ejml/data/MatrixIterator;->minCol:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->subRow:I

    iget v0, p0, Lorg/ejml/data/MatrixIterator;->index:I

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->submatrixStride:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/MatrixIterator;->subCol:I

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/ejml/data/MatrixIterator;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(D)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/data/MatrixIterator;->a:Lorg/ejml/data/Matrix64F;

    iget v1, p0, Lorg/ejml/data/MatrixIterator;->subRow:I

    iget v2, p0, Lorg/ejml/data/MatrixIterator;->minRow:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/MatrixIterator;->subCol:I

    iget v3, p0, Lorg/ejml/data/MatrixIterator;->minCol:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/ejml/data/Matrix64F;->set(IID)V

    return-void
.end method
