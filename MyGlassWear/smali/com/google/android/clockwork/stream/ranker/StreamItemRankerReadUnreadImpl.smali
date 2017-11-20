.class public Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;
.super Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
.source "StreamItemRankerReadUnreadImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadUnreadRanker"


# instance fields
.field private mReadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

.field private mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

.field private mUnreadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/stream/ReadStateManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/google/android/clockwork/stream/ReadStateManager;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 18
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 21
    iput-object p1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    .line 22
    return-void
.end method

.method private combineReadAndUnread()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    return-object v0
.end method

.method private swapItem(Lcom/google/android/clockwork/stream/StreamItem;Z)Z
    .locals 7
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "wasRead"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 70
    .local v4, "oldRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 71
    .local v1, "newRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    :goto_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 72
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :goto_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 73
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :goto_3
    const/4 v6, 0x0

    .line 75
    .local v6, "resorted":Z
    invoke-virtual {v4, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v5

    .line 76
    .local v5, "oldUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v5, :cond_5

    .line 77
    const/4 v6, 0x1

    .line 78
    if-eqz p2, :cond_4

    .line 79
    iput-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 87
    :goto_4
    invoke-virtual {v1, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "newUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v2, :cond_7

    .line 89
    const/4 v6, 0x1

    .line 90
    if-eqz p2, :cond_6

    .line 91
    iput-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 99
    :goto_5
    return v6

    .line 69
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v1    # "newRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    .end local v2    # "newUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v4    # "oldRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    .end local v5    # "oldUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v6    # "resorted":Z
    :cond_0
    iget-object v4, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    goto :goto_0

    .line 70
    .restart local v4    # "oldRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    goto :goto_1

    .line 71
    .restart local v1    # "newRanker":Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    :cond_2
    iget-object v3, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    goto :goto_2

    .line 72
    .restart local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    goto :goto_3

    .line 81
    .restart local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v5    # "oldUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v6    # "resorted":Z
    :cond_4
    iput-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    goto :goto_4

    .line 84
    :cond_5
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 93
    .restart local v2    # "newUpdated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_6
    iput-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    goto :goto_5

    .line 96
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method


# virtual methods
.method public maybeResort()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "moveToUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "moveToRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 29
    .local v1, "item":Lcom/google/android/clockwork/stream/StreamItem;
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-virtual {v7, v1}, Lcom/google/android/clockwork/stream/ReadStateManager;->shouldRankAsUnread(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_1
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 34
    .restart local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-virtual {v7, v1}, Lcom/google/android/clockwork/stream/ReadStateManager;->shouldRankAsUnread(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    .end local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_3
    const/4 v6, 0x0

    .line 41
    .local v6, "resorted":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 42
    .restart local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->swapItem(Lcom/google/android/clockwork/stream/StreamItem;Z)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_2

    .line 45
    .end local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 46
    .restart local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->swapItem(Lcom/google/android/clockwork/stream/StreamItem;Z)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_3

    .line 49
    .end local v1    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_5
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->maybeResort()Ljava/util/ArrayList;

    move-result-object v4

    .line 50
    .local v4, "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v4, :cond_6

    .line 51
    iput-object v4, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 52
    const/4 v6, 0x1

    .line 55
    :cond_6
    iget-object v7, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->maybeResort()Ljava/util/ArrayList;

    move-result-object v5

    .line 56
    .local v5, "newUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v5, :cond_7

    .line 57
    iput-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 58
    const/4 v6, 0x1

    .line 61
    :cond_7
    if-eqz v6, :cond_8

    .line 62
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->combineReadAndUnread()Ljava/util/ArrayList;

    move-result-object v7

    .line 64
    :goto_4
    return-object v7

    :cond_8
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "removedItem"    # Lcom/google/android/clockwork/stream/StreamItem;
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

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->removeItem(Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 149
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v2, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v0, :cond_0

    .line 152
    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 153
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->combineReadAndUnread()Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .end local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :goto_0
    return-object v2

    .line 155
    .restart local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    .end local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v2, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    .local v1, "newUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v1, :cond_3

    .line 160
    iput-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 161
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->combineReadAndUnread()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;
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

    .prologue
    .line 104
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->getExistingItem(Lcom/google/android/clockwork/stream/StreamItemId;)Lcom/google/android/clockwork/stream/StreamItem;

    move-result-object v2

    .line 105
    .local v2, "oldItem":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v3, 0x0

    .line 106
    .local v3, "removedFromRead":Z
    const/4 v4, 0x0

    .line 107
    .local v4, "removedFromUnread":Z
    if-eqz v2, :cond_0

    .line 108
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 109
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->setItem(Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 113
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-virtual {v5, p1}, Lcom/google/android/clockwork/stream/ReadStateManager;->shouldRankAsUnread(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 114
    if-eqz v4, :cond_1

    .line 115
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, "newUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v1, :cond_1

    .line 117
    iput-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 120
    .end local v1    # "newUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v0, :cond_2

    .line 122
    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->combineReadAndUnread()Ljava/util/ArrayList;

    move-result-object v5

    .line 143
    .end local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :goto_0
    return-object v5

    .line 125
    .restart local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_2
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 128
    :cond_3
    if-eqz v3, :cond_4

    .line 129
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .restart local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v0, :cond_4

    .line 131
    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mReadItems:Ljava/util/ArrayList;

    .line 134
    .end local v0    # "newRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_4
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .restart local v1    # "newUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v1, :cond_5

    .line 136
    iput-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    .line 137
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->combineReadAndUnread()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    .line 139
    :cond_5
    iget-object v5, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;->mUnreadItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
