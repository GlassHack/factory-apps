.class public Lorg/ejml/alg/dense/misc/PermuteArray;
.super Ljava/lang/Object;


# instance fields
.field private data:[I

.field private iter:[I

.field private level:I

.field private ret:[I

.field private valk:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->iter:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->valk:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    :goto_0
    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, -0x1

    new-array v2, p0, [I

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1, v4, v0}, Lorg/ejml/alg/dense/misc/PermuteArray;->createList([IIILjava/util/List;)V

    return-object v0
.end method

.method private static createList([IIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/List",
            "<[I>;)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v0, 0x0

    aput p2, p0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget v1, p0, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Lorg/ejml/alg/dense/misc/PermuteArray;->createList([IIILjava/util/List;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    aput v3, p0, p1

    return-void
.end method

.method public static fact(I)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v0, p0

    move p0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public next()[I
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->iter:[I

    iget v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aget v0, v0, v1

    :goto_1
    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->iter:[I

    iget v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_1

    iget v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    iget v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v0

    iget v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    array-length v3, v3

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    iget-object v4, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    iget-object v5, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    array-length v5, v5

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    aput v6, v2, v0

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    :goto_3
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->valk:[I

    iget v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aput v0, v1, v3

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->iter:[I

    iget v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aget v0, v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->data:[I

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->valk:[I

    iget v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aget v1, v1, v3

    aput v6, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->iter:[I

    iget v1, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    aput v2, v0, v1

    iget v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->level:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public sgn()I
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    aget v5, v2, v0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    iget-object v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/PermuteArray;->ret:[I

    aget v3, v3, v2

    if-le v5, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, v1, 0x2

    if-ne v0, v4, :cond_2

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_2
.end method
