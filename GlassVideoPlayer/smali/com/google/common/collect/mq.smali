.class final Lcom/google/common/collect/mq;
.super Lcom/google/common/collect/iz;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/google/common/collect/mw;

.field c:Lcom/google/common/collect/mu;

.field final synthetic d:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/iz;-><init>()V

    .line 506
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    .line 507
    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/base/ai;)Z
    .locals 6

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 549
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 551
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 552
    iget-object v4, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 553
    if-eqz v4, :cond_0

    new-instance v5, Lcom/google/common/collect/ImmutableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v2, 0x1

    .line 556
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_0
    move v0, v2

    move v2, v0

    .line 560
    goto :goto_0

    .line 561
    :cond_1
    return v2
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/google/common/collect/mr;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mr;-><init>(Lcom/google/common/collect/mq;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/common/collect/mq;->c:Lcom/google/common/collect/mu;

    .line 651
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/mu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mu;-><init>(Lcom/google/common/collect/mq;)V

    iput-object v0, p0, Lcom/google/common/collect/mq;->c:Lcom/google/common/collect/mu;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/common/collect/mq;->b:Lcom/google/common/collect/mw;

    .line 539
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/mw;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mw;-><init>(Lcom/google/common/collect/mq;)V

    iput-object v0, p0, Lcom/google/common/collect/mq;->b:Lcom/google/common/collect/mw;

    :cond_0
    return-object v0
.end method
