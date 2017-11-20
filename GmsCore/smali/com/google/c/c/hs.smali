.class final Lcom/google/c/c/hs;
.super Lcom/google/c/c/ho;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private synthetic c:Lcom/google/c/c/hk;


# direct methods
.method constructor <init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hs;->c:Lcom/google/c/c/hk;

    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ho;-><init>(Lcom/google/c/c/hk;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    new-instance v1, Lcom/google/c/c/hs;

    iget-object v2, p0, Lcom/google/c/c/hs;->c:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hs;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    new-instance v1, Lcom/google/c/c/hs;

    iget-object v2, p0, Lcom/google/c/c/hs;->c:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hs;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    new-instance v1, Lcom/google/c/c/hs;

    iget-object v2, p0, Lcom/google/c/c/hs;->c:Lcom/google/c/c/hk;

    iget-object v0, p0, Lcom/google/c/c/hs;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/hs;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    return-object v1
.end method
