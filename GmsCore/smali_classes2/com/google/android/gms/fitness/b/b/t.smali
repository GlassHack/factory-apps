.class Lcom/google/android/gms/fitness/b/b/t;
.super Lcom/google/android/gms/fitness/b/b/r;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/r;-><init>(Ljava/util/Map;)V

    .line 350
    return-void
.end method


# virtual methods
.method synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/google/android/gms/fitness/b/b/t;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/t;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/google/android/gms/fitness/b/b/t;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/t;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Lcom/google/android/gms/fitness/b/b/t;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/t;->b()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/t;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
