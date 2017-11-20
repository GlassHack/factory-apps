.class final Lcom/google/c/c/y;
.super Lcom/google/c/c/u;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic c:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/google/c/c/y;->c:Lcom/google/c/c/m;

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/u;-><init>(Lcom/google/c/c/m;Ljava/util/Map;)V

    .line 953
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 971
    new-instance v1, Lcom/google/c/c/y;

    iget-object v2, p0, Lcom/google/c/c/y;->c:Lcom/google/c/c/m;

    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/y;-><init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 981
    new-instance v1, Lcom/google/c/c/y;

    iget-object v2, p0, Lcom/google/c/c/y;->c:Lcom/google/c/c/m;

    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/y;-><init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 986
    new-instance v1, Lcom/google/c/c/y;

    iget-object v2, p0, Lcom/google/c/c/y;->c:Lcom/google/c/c/m;

    iget-object v0, p0, Lcom/google/c/c/y;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/c/c/y;-><init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V

    return-object v1
.end method
