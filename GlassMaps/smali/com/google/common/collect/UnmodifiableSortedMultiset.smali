.class final Lcom/google/common/collect/UnmodifiableSortedMultiset;
.super Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/mf;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/kp;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final createElementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mf;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public final descendingMultiset()Lcom/google/common/collect/mf;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/mf;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/mf;)V

    .line 65
    iput-object p0, v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 66
    iput-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 68
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->firstEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mf;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/mf;)Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->lastEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/mf;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/mf;)Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mf;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/mf;)Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method
