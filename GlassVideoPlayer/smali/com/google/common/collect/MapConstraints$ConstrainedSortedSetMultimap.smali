.class Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/mj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mj;Lcom/google/common/collect/gf;)V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;-><init>(Lcom/google/common/collect/lw;Lcom/google/common/collect/gf;)V

    .line 819
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 828
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 833
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mj;

    invoke-interface {v0}, Lcom/google/common/collect/mj;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
