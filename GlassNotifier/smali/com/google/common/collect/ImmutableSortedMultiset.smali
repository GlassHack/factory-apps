.class public abstract Lcom/google/common/collect/ImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field transient descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;-><init>()V

    return-void
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 171
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v2, p1, Lcom/google/common/collect/ImmutableSortedMultiset;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 219
    .local v0, "multiset":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->isPartialView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    .line 230
    .end local v0    # "multiset":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 228
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v1

    .line 229
    .local v1, "sortedCopy":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v1, p1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 230
    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 189
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "elements":[Ljava/lang/Comparable;, "[TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfSorted(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 248
    .line 249
    .local p0, "sortedMultiset":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v4

    .line 265
    :goto_0
    return-object v4

    .line 257
    :cond_0
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 258
    .local v1, "elementsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [J

    .line 259
    .local v0, "cumulativeCounts":[J
    const/4 v3, 0x0

    .line 260
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 261
    .local v2, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 262
    add-int/lit8 v5, v3, 0x1

    aget-wide v6, v0, v3

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    goto :goto_1

    .line 265
    .end local v2    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_1
    new-instance v4, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    new-instance v5, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 266
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V

    goto :goto_0
.end method

.method static emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .line 67
    .local p0, "element":Ljava/lang/Comparable;, "TE;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 68
    .local v1, "elementSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    .line 69
    .local v0, "cumulativeCounts":[J
    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V

    return-object v2

    .line 68
    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    .local p5, "e6":Ljava/lang/Comparable;, "TE;"
    .local p6, "remaining":[Ljava/lang/Comparable;, "[TE;"
    array-length v2, p6

    add-int/lit8 v1, v2, 0x6

    .line 128
    .local v1, "size":I
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    invoke-static {v0, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v2

    return-object v2
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 297
    .local v0, "result":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    .line 301
    :goto_0
    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 303
    :goto_1
    return-object v1

    .line 301
    :cond_0
    new-instance v1, Lcom/google/common/collect/DescendingImmutableSortedMultiset;

    invoke-direct {v1, p0}, Lcom/google/common/collect/DescendingImmutableSortedMultiset;-><init>(Lcom/google/common/collect/ImmutableSortedMultiset;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 303
    goto :goto_1
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .param p2, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 342
    .line 343
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Expected lowerBound <= upperBound but %s > %s"

    .line 342
    invoke-static {v0, v1, p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 567
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset;, "Lcom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
