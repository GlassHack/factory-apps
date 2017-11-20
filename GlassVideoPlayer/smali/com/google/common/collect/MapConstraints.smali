.class public final Lcom/google/common/collect/MapConstraints;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/gf;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/MapConstraints;->b(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/gf;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;Lcom/google/common/collect/gf;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Collection;Lcom/google/common/collect/gf;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->c(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/gf;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 843
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 845
    invoke-interface {p2, p0, v2}, Lcom/google/common/collect/gf;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 847
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/util/Collection;Lcom/google/common/collect/gf;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 263
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->c(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/gn;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gn;-><init>(Ljava/util/Collection;Lcom/google/common/collect/gf;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->d(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/gj;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gj;-><init>(Ljava/util/Set;Lcom/google/common/collect/gf;)V

    return-object v0
.end method

.method private static c(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/google/common/collect/gg;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gg;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)V

    return-object v0
.end method

.method private static c(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/google/common/collect/gp;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gp;-><init>(Ljava/util/Set;Lcom/google/common/collect/gf;)V

    return-object v0
.end method

.method private static d(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 210
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/google/common/collect/gh;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gh;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)V

    return-object v0
.end method
