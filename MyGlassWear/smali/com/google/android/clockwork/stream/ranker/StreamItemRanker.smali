.class public abstract Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
.super Ljava/lang/Object;
.source "StreamItemRanker.java"


# static fields
.field private static final BUNDLE_CHILD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemIdsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Comparator;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;

    invoke-direct {v3}, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;

    invoke-direct {v3}, Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;-><init>([Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->BUNDLE_CHILD_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->mItemIdsMap:Ljava/util/Map;

    return-void
.end method

.method protected static isReordered(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x1

    .line 87
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 99
    :goto_0
    return v3

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 92
    .local v0, "newIdx":I
    const/4 v1, 0x0

    .local v1, "oldIdx":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/stream/StreamItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 99
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    move v2, v3

    :goto_2
    move v3, v2

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getExistingItem(Lcom/google/android/clockwork/stream/StreamItemId;)Lcom/google/android/clockwork/stream/StreamItem;
    .locals 1
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->mItemIdsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItem;

    return-object v0
.end method

.method public abstract maybeResort()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end method

.method public maybeResortGroupChildren(Lcom/google/android/clockwork/stream/StreamItemGroup;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItemGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/clockwork/stream/StreamItemGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "sortedChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->BUNDLE_CHILD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->isReordered(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method protected final removeItem(Lcom/google/android/clockwork/stream/StreamItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->mItemIdsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public abstract removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end method

.method protected final setItem(Lcom/google/android/clockwork/stream/StreamItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->mItemIdsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public abstract setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end method
