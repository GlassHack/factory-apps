.class final Lcom/google/common/collect/mr;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/mq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mq;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/ai;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/mq;->a(Lcom/google/common/base/ai;)Z

    .line 590
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 594
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 595
    check-cast p1, Ljava/util/Map$Entry;

    .line 596
    iget-object v0, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v2, v2, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/google/common/collect/ms;

    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ms;-><init>(Lcom/google/common/collect/mq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 603
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 604
    check-cast p1, Ljava/util/Map$Entry;

    .line 605
    iget-object v0, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v2, v2, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->a(Ljava/util/Collection;)Lcom/google/common/base/ai;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/mq;->a(Lcom/google/common/base/ai;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 4

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 574
    iget-object v3, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mq;

    iget-object v3, v3, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 577
    goto :goto_0

    .line 578
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
