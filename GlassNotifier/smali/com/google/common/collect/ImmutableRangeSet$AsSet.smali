.class final Lcom/google/common/collect/ImmutableRangeSet$AsSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final domain:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient size:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    .line 535
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 536
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    .line 537
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    const/4 v3, 0x0

    .line 627
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return v3

    .line 632
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 633
    .local v1, "c":Ljava/lang/Comparable;, "TC;"
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableRangeSet;->contains(Ljava/lang/Comparable;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 634
    .end local v1    # "c":Ljava/lang/Comparable;, "TC;"
    :catch_0
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/DescendingImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DescendingImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;-><init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 641
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 643
    check-cast v0, Ljava/lang/Comparable;

    .line 644
    .local v0, "c":Ljava/lang/Comparable;, "TC;"
    const-wide/16 v2, 0x0

    .line 645
    .local v2, "total":J
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v4}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 646
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v1, v4}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ContiguousSet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    .line 654
    .end local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .end local v2    # "total":J
    :goto_1
    return v4

    .line 649
    .restart local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .restart local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .restart local v2    # "total":J
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v1, v5}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ContiguousSet;->size()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 651
    goto :goto_0

    .line 652
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 654
    .end local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .end local v2    # "total":J
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 664
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 544
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    .line 545
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 546
    const-wide/16 v2, 0x0

    .line 547
    .local v2, "total":J
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v4}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 548
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v5, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v0, v5}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ContiguousSet;->size()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 549
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 553
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_1
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Integer;
    iput-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    .line 555
    .end local v2    # "total":J
    .restart local v1    # "result":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4
.end method

.method subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    invoke-static {p1, p3}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    .line 616
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 617
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 615
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 614
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 674
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
