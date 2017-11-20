.class final Lcom/google/common/collect/ix;
.super Lcom/google/common/collect/ir;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/aj;)V
    .locals 0

    .prologue
    .line 2145
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ir;-><init>(Ljava/util/Map;Lcom/google/common/base/aj;)V

    .line 2146
    return-void
.end method


# virtual methods
.method final a()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/google/common/collect/ix;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/google/common/collect/ix;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 2174
    new-instance v0, Lcom/google/common/collect/ix;

    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ix;->b:Lcom/google/common/base/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ix;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2162
    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v0

    .line 2165
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    .line 2166
    iget-object v1, p0, Lcom/google/common/collect/ix;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2167
    return-object v0

    .line 2169
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 2178
    new-instance v0, Lcom/google/common/collect/ix;

    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ix;->b:Lcom/google/common/base/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ix;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 2182
    new-instance v0, Lcom/google/common/collect/ix;

    invoke-virtual {p0}, Lcom/google/common/collect/ix;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ix;->b:Lcom/google/common/base/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ix;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/aj;)V

    return-object v0
.end method
