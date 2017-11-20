.class abstract Lcom/google/android/gms/fitness/b/b/k;
.super Lcom/google/c/c/au;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/Set;

.field private transient c:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/c/c/au;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/NavigableMap;
.end method

.method abstract b()Ljava/util/Iterator;
.end method

.method protected final c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->a:Ljava/util/Comparator;

    .line 46
    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    .line 51
    :cond_0
    invoke-static {v0}, Lcom/google/c/c/cz;->a(Ljava/util/Comparator;)Lcom/google/c/c/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/cz;->a()Lcom/google/c/c/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->a:Ljava/util/Comparator;

    .line 53
    :cond_1
    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->b:Ljava/util/Set;

    .line 141
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/b/b/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/l;-><init>(Lcom/google/android/gms/fitness/b/b/k;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/k;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->c:Ljava/util/NavigableSet;

    .line 170
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/b/b/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/s;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/k;->c:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/android/gms/fitness/b/b/k;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/k;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/k;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lcom/google/c/c/cd;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
