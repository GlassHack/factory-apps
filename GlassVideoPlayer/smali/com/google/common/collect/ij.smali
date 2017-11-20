.class final Lcom/google/common/collect/ij;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ii;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ii;)V
    .locals 0

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-virtual {v0}, Lcom/google/common/collect/ii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2068
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-virtual {v0}, Lcom/google/common/collect/ii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-virtual {v0}, Lcom/google/common/collect/ii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2048
    new-instance v1, Lcom/google/common/collect/ik;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ik;-><init>(Lcom/google/common/collect/ij;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v0, v0, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2078
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2079
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2080
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v2, v2, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    invoke-interface {v2, v0}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2082
    const/4 v0, 0x1

    .line 2085
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 2090
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const/4 v0, 0x0

    .line 2092
    iget-object v1, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v1, v1, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 2093
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2095
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v3, v3, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    invoke-interface {v3, v0}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2096
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2097
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 2099
    goto :goto_0

    .line 2100
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 2105
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    const/4 v0, 0x0

    .line 2107
    iget-object v1, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v1, v1, Lcom/google/common/collect/ii;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 2108
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    iget-object v3, v3, Lcom/google/common/collect/ii;->b:Lcom/google/common/base/ai;

    invoke-interface {v3, v0}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2112
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 2114
    goto :goto_0

    .line 2115
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-virtual {v0}, Lcom/google/common/collect/ii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/google/common/collect/ij;->iterator()Ljava/util/Iterator;

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
    .line 2126
    invoke-virtual {p0}, Lcom/google/common/collect/ij;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
