.class final Lcom/google/c/c/hr;
.super Lcom/google/c/c/hl;

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field private c:Ljava/util/SortedSet;

.field private synthetic d:Lcom/google/c/c/hk;


# direct methods
.method constructor <init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hr;->d:Lcom/google/c/c/hk;

    invoke-direct {p0, p1, p2}, Lcom/google/c/c/hl;-><init>(Lcom/google/c/c/hk;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v1, Lcom/google/c/c/hr;

    iget-object v2, p0, Lcom/google/c/c/hr;->d:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hr;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/c/c/hr;->c:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/c/c/hs;

    iget-object v2, p0, Lcom/google/c/c/hr;->d:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hs;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    iput-object v1, p0, Lcom/google/c/c/hr;->c:Ljava/util/SortedSet;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v1, Lcom/google/c/c/hr;

    iget-object v2, p0, Lcom/google/c/c/hr;->d:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hr;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v1, Lcom/google/c/c/hr;

    iget-object v2, p0, Lcom/google/c/c/hr;->d:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hr;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method
