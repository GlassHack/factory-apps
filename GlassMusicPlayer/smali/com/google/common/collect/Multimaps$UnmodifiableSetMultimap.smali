.class Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/lw;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lcom/google/common/collect/jt;)V

    .line 708
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/google/common/collect/lw;
    .locals 1

    .prologue
    .line 712
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/lw;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lw;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lw;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 731
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
