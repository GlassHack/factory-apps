.class public final Lcom/google/common/primitives/ImmutableIntArray;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableIntArray$AsList;,
        Lcom/google/common/primitives/ImmutableIntArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableIntArray;


# instance fields
.field private final array:[I

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    sput-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method

.method private constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 310
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    .line 311
    return-void
.end method

.method private constructor <init>([III)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    .line 315
    iput p2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .line 316
    iput p3, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    .line 317
    return-void
.end method

.method synthetic constructor <init>([IIILcom/google/common/primitives/ImmutableIntArray$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/primitives/ImmutableIntArray$1;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableIntArray;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableIntArray;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableIntArray;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableIntArray;

    .prologue
    .line 84
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .prologue
    .line 169
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 170
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 153
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    .line 155
    .restart local p0    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->builder()Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->build()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_0
.end method

.method public static copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 136
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_0
.end method

.method private isPartialView()Z
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static of(I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(II)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIIII)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I
    .param p5, "e5"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    const/4 v2, 0x5

    aput p5, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(I[I)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p0, "first"    # I
    .param p1, "rest"    # [I

    .prologue
    const/4 v3, 0x0

    .line 128
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 129
    .local v0, "array":[I
    aput p0, v0, v3

    .line 130
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    new-instance v1, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v1
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableIntArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableIntArray;Lcom/google/common/primitives/ImmutableIntArray$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    if-ne p1, p0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 493
    :cond_1
    instance-of v4, p1, Lcom/google/common/primitives/ImmutableIntArray;

    if-nez v4, :cond_2

    move v2, v3

    .line 494
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 496
    check-cast v1, Lcom/google/common/primitives/ImmutableIntArray;

    .line 497
    .local v1, "that":Lcom/google/common/primitives/ImmutableIntArray;
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 498
    goto :goto_0

    .line 500
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 501
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v4

    invoke-virtual {v1, v0}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 502
    goto :goto_0

    .line 500
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 337
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 511
    const/4 v0, 0x1

    .line 512
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_0

    .line 513
    mul-int/lit8 v0, v0, 0x1f

    .line 514
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 345
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 347
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int v1, v0, v1

    .line 350
    :goto_1
    return v1

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(I)I
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 358
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    if-lt v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 360
    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int v1, v0, v1

    .line 363
    :goto_1
    return v1

    .line 358
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public length()I
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    .end local p0    # "this":Lcom/google/common/primitives/ImmutableIntArray;
    :cond_0
    return-object p0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 391
    if-ne p1, p2, :cond_0

    .line 392
    sget-object v0, Lcom/google/common/primitives/ImmutableIntArray;->EMPTY:Lcom/google/common/primitives/ImmutableIntArray;

    .line 391
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([III)V

    goto :goto_0
.end method

.method public toArray()[I
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "[]"

    .line 535
    :goto_0
    return-object v2

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    iget v4, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_1

    .line 532
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableIntArray;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 534
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 2

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableIntArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    move-object p0, v0

    .end local p0    # "this":Lcom/google/common/primitives/ImmutableIntArray;
    :cond_0
    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableIntArray;->trimmed()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method
