.class abstract Lcom/google/common/collect/AbstractSetMultimap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;


# static fields
.field private static final serialVersionUID:J = 0x67226fd4cd0928d8L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Set;
.end method

.method bridge synthetic createUnmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSetMultimap;->createUnmodifiableEmptyCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createUnmodifiableEmptyCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
