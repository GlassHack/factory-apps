.class public Lcom/google/common/collect/ImmutableRangeSet$Builder;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 715
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$Builder;, "Lcom/google/common/collect/ImmutableRangeSet$Builder<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    .line 717
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$Builder;, "Lcom/google/common/collect/ImmutableRangeSet$Builder<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    return-object p0

    .line 729
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$Builder;, "Lcom/google/common/collect/ImmutableRangeSet$Builder<TC;>;"
    .local p1, "ranges":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$Builder;, "Lcom/google/common/collect/ImmutableRangeSet$Builder<TC;>;"
    .local p1, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 754
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    goto :goto_0

    .line 756
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$Builder;, "Lcom/google/common/collect/ImmutableRangeSet$Builder<TC;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v5, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    .line 766
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 767
    .local v1, "mergedRangesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v5, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    sget-object v6, Lcom/google/common/collect/Range;->RANGE_LEX_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    iget-object v5, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 769
    .local v3, "peekingItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    :goto_0
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 770
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    .line 771
    .local v4, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_1
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 773
    .local v2, "nextRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v4, v2}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 775
    invoke-virtual {v4, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v5

    const-string v6, "Overlapping ranges not permitted but found %s overlapping %s"

    .line 774
    invoke-static {v5, v6, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Range;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Range;->span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v4

    .line 783
    goto :goto_1

    .line 784
    .end local v2    # "nextRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 786
    .end local v4    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 787
    .local v0, "mergedRanges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 788
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v5

    .line 793
    :goto_2
    return-object v5

    .line 789
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 790
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 791
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v5

    goto :goto_2

    .line 793
    :cond_3
    new-instance v5, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v5, v0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_2
.end method
