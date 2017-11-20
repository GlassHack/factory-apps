.class final Lcom/google/common/collect/mw;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/mq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mq;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 717
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

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
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 721
    if-nez p1, :cond_0

    move v0, v1

    .line 734
    :goto_0
    return v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 725
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 727
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/google/common/collect/ImmutableEntry;

    iget-object v5, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    iget-object v5, v5, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-direct {v4, v5, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 731
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 734
    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 739
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v0, Lcom/google/common/collect/mx;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/mx;-><init>(Lcom/google/common/collect/mw;Ljava/util/Collection;)V

    .line 746
    iget-object v1, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/mq;->a(Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 751
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v0, Lcom/google/common/collect/my;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/my;-><init>(Lcom/google/common/collect/mw;Ljava/util/Collection;)V

    .line 758
    iget-object v1, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/mq;->a(Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/common/collect/mw;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
