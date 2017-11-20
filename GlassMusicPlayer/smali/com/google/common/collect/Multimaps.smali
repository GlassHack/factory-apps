.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 952
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v0, Lcom/google/common/collect/ju;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ju;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method private static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 994
    new-instance v0, Lcom/google/common/collect/kj;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/kj;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static c(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 929
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 930
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 931
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 932
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 933
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 934
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 936
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 976
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 977
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/jn;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/jn;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
