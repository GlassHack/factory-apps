.class final Lcom/google/android/gms/fitness/b/b/s;
.super Lcom/google/android/gms/fitness/b/b/t;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/t;-><init>(Ljava/util/SortedMap;)V

    .line 265
    return-void
.end method


# virtual methods
.method final bridge synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method final bridge synthetic b()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/s;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/s;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/b/b/j;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/b/b/j;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/android/gms/fitness/b/b/s;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/s;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/s;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
