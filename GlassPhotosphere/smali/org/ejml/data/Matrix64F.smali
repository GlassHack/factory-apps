.class public abstract Lorg/ejml/data/Matrix64F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6296012326L


# instance fields
.field public numCols:I

.field public numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/ejml/data/Matrix64F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/Matrix64F;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract get(II)D
.end method

.method public getNumCols()I
    .locals 1

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    return v0
.end method

.method public abstract getNumElements()I
.end method

.method public getNumRows()I
    .locals 1

    iget v0, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    return v0
.end method

.method public iterator(ZIIII)Lorg/ejml/data/MatrixIterator;
    .locals 7

    new-instance v0, Lorg/ejml/data/MatrixIterator;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/MatrixIterator;-><init>(Lorg/ejml/data/Matrix64F;ZIIII)V

    return-object v0
.end method

.method public abstract print()V
.end method

.method public reshape(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ejml/data/Matrix64F;->reshape(IIZ)V

    return-void
.end method

.method public abstract reshape(IIZ)V
.end method

.method public abstract set(IID)V
.end method

.method public set(Lorg/ejml/data/Matrix64F;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p0, Lorg/ejml/data/Matrix64F;->numRows:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of rows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    iget v2, p0, Lorg/ejml/data/Matrix64F;->numCols:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of columns."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_1
    iget v3, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/ejml/data/Matrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract unsafe_get(II)D
.end method

.method public abstract unsafe_set(IID)V
.end method
