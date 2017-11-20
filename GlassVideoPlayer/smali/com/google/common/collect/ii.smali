.class abstract Lcom/google/common/collect/ii;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Lcom/google/common/base/ai;

.field c:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/ai;)V
    .locals 0

    .prologue
    .line 1988
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1989
    iput-object p1, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    .line 1990
    iput-object p2, p0, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    .line 1991
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1997
    .line 1998
    iget-object v0, p0, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ii;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2023
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ii;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/google/common/collect/ii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2003
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ii;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 2004
    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 2009
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

    .line 2010
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ii;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    goto :goto_0

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2013
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ii;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/google/common/collect/ii;->c:Ljava/util/Collection;

    .line 2041
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ij;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ij;-><init>(Lcom/google/common/collect/ii;)V

    iput-object v0, p0, Lcom/google/common/collect/ii;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
