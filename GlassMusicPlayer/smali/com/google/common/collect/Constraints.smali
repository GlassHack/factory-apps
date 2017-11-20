.class public final Lcom/google/common/collect/Constraints;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 343
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 344
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/bs;)Ljava/util/SortedSet;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 345
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 346
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Set;Lcom/google/common/collect/bs;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 348
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/List;Lcom/google/common/collect/bs;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->c(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/common/collect/bs;)Ljava/util/List;
    .locals 1

    .prologue
    .line 228
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/bw;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bw;-><init>(Ljava/util/List;Lcom/google/common/collect/bs;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/bu;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bu;-><init>(Ljava/util/List;Lcom/google/common/collect/bs;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ListIterator;Lcom/google/common/collect/bs;)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/ListIterator;Lcom/google/common/collect/bs;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lcom/google/common/collect/bs;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/common/collect/bx;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bx;-><init>(Ljava/util/Set;Lcom/google/common/collect/bs;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedSet;Lcom/google/common/collect/bs;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/by;-><init>(Ljava/util/SortedSet;Lcom/google/common/collect/bs;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->d(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/ListIterator;Lcom/google/common/collect/bs;)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/google/common/collect/bv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bv;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/bs;)V

    return-object v0
.end method

.method private static c(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/collect/bt;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bt;-><init>(Ljava/util/Collection;Lcom/google/common/collect/bs;)V

    return-object v0
.end method

.method private static d(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 422
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 424
    invoke-interface {p1, v2}, Lcom/google/common/collect/bs;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    :cond_0
    return-object v0
.end method
