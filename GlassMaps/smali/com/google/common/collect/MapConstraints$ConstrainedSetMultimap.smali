.class Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lw;Lcom/google/common/collect/gf;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;-><init>(Lcom/google/common/collect/jt;Lcom/google/common/collect/gf;)V

    .line 791
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 800
    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 805
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 810
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
