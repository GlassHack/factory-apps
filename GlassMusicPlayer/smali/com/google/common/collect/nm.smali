.class final Lcom/google/common/collect/nm;
.super Lcom/google/common/collect/np;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/nl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/nl;)V
    .locals 2

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v0, p1, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/np;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1007
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 1008
    check-cast p1, Ljava/util/Map$Entry;

    .line 1009
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v1, v1, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1012
    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 991
    new-instance v0, Lcom/google/common/collect/nn;

    iget-object v1, p0, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v1, v1, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nn;-><init>(Lcom/google/common/collect/nm;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1017
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 1018
    check-cast p1, Ljava/util/Map$Entry;

    .line 1019
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v1, v1, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1022
    :cond_0
    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v0, v0, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
