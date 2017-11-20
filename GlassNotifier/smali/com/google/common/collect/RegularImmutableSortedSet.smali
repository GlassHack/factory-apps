.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final NATURAL_EMPTY_SET:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient elements:Lcom/google/common/collect/ImmutableList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "elements":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 49
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    .line 50
    return-void
.end method

.method private unsafeBinarySearch(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 213
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v1, 0x0

    .line 71
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeBinarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    instance-of v8, p1, Lcom/google/common/collect/Multiset;

    if-eqz v8, :cond_0

    .line 84
    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 86
    .restart local p1    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    if-gt v8, v7, :cond_3

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 127
    :cond_2
    :goto_0
    return v6

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    .line 96
    .local v5, "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 99
    .local v4, "thatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 104
    .local v3, "target":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "current":Ljava/lang/Object;, "TE;"
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 109
    .local v0, "cmp":I
    if-gez v0, :cond_5

    .line 110
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_5
    if-nez v0, :cond_7

    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v7

    .line 116
    goto :goto_0

    .line 118
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 120
    :cond_7
    if-lez v0, :cond_4

    goto :goto_0

    .line 124
    .end local v0    # "cmp":I
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 142
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 297
    .local v0, "reversedOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 299
    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v6

    .line 150
    :cond_1
    instance-of v8, p1, Ljava/util/Set;

    if-nez v8, :cond_2

    move v6, v7

    .line 151
    goto :goto_0

    :cond_2
    move-object v5, p1

    .line 154
    check-cast v5, Ljava/util/Set;

    .line 155
    .local v5, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    move v6, v7

    .line 156
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 161
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v8, v5}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 162
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 164
    .local v4, "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 165
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "otherElement":Ljava/lang/Object;
    if-eqz v3, :cond_5

    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    :cond_5
    move v6, v7

    .line 169
    goto :goto_0

    .line 173
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v3    # "otherElement":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    move v6, v7

    .line 174
    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    move v6, v7

    .line 176
    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 207
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;
    .locals 3
    .param p1, "newFromIndex"    # I
    .param p2, "newToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 271
    .end local p0    # "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    :goto_0
    return-object p0

    .line 267
    .restart local p0    # "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    :cond_0
    if-ge p1, p2, :cond_1

    .line 268
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    .line 269
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    move-object p0, v0

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    goto :goto_0
.end method

.method headIndex(Ljava/lang/Object;Z)I
    .locals 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 229
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 230
    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 232
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 219
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v2, -0x1

    .line 277
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return v2

    .line 282
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 286
    .local v1, "position":I
    if-ltz v1, :cond_1

    .end local v1    # "position":I
    :goto_1
    move v2, v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "position":I
    :cond_1
    move v1, v2

    .line 286
    goto :goto_1
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

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
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 201
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailIndex(Ljava/lang/Object;Z)I
    .locals 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 249
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 250
    if-eqz p2, :cond_0

    .line 252
    .end local v0    # "index":I
    :goto_0
    return v0

    .line 250
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method unsafeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
