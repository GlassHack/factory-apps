.class final Lcom/google/common/collect/iv;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ir;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ir;)V
    .locals 0

    .prologue
    .line 2341
    iput-object p1, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ir;Lcom/google/common/collect/ia;)V
    .locals 0

    .prologue
    .line 2341
    invoke-direct {p0, p1}, Lcom/google/common/collect/iv;-><init>(Lcom/google/common/collect/ir;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2365
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ir;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2345
    new-instance v1, Lcom/google/common/collect/iw;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/iw;-><init>(Lcom/google/common/collect/iv;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ir;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    const/4 v0, 0x1

    .line 2378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 2383
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    const/4 v0, 0x0

    .line 2385
    iget-object v1, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v1, v1, Lcom/google/common/collect/ir;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 2386
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2388
    iget-object v3, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v3, v3, Lcom/google/common/collect/ir;->b:Lcom/google/common/base/ai;

    invoke-interface {v3, v0}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2389
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2390
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 2392
    goto :goto_0

    .line 2393
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2399
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2404
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
