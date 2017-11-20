.class public Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;
.super Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
.source "StreamItemRankerBucketImpl.java"


# static fields
.field private static final BUCKET_JUST_INTERRUPTED:I = 0x2

.field private static final BUCKET_OLD_INTERRUPTIVE:I = 0x4

.field private static final BUCKET_ONGOING:I = 0x3

.field private static final BUCKET_ONGOING_INTERRUPTIVE:I = 0x1

.field private static final BUCKET_OTHER:I = 0x5

.field private static final BUCKET_TUTORIAL:I = 0x0

.field private static final NO_BUCKET:I = -0x1

.field private static final NUM_BUCKETS:I = 0x6

.field private static final PACKAGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_KEY_HINT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_OTHER_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StreamItemBucketRanker"

.field private static final TIME_COMPARATOR:Ljava/util/Comparator;
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
.field private final mBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIdToBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    .line 42
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->PRIORITY_COMPARATOR:Ljava/util/Comparator;

    .line 44
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;

    new-array v1, v5, [Ljava/util/Comparator;

    new-instance v2, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;

    invoke-direct {v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;-><init>()V

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;-><init>([Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->PACKAGE_COMPARATOR:Ljava/util/Comparator;

    .line 48
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->SORT_KEY_HINT_COMPARATOR:Ljava/util/Comparator;

    .line 50
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Comparator;

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->PRIORITY_COMPARATOR:Ljava/util/Comparator;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->PACKAGE_COMPARATOR:Ljava/util/Comparator;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;-><init>([Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->SORT_OTHER_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mIdToBucket:Ljava/util/Map;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    .line 61
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method private buildFinalList()Ljava/util/ArrayList;
    .locals 3
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
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mIdToBucket:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v1
.end method

.method private copyBucket(I)Ljava/util/List;
    .locals 2
    .param p1, "bucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private getBucketForItem(Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 292
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isTutorialNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 305
    .local v0, "newBucket":I
    :goto_0
    return v0

    .line 294
    .end local v0    # "newBucket":I
    :cond_0
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isOngoingInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const/4 v0, 0x1

    .restart local v0    # "newBucket":I
    goto :goto_0

    .line 296
    .end local v0    # "newBucket":I
    :cond_1
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->justInterrupted(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    const/4 v0, 0x2

    .restart local v0    # "newBucket":I
    goto :goto_0

    .line 298
    .end local v0    # "newBucket":I
    :cond_2
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    const/4 v0, 0x3

    .restart local v0    # "newBucket":I
    goto :goto_0

    .line 300
    .end local v0    # "newBucket":I
    :cond_3
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->wasEverInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const/4 v0, 0x4

    .restart local v0    # "newBucket":I
    goto :goto_0

    .line 303
    .end local v0    # "newBucket":I
    :cond_4
    const/4 v0, 0x5

    .restart local v0    # "newBucket":I
    goto :goto_0
.end method

.method private resortForItem(ILcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "bucket"    # I
    .param p2, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 114
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortOngoingInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .line 127
    .local v0, "orderChanged":Z
    :goto_0
    return v0

    .line 116
    .end local v0    # "orderChanged":Z
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 117
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortJustInterrupted(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .restart local v0    # "orderChanged":Z
    goto :goto_0

    .line 118
    .end local v0    # "orderChanged":Z
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 119
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .restart local v0    # "orderChanged":Z
    goto :goto_0

    .line 120
    .end local v0    # "orderChanged":Z
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 121
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortOldInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .restart local v0    # "orderChanged":Z
    goto :goto_0

    .line 122
    .end local v0    # "orderChanged":Z
    :cond_3
    if-nez p1, :cond_4

    .line 123
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortTutorial(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .restart local v0    # "orderChanged":Z
    goto :goto_0

    .line 125
    .end local v0    # "orderChanged":Z
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortOther(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    .restart local v0    # "orderChanged":Z
    goto :goto_0
.end method

.method private swapItems(Ljava/util/List;II)V
    .locals 2
    .param p2, "i"    # I
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItem;

    .line 281
    .local v0, "item1":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 282
    .local v1, "item2":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method private twiddleBySortKey(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 267
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItem;

    .line 268
    .local v1, "item1":Lcom/google/android/clockwork/stream/StreamItem;
    add-int/lit8 v3, v0, 0x1

    .local v3, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 269
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/stream/StreamItem;

    .line 270
    .local v2, "item2":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-static {v1, v2}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->fromSamePackage(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;->compareStatic(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v4

    if-lez v4, :cond_0

    .line 272
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->swapItems(Ljava/util/List;II)V

    .line 273
    move-object v1, v2

    .line 268
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v2    # "item2":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "item1":Lcom/google/android/clockwork/stream/StreamItem;
    .end local v3    # "j":I
    :cond_2
    return-void
.end method

.method private updateBucketsForItem(Lcom/google/android/clockwork/stream/StreamItem;I)I
    .locals 5
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "bucket"    # I

    .prologue
    const/4 v2, -0x1

    .line 309
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return v2

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mIdToBucket:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 313
    .local v0, "currentBucket":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mIdToBucket:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->getExistingItem(Lcom/google/android/clockwork/stream/StreamItemId;)Lcom/google/android/clockwork/stream/StreamItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    if-eq p2, v2, :cond_2

    .line 318
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mIdToBucket:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public maybeResort()Ljava/util/ArrayList;
    .locals 11
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
    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v2, "bucketsToSort":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 74
    .local v7, "resorted":Z
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-direct {p0, v10}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->copyBucket(I)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "justInterruptedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/clockwork/stream/StreamItem;

    .line 77
    .local v4, "item":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-direct {p0, v4}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->getBucketForItem(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v6

    .line 78
    .local v6, "newBucket":I
    invoke-direct {p0, v4, v6}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->updateBucketsForItem(Lcom/google/android/clockwork/stream/StreamItem;I)I

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    if-eq v6, v10, :cond_0

    const/4 v8, 0x1

    :goto_1
    or-int/2addr v7, v8

    .line 81
    goto :goto_0

    .line 80
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 83
    .end local v4    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    .end local v6    # "newBucket":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 84
    .local v1, "bucket":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    .local v0, "b":I
    invoke-direct {p0, v0, v9}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortForItem(ILcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 86
    goto :goto_2

    .line 88
    .end local v0    # "b":I
    .end local v1    # "bucket":Ljava/lang/Integer;
    :cond_2
    if-eqz v7, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->buildFinalList()Ljava/util/ArrayList;

    move-result-object v8

    .line 91
    :goto_3
    return-object v8

    :cond_3
    move-object v8, v9

    goto :goto_3
.end method

.method public removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .locals 4
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
    const/4 v2, 0x0

    .line 136
    const/4 v3, -0x1

    invoke-direct {p0, p1, v3}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->updateBucketsForItem(Lcom/google/android/clockwork/stream/StreamItem;I)I

    move-result v0

    .line 137
    .local v0, "currentBucket":I
    const/4 v1, 0x0

    .line 138
    .local v1, "orderChanged":Z
    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 139
    invoke-virtual {p0, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortOther(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->removeItem(Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 142
    if-eqz v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->buildFinalList()Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    :cond_1
    return-object v2
.end method

.method resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z
    .locals 3
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "bucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-direct {p0, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->copyBucket(I)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->updateBucketsForItem(Lcom/google/android/clockwork/stream/StreamItem;I)I

    move-result v0

    .line 162
    .local v0, "currentBucket":I
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    if-eq v0, p2, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->isReordered(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 168
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method resortJustInterrupted(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 179
    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method resortOldInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 193
    const/4 v0, 0x4

    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->PACKAGE_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method resortOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 186
    const/4 v0, 0x3

    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method resortOngoingInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 172
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method resortOther(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 21
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 207
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->copyBucket(I)Ljava/util/List;

    move-result-object v15

    .line 208
    .local v15, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->updateBucketsForItem(Lcom/google/android/clockwork/stream/StreamItem;I)I

    move-result v3

    .line 209
    .local v3, "currentBucket":I
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->copyBucket(I)Ljava/util/List;

    move-result-object v17

    .line 210
    .local v17, "timeSortedItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    sget-object v18, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v17 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 212
    .local v16, "otherBucket":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 214
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v11, "nowCards":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v10, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/clockwork/stream/StreamItem;

    .line 218
    .local v7, "item":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-static {v7}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isNowNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 219
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v7    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_1
    sget-object v18, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->SORT_KEY_HINT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    sget-object v18, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->SORT_OTHER_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->twiddleBySortKey(Ljava/util/List;)V

    .line 228
    const/4 v14, 0x1

    .line 229
    .local v14, "numToGrab":I
    const/4 v4, 0x0

    .line 230
    .local v4, "grabNow":Z
    const/4 v12, 0x0

    .line 231
    .local v12, "nowIdx":I
    const/4 v8, 0x0

    .line 232
    .local v8, "notifIdx":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 233
    if-eqz v4, :cond_3

    .line 234
    const/4 v5, 0x0

    .local v5, "i":I
    move v13, v12

    .end local v12    # "nowIdx":I
    .local v13, "nowIdx":I
    :goto_2
    if-ge v5, v14, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 235
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nowIdx":I
    .restart local v12    # "nowIdx":I
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v5, v5, 0x1

    move v13, v12

    .end local v12    # "nowIdx":I
    .restart local v13    # "nowIdx":I
    goto :goto_2

    .line 237
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    .line 238
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    .line 239
    const/4 v4, 0x0

    move v12, v13

    .line 240
    .end local v13    # "nowIdx":I
    .restart local v12    # "nowIdx":I
    goto :goto_1

    .line 243
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    move v9, v8

    .end local v8    # "notifIdx":I
    .local v9, "notifIdx":I
    :goto_3
    if-ge v5, v14, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 244
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "notifIdx":I
    .restart local v8    # "notifIdx":I
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "notifIdx":I
    .restart local v9    # "notifIdx":I
    goto :goto_3

    .line 246
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 247
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 248
    const/4 v4, 0x1

    move v8, v9

    .line 249
    .end local v9    # "notifIdx":I
    .restart local v8    # "notifIdx":I
    goto :goto_1

    .end local v8    # "notifIdx":I
    .restart local v9    # "notifIdx":I
    :cond_5
    move v8, v9

    .line 252
    .end local v9    # "notifIdx":I
    .restart local v8    # "notifIdx":I
    :goto_4
    if-nez v4, :cond_6

    .line 253
    add-int/lit8 v14, v14, 0x1

    .line 255
    :cond_6
    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 259
    .end local v5    # "i":I
    :cond_8
    if-eqz p1, :cond_9

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 260
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->mBuckets:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->isReordered(Ljava/util/List;Ljava/util/List;)Z

    move-result v18

    .line 262
    :goto_6
    return v18

    :cond_a
    const/16 v18, 0x1

    goto :goto_6

    .end local v12    # "nowIdx":I
    .restart local v5    # "i":I
    .restart local v13    # "nowIdx":I
    :cond_b
    move v12, v13

    .end local v13    # "nowIdx":I
    .restart local v12    # "nowIdx":I
    goto :goto_4
.end method

.method resortTutorial(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "modifiedItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 200
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->SORT_KEY_HINT_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortBucketWithComparator(Lcom/google/android/clockwork/stream/StreamItem;ILjava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;
    .locals 3
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
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->getBucketForItem(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    .line 102
    .local v0, "bucket":I
    invoke-direct {p0, v0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->resortForItem(ILcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    .line 103
    .local v1, "orderChanged":Z
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->setItem(Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerBucketImpl;->buildFinalList()Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
