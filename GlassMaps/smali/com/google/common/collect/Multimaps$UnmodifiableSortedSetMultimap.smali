.class Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/mj;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/mj;)V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lcom/google/common/collect/lw;)V

    .line 746
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/mj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Lcom/google/common/collect/lw;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/mj;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/google/common/collect/mj;
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mj;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/mj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/mj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mj;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 760
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 765
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/mj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mj;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
