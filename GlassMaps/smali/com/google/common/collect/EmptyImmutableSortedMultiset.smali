.class final Lcom/google/common/collect/EmptyImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# instance fields
.field private final elementSet:Lcom/google/common/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 36
    return-void
.end method


# virtual methods
.method public final asList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/google/common/collect/kp;

    .line 102
    invoke-interface {p1}, Lcom/google/common/collect/kp;->isEmpty()Z

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final firstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 0

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/google/common/collect/ej;->a()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 0

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/collect/kx;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "[]"

    return-object v0
.end method
