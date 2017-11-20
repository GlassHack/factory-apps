.class abstract Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1041
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1044
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 1045
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 1046
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1047
    return-void
.end method

.method static isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1780
    .local p0, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method clear()V
    .locals 4

    .prologue
    .line 1613
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 1614
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1617
    .local v1, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1618
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    .line 1621
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1623
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1624
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1629
    .end local v0    # "i":I
    .end local v1    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_1
    return-void

    .line 1626
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v2
.end method

.method clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1218
    return-void
.end method

.method clearValueForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 10
    .param p2, "hash"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    const/4 v9, 0x0

    .line 1726
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1728
    :try_start_0
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1729
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v4, p2, v8

    .line 1730
    .local v4, "index":I
    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1732
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v1, v3

    .local v1, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v1, :cond_2

    .line 1733
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1734
    .local v2, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_1

    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1736
    invoke-virtual {v8, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1737
    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    move-object v8, v0

    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v7

    .line 1738
    .local v7, "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    if-ne v7, p3, :cond_0

    .line 1739
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    .line 1740
    .local v5, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    const/4 v8, 0x1

    .line 1749
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1747
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v7    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :goto_1
    return v8

    .line 1749
    .restart local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v8, v9

    .line 1743
    goto :goto_1

    .line 1732
    .end local v7    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1749
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v8, v9

    .line 1747
    goto :goto_1

    .line 1749
    .end local v1    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v8
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const/4 v1, 0x0

    .line 1274
    :try_start_0
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 1275
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1276
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1279
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    return v1

    .line 1281
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1292
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :try_start_0
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v5, :cond_3

    .line 1293
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1294
    .local v4, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 1295
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1296
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    if-eqz v0, :cond_2

    .line 1297
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 1298
    .local v1, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 1296
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_1

    .line 1301
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v5}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1302
    const/4 v5, 0x1

    .line 1310
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1308
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v1    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_2
    return v5

    .line 1295
    .restart local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    const/4 v5, 0x0

    .line 1310
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v5
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "original":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "newNext":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method copyForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 4
    .param p2    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "newNext":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "keyReferenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    const/4 v1, 0x0

    .line 1192
    .local v1, "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 1194
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1195
    .local v0, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 1196
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 1200
    .end local v0    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1205
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "valueReferenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    const/4 v0, 0x0

    .line 1206
    .local v0, "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 1208
    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1209
    .local v2, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V

    .line 1210
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 1214
    .end local v2    # "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_1
    return-void
.end method

.method expand()V
    .locals 18
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1376
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1377
    .local v14, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    .line 1378
    .local v12, "oldCapacity":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1392
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1393
    .local v5, "newCount":I
    shl-int/lit8 v17, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    .line 1394
    .local v10, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1395
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 1396
    .local v8, "newMask":I
    const/4 v13, 0x0

    .local v13, "oldIndex":I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 1399
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1401
    .local v3, "head":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v3, :cond_1

    .line 1402
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v11

    .line 1403
    .local v11, "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v17

    and-int v4, v17, v8

    .line 1406
    .local v4, "headIndex":I
    if-nez v11, :cond_2

    .line 1407
    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1396
    .end local v4    # "headIndex":I
    .end local v11    # "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1412
    .restart local v4    # "headIndex":I
    .restart local v11    # "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_2
    move-object v15, v3

    .line 1413
    .local v15, "tail":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move/from16 v16, v4

    .line 1414
    .local v16, "tailIndex":I
    move-object v2, v11

    .local v2, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_2
    if-eqz v2, :cond_4

    .line 1415
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 1416
    .local v7, "newIndex":I
    move/from16 v0, v16

    if-eq v7, v0, :cond_3

    .line 1418
    move/from16 v16, v7

    .line 1419
    move-object v15, v2

    .line 1414
    :cond_3
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    goto :goto_2

    .line 1422
    .end local v7    # "newIndex":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1425
    move-object v2, v3

    :goto_3
    if-eq v2, v15, :cond_1

    .line 1426
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 1427
    .restart local v7    # "newIndex":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1428
    .local v9, "newNext":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1429
    .local v6, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v6, :cond_5

    .line 1430
    invoke-virtual {v10, v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1425
    :goto_4
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    goto :goto_3

    .line 1432
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 1438
    .end local v2    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "head":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "headIndex":I
    .end local v6    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v7    # "newIndex":I
    .end local v9    # "newNext":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v11    # "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v15    # "tail":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v16    # "tailIndex":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1439
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto/16 :goto_0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 1257
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1258
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-nez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1266
    :goto_0
    return-object v1

    .line 1262
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1263
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v2
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 1230
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_3

    .line 1231
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1232
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 1231
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    .line 1236
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 1242
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1223
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1224
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    const/4 v1, 0x0

    .line 1789
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1790
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 1799
    :cond_0
    :goto_0
    return-object v0

    .line 1793
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1794
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 1795
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 1796
    goto :goto_0
.end method

.method getLiveValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1170
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1079
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1080
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 1082
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1084
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1085
    return-void
.end method

.method maybeClearReferenceQueues()V
    .locals 0

    .prologue
    .line 1062
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1059
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method newEntryForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method newWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .prologue
    .line 1119
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 1808
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1809
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 1811
    :cond_0
    return-void
.end method

.method preWriteCleanup()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1819
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1820
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 1315
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1317
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1319
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 1320
    .local v5, "newCount":I
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v5, v9, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 1322
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 1325
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1326
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 1327
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1330
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_4

    .line 1331
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1332
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1334
    invoke-virtual {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1337
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1339
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 1340
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1341
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1342
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1343
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1365
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v2

    .line 1345
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    if-eqz p4, :cond_2

    .line 1367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .line 1352
    :cond_2
    :try_start_1
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1353
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .line 1330
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    .line 1360
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1361
    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v10

    invoke-interface {v9, v10, p1, p2, v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1362
    .local v6, "newEntry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {p0, v6, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1363
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1364
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1365
    goto :goto_1

    .line 1367
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v6    # "newEntry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v8
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z
    .locals 7
    .param p2, "hash"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .prologue
    .line 1662
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1664
    :try_start_0
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 1665
    .local v3, "newCount":I
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1666
    .local v5, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v2, p2, v6

    .line 1667
    .local v2, "index":I
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1669
    .local v1, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v1

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1670
    if-ne v0, p1, :cond_0

    .line 1671
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1672
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4

    .line 1673
    .local v4, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 1674
    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1675
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    const/4 v6, 0x1

    .line 1682
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1680
    .end local v4    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    return v6

    .line 1669
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1680
    :cond_1
    const/4 v6, 0x0

    .line 1682
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v1    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v2    # "index":I
    .end local v3    # "newCount":I
    .end local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v6
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 11
    .param p2, "hash"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    const/4 v10, 0x0

    .line 1689
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1691
    :try_start_0
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1692
    .local v5, "newCount":I
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1693
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 1694
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1696
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v1, v3

    .local v1, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v1, :cond_2

    .line 1697
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1698
    .local v2, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_1

    if-eqz v2, :cond_1

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1700
    invoke-virtual {v9, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1701
    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    move-object v9, v0

    invoke-interface {v9}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v8

    .line 1702
    .local v8, "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    if-ne v8, p3, :cond_0

    .line 1703
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1704
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1705
    .local v6, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1706
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1707
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    const/4 v9, 0x1

    .line 1716
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1714
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v8    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :goto_1
    return v9

    .line 1716
    .restart local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v8    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v9, v10

    .line 1710
    goto :goto_1

    .line 1696
    .end local v8    # "v":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1716
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v9, v10

    .line 1714
    goto :goto_1

    .line 1716
    .end local v1    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v9
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const/4 v8, 0x0

    .line 1532
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1534
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1536
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1537
    .local v5, "newCount":I
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1538
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 1539
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1541
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1542
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1543
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1545
    invoke-virtual {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1546
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1548
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1

    .line 1556
    :cond_0
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1557
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1558
    .local v6, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v8, -0x1

    .line 1559
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1560
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1565
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    return-object v2

    .line 1550
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1553
    goto :goto_1

    .line 1541
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1567
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1565
    goto :goto_1

    .line 1567
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v8
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const/4 v9, 0x0

    .line 1572
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1574
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1576
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v10, -0x1

    .line 1577
    .local v6, "newCount":I
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1578
    .local v8, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v5, p2, v10

    .line 1579
    .local v5, "index":I
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1581
    .local v4, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v4

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1582
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1583
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1585
    invoke-virtual {v10, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1586
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1588
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 1589
    .local v3, "explicitRemoval":Z
    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v10

    invoke-virtual {v10, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1590
    const/4 v3, 0x1

    .line 1597
    :cond_0
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1598
    invoke-virtual {p0, v4, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1599
    .local v7, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v9, -0x1

    .line 1600
    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1601
    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1606
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "explicitRemoval":Z
    .end local v7    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    return v3

    .line 1591
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v3    # "explicitRemoval":Z
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v3, v9

    .line 1594
    goto :goto_1

    .line 1581
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "explicitRemoval":Z
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1608
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v3, v9

    .line 1606
    goto :goto_1

    .line 1608
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v5    # "index":I
    .end local v6    # "newCount":I
    .end local v8    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v9
.end method

.method removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1755
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v2

    .line 1756
    .local v2, "hash":I
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v4, v7, -0x1

    .line 1757
    .local v4, "newCount":I
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1758
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    and-int v3, v2, v7

    .line 1759
    .local v3, "index":I
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1761
    .local v1, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v1

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1762
    if-ne v0, p1, :cond_0

    .line 1763
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1764
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v5

    .line 1765
    .local v5, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v4, v7, -0x1

    .line 1766
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1767
    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1768
    const/4 v7, 0x1

    .line 1772
    .end local v5    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_1
    return v7

    .line 1761
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    .line 1772
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1645
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1646
    .local v1, "newCount":I
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    .line 1647
    .local v2, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, p1

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 1648
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    .line 1649
    .local v3, "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    if-eqz v3, :cond_0

    .line 1650
    move-object v2, v3

    .line 1647
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    .line 1652
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1655
    .end local v3    # "next":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_1
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1656
    return-object v2
.end method

.method removeFromChainForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method removeTableEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)Z"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    return v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 1490
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1492
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1494
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1495
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 1496
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1498
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1499
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1500
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1502
    invoke-virtual {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1505
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1506
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 1507
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1508
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1509
    .local v5, "newCount":I
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1510
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1511
    .local v6, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1512
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1513
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    .end local v5    # "newCount":I
    .end local v6    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1524
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v2

    .line 1518
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1519
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1526
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .line 1498
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1526
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v2, v8

    .line 1524
    goto :goto_1

    .line 1526
    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v8
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 1443
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1445
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1447
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1448
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 1449
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1451
    .local v3, "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_0
    if-eqz v0, :cond_4

    .line 1452
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1453
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1455
    invoke-virtual {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1458
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1459
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 1460
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1461
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1462
    .local v5, "newCount":I
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1463
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    .line 1464
    .local v6, "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 1465
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1466
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    .end local v5    # "newCount":I
    .end local v6    # "newFirst":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1483
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return v8

    .line 1471
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v9}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v9

    invoke-virtual {v9, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1472
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1473
    invoke-virtual {p0, v0, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    const/4 v8, 0x1

    .line 1485
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .line 1451
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1485
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v3    # "first":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .end local v4    # "index":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v8
.end method

.method runCleanup()V
    .locals 0

    .prologue
    .line 1823
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1824
    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .prologue
    .line 1827
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    .line 1830
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1835
    :cond_0
    return-void

    .line 1832
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method abstract self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method setTableEntryForTesting(ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1137
    return-void
.end method

.method setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .prologue
    .line 1066
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1067
    return-void
.end method

.method setValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;TV;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1147
    return-void
.end method

.method setWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 1179
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1186
    :cond_0
    return-void

    .line 1183
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
