.class public Lcom/google/common/collect/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/jt;

.field b:Ljava/util/Comparator;

.field c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    .line 164
    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/common/collect/dt;->c:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 252
    check-cast v0, Ljava/util/List;

    .line 253
    iget-object v2, p0, Lcom/google/common/collect/dt;->c:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/dt;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 257
    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    .line 258
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/google/common/collect/dt;->b:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/du;

    invoke-direct {v3, p0}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/dt;)V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/w;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1, v3, v0}, Lcom/google/common/collect/jt;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 270
    :cond_1
    iput-object v1, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultimap;->copyOf(Lcom/google/common/collect/jt;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jt;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    return-object p0
.end method
