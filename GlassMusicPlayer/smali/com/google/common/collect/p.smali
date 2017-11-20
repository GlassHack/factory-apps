.class final Lcom/google/common/collect/p;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field d:Ljava/util/SortedSet;

.field final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/google/common/collect/p;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 1182
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 1183
    return-void
.end method

.method private a()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/p;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private b()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/common/collect/p;->d:Ljava/util/SortedSet;

    .line 1220
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/p;->c()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/p;->d:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method private c()Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 1224
    new-instance v0, Lcom/google/common/collect/q;

    iget-object v1, p0, Lcom/google/common/collect/p;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/q;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 1202
    new-instance v0, Lcom/google/common/collect/p;

    iget-object v1, p0, Lcom/google/common/collect/p;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/google/common/collect/p;->b()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 1206
    new-instance v0, Lcom/google/common/collect/p;

    iget-object v1, p0, Lcom/google/common/collect/p;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 1210
    new-instance v0, Lcom/google/common/collect/p;

    iget-object v1, p0, Lcom/google/common/collect/p;->e:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/p;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
