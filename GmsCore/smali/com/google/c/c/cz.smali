.class public abstract Lcom/google/c/c/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 95
    instance-of v0, p0, Lcom/google/c/c/cz;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/c/c/cz;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/c/c/an;

    invoke-direct {v0, p0}, Lcom/google/c/c/an;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private a([Ljava/lang/Object;III)V
    .locals 5

    .prologue
    .line 458
    move v2, p2

    :goto_0
    if-le p3, v2, :cond_2

    .line 459
    add-int v0, v2, p3

    ushr-int/lit8 v0, v0, 0x1

    .line 460
    aget-object v3, p1, v0

    aget-object v1, p1, p3

    aput-object v1, p1, v0

    aput-object v3, p1, p3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, p3, :cond_1

    aget-object v4, p1, v1

    invoke-virtual {p0, v4, v3}, Lcom/google/c/c/cz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    invoke-static {p1, v0, v1}, Lcom/google/c/c/cy;->a([Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, p3, v0}, Lcom/google/c/c/cy;->a([Ljava/lang/Object;II)V

    .line 461
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v2, v1, p4}, Lcom/google/c/c/cz;->a([Ljava/lang/Object;III)V

    .line 462
    if-ge v0, p4, :cond_2

    .line 463
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 466
    :cond_2
    return-void
.end method

.method public static b()Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/c/c/cx;->a:Lcom/google/c/c/cx;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/google/c/c/dl;

    invoke-direct {v0, p0}, Lcom/google/c/c/dl;-><init>(Lcom/google/c/c/cz;)V

    return-object v0
.end method

.method public final a(Lcom/google/c/a/y;)Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/google/c/c/ak;

    invoke-direct {v0, p1, p0}, Lcom/google/c/c/ak;-><init>(Lcom/google/c/a/y;Lcom/google/c/c/cz;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/google/c/c/cz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    if-ltz p2, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "%d is negative"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 414
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 419
    array-length v1, v0

    if-gt v1, p2, :cond_3

    .line 420
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 432
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 410
    goto :goto_0

    .line 414
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v2, v1, p2}, Lcom/google/c/c/cz;->a([Ljava/lang/Object;III)V

    .line 427
    new-array v1, p2, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 429
    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/google/c/c/cz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method
