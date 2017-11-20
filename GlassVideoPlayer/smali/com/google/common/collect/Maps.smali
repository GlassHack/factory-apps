.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final STANDARD_JOINER:Lcom/google/common/base/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2469
    sget-object v0, Lcom/google/common/collect/bb;->a:Lcom/google/common/base/x;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/x;->c(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;Lcom/google/common/base/v;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asSetEntryIterator(Ljava/util/Set;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static asEntryTransformer(Lcom/google/common/base/v;)Lcom/google/common/collect/io;
    .locals 1

    .prologue
    .line 1319
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    new-instance v0, Lcom/google/common/collect/ie;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ie;-><init>(Lcom/google/common/base/v;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lcom/google/common/base/v;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 659
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 660
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/v;)Ljava/util/SortedMap;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/il;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/il;-><init>(Ljava/util/Set;Lcom/google/common/base/v;)V

    goto :goto_0
.end method

.method public static asMap(Ljava/util/SortedSet;Lcom/google/common/base/v;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 694
    new-instance v0, Lcom/google/common/collect/jf;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/jf;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/v;)V

    return-object v0
.end method

.method private static asSetEntryIterator(Ljava/util/Set;Lcom/google/common/base/v;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 781
    new-instance v0, Lcom/google/common/collect/ia;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ia;-><init>(Ljava/util/Iterator;Lcom/google/common/base/v;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 169
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 170
    add-int/lit8 v0, p0, 0x1

    .line 175
    :goto_1
    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    .line 173
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    .line 175
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2530
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2531
    const/4 v0, 0x0

    .line 2533
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2592
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2599
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/gs;
    .locals 1

    .prologue
    .line 342
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, Ljava/util/SortedMap;

    .line 344
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/me;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/gs;

    move-result-object v0

    goto :goto_0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/gs;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 376
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 377
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 380
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 383
    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 384
    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 385
    invoke-virtual {p2, v0, v10}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 386
    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v0, v1

    :goto_2
    move v1, v0

    .line 395
    goto :goto_0

    .line 389
    :cond_0
    invoke-static {v0, v10}, Lcom/google/common/collect/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/gt;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_1

    .line 393
    :cond_1
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_2

    .line 397
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    :goto_3
    invoke-static {v2, v4, v5, v6, v7}, Lcom/google/common/collect/Maps;->mapDifference(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/gs;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v3

    .line 397
    goto :goto_3
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/me;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v4

    .line 552
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v5

    .line 553
    invoke-interface {v5, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 554
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v6

    .line 555
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v7

    .line 559
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 562
    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 563
    invoke-interface {v5, v9}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 564
    invoke-static {v0, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 565
    invoke-interface {v6, v9, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v0, v1

    :goto_2
    move v1, v0

    .line 574
    goto :goto_0

    .line 568
    :cond_0
    invoke-static {v0, v10}, Lcom/google/common/collect/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/gt;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_1

    .line 572
    :cond_1
    invoke-interface {v4, v9, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_2

    .line 576
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    :goto_3
    invoke-static {v2, v4, v5, v6, v7}, Lcom/google/common/collect/Maps;->sortedMapDifference(ZLjava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)Lcom/google/common/collect/me;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v3

    .line 576
    goto :goto_3
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2560
    if-ne p0, p1, :cond_0

    .line 2561
    const/4 v0, 0x1

    .line 2567
    :goto_0
    return v0

    .line 2563
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2564
    check-cast p1, Ljava/util/Map;

    .line 2565
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static filterEntries(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1967
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    instance-of v0, p0, Lcom/google/common/collect/ip;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/ip;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/ip;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ip;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ip;-><init>(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)V

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/Map;Lcom/google/common/base/ai;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 1888
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1889
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1894
    :goto_0
    return-object v0

    .line 1890
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/az;

    if-eqz v0, :cond_1

    .line 1891
    check-cast p0, Lcom/google/common/collect/az;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    goto :goto_0

    .line 1893
    :cond_1
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    instance-of v0, p0, Lcom/google/common/collect/ii;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/common/collect/ii;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/ii;Lcom/google/common/base/ai;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/common/collect/ir;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/ir;-><init>(Ljava/util/Map;Lcom/google/common/base/ai;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 1932
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    instance-of v0, p0, Lcom/google/common/collect/ix;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/ix;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/ix;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/common/collect/ix;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/ix;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/ai;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static filterFiltered(Lcom/google/common/collect/ip;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;
    .locals 3

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/google/common/collect/ip;->b:Lcom/google/common/base/ai;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v0

    .line 2193
    new-instance v1, Lcom/google/common/collect/ip;

    invoke-virtual {p0}, Lcom/google/common/collect/ip;->a()Lcom/google/common/collect/az;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ip;-><init>(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)V

    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/ii;Lcom/google/common/base/ai;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v0

    .line 1981
    new-instance v1, Lcom/google/common/collect/ir;

    iget-object v2, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ir;-><init>(Ljava/util/Map;Lcom/google/common/base/ai;)V

    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/ix;Lcom/google/common/base/ai;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/google/common/collect/ix;->b:Lcom/google/common/base/ai;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v0

    .line 2138
    new-instance v1, Lcom/google/common/collect/ix;

    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ix;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/ai;)V

    return-object v1
.end method

.method public static filterKeys(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1745
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    new-instance v0, Lcom/google/common/collect/jc;

    invoke-direct {v0, p1}, Lcom/google/common/collect/jc;-><init>(Lcom/google/common/base/ai;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/Map;Lcom/google/common/base/ai;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 1669
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1670
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterKeys(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1676
    :goto_0
    return-object v0

    .line 1671
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/az;

    if-eqz v0, :cond_1

    .line 1672
    check-cast p0, Lcom/google/common/collect/az;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterKeys(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    goto :goto_0

    .line 1674
    :cond_1
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    new-instance v2, Lcom/google/common/collect/jc;

    invoke-direct {v2, p1}, Lcom/google/common/collect/jc;-><init>(Lcom/google/common/base/ai;)V

    .line 1676
    instance-of v0, p0, Lcom/google/common/collect/ii;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/common/collect/ii;

    invoke-static {p0, v2}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/ii;Lcom/google/common/base/ai;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/common/collect/iy;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/common/collect/iy;-><init>(Ljava/util/Map;Lcom/google/common/base/ai;Lcom/google/common/base/ai;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1715
    new-instance v0, Lcom/google/common/collect/jc;

    invoke-direct {v0, p1}, Lcom/google/common/collect/jc;-><init>(Lcom/google/common/base/ai;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1854
    new-instance v0, Lcom/google/common/collect/jr;

    invoke-direct {v0, p1}, Lcom/google/common/collect/jr;-><init>(Lcom/google/common/base/ai;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/Map;Lcom/google/common/base/ai;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1780
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1781
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1785
    :goto_0
    return-object v0

    .line 1782
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/az;

    if-eqz v0, :cond_1

    .line 1783
    check-cast p0, Lcom/google/common/collect/az;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterValues(Lcom/google/common/collect/az;Lcom/google/common/base/ai;)Lcom/google/common/collect/az;

    move-result-object v0

    goto :goto_0

    .line 1785
    :cond_1
    new-instance v0, Lcom/google/common/collect/jr;

    invoke-direct {v0, p1}, Lcom/google/common/collect/jr;-><init>(Lcom/google/common/base/ai;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/Map;Lcom/google/common/base/ai;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1821
    new-instance v0, Lcom/google/common/collect/jr;

    invoke-direct {v0, p1}, Lcom/google/common/collect/jr;-><init>(Lcom/google/common/base/ai;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/ai;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lcom/google/common/collect/ImmutableMap;
    .locals 4

    .prologue
    .line 988
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v1

    .line 990
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 992
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1009
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .prologue
    .line 117
    instance-of v0, p0, Lcom/google/common/collect/ImmutableEnumMap;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Lcom/google/common/collect/ImmutableEnumMap;

    .line 126
    :goto_0
    return-object p0

    .line 119
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    :cond_2
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    goto :goto_0
.end method

.method static keyFunction()Lcom/google/common/base/v;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->KEY:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2603
    new-instance v0, Lcom/google/common/collect/if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/if;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2652
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static mapDifference(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/gs;
    .locals 6

    .prologue
    .line 403
    new-instance v0, Lcom/google/common/collect/je;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/je;-><init>(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2

    .prologue
    .line 298
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1

    .prologue
    .line 311
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1

    .prologue
    .line 320
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 625
    if-eqz p0, :cond_0

    .line 628
    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p0

    goto :goto_0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 2583
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2584
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2586
    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2550
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2551
    const/4 v0, 0x0

    .line 2553
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 831
    new-instance v0, Lcom/google/common/collect/ib;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ib;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 851
    new-instance v0, Lcom/google/common/collect/ic;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ic;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2491
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2497
    :goto_0
    return v0

    .line 2495
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2497
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2476
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2482
    :goto_0
    return-object v0

    .line 2480
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2482
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2506
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2512
    :goto_0
    return-object v0

    .line 2510
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2512
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static sortedMapDifference(ZLjava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)Lcom/google/common/collect/me;
    .locals 6

    .prologue
    .line 583
    new-instance v0, Lcom/google/common/collect/jg;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/jg;-><init>(ZLjava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedBiMap(Lcom/google/common/collect/az;)Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->a(Lcom/google/common/collect/az;Ljava/lang/Object;)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/lang/Iterable;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 900
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->toMap(Ljava/util/Iterator;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Iterator;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .prologue
    .line 918
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 921
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 923
    invoke-interface {p1, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 925
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2574
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/bb;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2575
    sget-object v1, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/z;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2576
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transformEntries(Ljava/util/Map;Lcom/google/common/collect/io;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1381
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1382
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/io;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/jh;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/jh;-><init>(Ljava/util/Map;Lcom/google/common/collect/io;)V

    goto :goto_0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/io;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1441
    new-instance v0, Lcom/google/common/collect/jm;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/jm;-><init>(Ljava/util/SortedMap;Lcom/google/common/collect/io;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lcom/google/common/base/v;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1270
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/v;)Lcom/google/common/collect/io;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/io;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lcom/google/common/base/v;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1314
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/v;)Lcom/google/common/collect/io;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/io;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 944
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/v;)Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .prologue
    .line 964
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v0

    .line 966
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 968
    invoke-interface {p1, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    goto :goto_0

    .line 970
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableBiMap(Lcom/google/common/collect/az;)Lcom/google/common/collect/az;
    .locals 2

    .prologue
    .line 1191
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/az;Lcom/google/common/collect/az;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1034
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    new-instance v0, Lcom/google/common/collect/id;

    invoke-direct {v0, p0}, Lcom/google/common/collect/id;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 1021
    new-instance v0, Lcom/google/common/collect/jp;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/jp;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static valueFunction()Lcom/google/common/base/v;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->VALUE:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Lcom/google/common/collect/ol;)Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 2672
    new-instance v0, Lcom/google/common/collect/ih;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ih;-><init>(Lcom/google/common/collect/ol;)V

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2661
    new-instance v0, Lcom/google/common/collect/ig;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ig;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2657
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
