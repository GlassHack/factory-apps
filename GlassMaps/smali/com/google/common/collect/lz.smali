.class final Lcom/google/common/collect/lz;
.super Lcom/google/common/collect/ly;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/base/aj;)V
    .locals 0

    .prologue
    .line 905
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ly;-><init>(Ljava/util/Set;Lcom/google/common/base/aj;)V

    .line 906
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/common/collect/lz;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/google/common/collect/lz;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 918
    new-instance v1, Lcom/google/common/collect/lz;

    iget-object v0, p0, Lcom/google/common/collect/lz;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/lz;->b:Lcom/google/common/base/aj;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/lz;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/aj;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/common/collect/lz;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    .line 932
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    .line 933
    iget-object v2, p0, Lcom/google/common/collect/lz;->b:Lcom/google/common/base/aj;

    invoke-interface {v2, v1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    return-object v1

    .line 936
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 913
    new-instance v1, Lcom/google/common/collect/lz;

    iget-object v0, p0, Lcom/google/common/collect/lz;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/lz;->b:Lcom/google/common/base/aj;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/lz;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/aj;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 922
    new-instance v1, Lcom/google/common/collect/lz;

    iget-object v0, p0, Lcom/google/common/collect/lz;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/lz;->b:Lcom/google/common/base/aj;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/lz;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/aj;)V

    return-object v1
.end method
