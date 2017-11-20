.class final Lcom/google/common/collect/jf;
.super Lcom/google/common/collect/il;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/base/v;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/il;-><init>(Ljava/util/Set;Lcom/google/common/base/v;)V

    .line 793
    return-void
.end method

.method private c()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 797
    invoke-super {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/jf;->a:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/v;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/jf;->a:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/v;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/google/common/collect/jf;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/jf;->a:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/v;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
