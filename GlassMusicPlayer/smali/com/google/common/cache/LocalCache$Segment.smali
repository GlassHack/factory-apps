.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field final accessQueue:Ljava/util/Queue;

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final map:Lcom/google/common/cache/LocalCache;

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;

.field final statsCounter:Lcom/google/common/cache/c;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field threshold:I

.field totalWeight:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final writeQueue:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2046
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2026
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2047
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 2048
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2049
    invoke-static {p5}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    .line 2050
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2052
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2054
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2056
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2059
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/cache/ar;

    invoke-direct {v0}, Lcom/google/common/cache/ar;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2062
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/cache/o;

    invoke-direct {v0}, Lcom/google/common/cache/o;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 2064
    return-void

    :cond_1
    move-object v0, v1

    .line 2052
    goto :goto_0

    .line 2056
    :cond_2
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2059
    :cond_3
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2062
    :cond_4
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method cleanUp()V
    .locals 2

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v0

    .line 3390
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3391
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3392
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3167
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_4

    .line 3168
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3170
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3171
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 3172
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    :goto_1
    if-eqz v0, :cond_1

    .line 3174
    invoke-interface {v0}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/ah;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3175
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/y;Lcom/google/common/cache/RemovalCause;)V

    .line 3172
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v0

    goto :goto_1

    .line 3171
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3179
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3180
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3182
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3183
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3184
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3185
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3187
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3190
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3191
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3194
    :cond_4
    return-void

    .line 3190
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3191
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2476
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2470
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2472
    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2479
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2480
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2728
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2729
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v1}, Lcom/google/common/base/ay;->a()J

    move-result-wide v1

    .line 2730
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2731
    if-nez v1, :cond_0

    .line 2739
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return v0

    .line 2734
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2739
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2750
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_3

    .line 2751
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v3

    .line 2752
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2753
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    move v2, v1

    .line 2754
    :goto_0
    if-ge v2, v6, :cond_3

    .line 2755
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    :goto_1
    if-eqz v0, :cond_2

    .line 2756
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/y;J)Ljava/lang/Object;

    move-result-object v7

    .line 2757
    if-nez v7, :cond_1

    .line 2755
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v0

    goto :goto_1

    .line 2760
    :cond_1
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2761
    const/4 v0, 0x1

    .line 2769
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_2
    return v0

    .line 2754
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2769
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2090
    invoke-interface {p1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2104
    :cond_0
    :goto_0
    return-object v0

    .line 2095
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v1

    .line 2096
    invoke-interface {v1}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2097
    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/google/common/cache/ah;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 2103
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/common/cache/ah;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/y;)Lcom/google/common/cache/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V

    goto :goto_0
.end method

.method drainKeyReferenceQueue()V
    .locals 3

    .prologue
    .line 2437
    const/4 v0, 0x0

    move v1, v0

    .line 2438
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2440
    check-cast v0, Lcom/google/common/cache/y;

    .line 2441
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/y;)V

    .line 2442
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2446
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2445
    goto :goto_0
.end method

.method drainRecencyQueue()V
    .locals 2

    .prologue
    .line 2542
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    if-eqz v0, :cond_1

    .line 2547
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2551
    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2430
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2432
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 3

    .prologue
    .line 2451
    const/4 v0, 0x0

    move v1, v0

    .line 2452
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2454
    check-cast v0, Lcom/google/common/cache/ah;

    .line 2455
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/ah;)V

    .line 2456
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2460
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2459
    goto :goto_0
.end method

.method enqueueNotification(Lcom/google/common/cache/y;Lcom/google/common/cache/RemovalCause;)V
    .locals 3

    .prologue
    .line 2590
    invoke-interface {p1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    .line 2591
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V
    .locals 2

    .prologue
    .line 2596
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    invoke-interface {p3}, Lcom/google/common/cache/ah;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2597
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v0}, Lcom/google/common/cache/c;->a()V

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2601
    invoke-interface {p3}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2602
    new-instance v1, Lcom/google/common/cache/az;

    invoke-direct {v1, p1, v0, p4}, Lcom/google/common/cache/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2603
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2605
    :cond_1
    return-void
.end method

.method evictEntries()V
    .locals 4

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2624
    :cond_0
    return-void

    .line 2617
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2618
    :cond_2
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2619
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/y;

    move-result-object v0

    .line 2620
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/y;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2621
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method expand()V
    .locals 11

    .prologue
    .line 2850
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2851
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2852
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2915
    :goto_0
    return-void

    .line 2866
    :cond_0
    iget v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2867
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2868
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2869
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2870
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2873
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    .line 2875
    if-eqz v0, :cond_7

    .line 2876
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v3

    .line 2877
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    and-int v2, v1, v10

    .line 2880
    if-nez v3, :cond_2

    .line 2881
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2870
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2888
    :goto_3
    if-eqz v3, :cond_3

    .line 2889
    invoke-interface {v3}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    and-int/2addr v1, v10

    .line 2890
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2888
    :goto_4
    invoke-interface {v3}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2896
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2899
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2900
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v0

    and-int v3, v0, v10

    .line 2901
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    .line 2902
    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 2903
    if-eqz v0, :cond_4

    .line 2904
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 2899
    :goto_6
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2906
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/y;)V

    .line 2907
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 2913
    :cond_5
    iput-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2914
    iput v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method expireEntries(J)V
    .locals 3

    .prologue
    .line 2571
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2575
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/y;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2576
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2579
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2580
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/y;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2581
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2584
    :cond_2
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2706
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2707
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v1}, Lcom/google/common/base/ay;->a()J

    move-result-wide v5

    .line 2708
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2709
    if-nez v1, :cond_0

    .line 2722
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return-object v0

    .line 2713
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2714
    if-eqz v4, :cond_1

    .line 2715
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/y;J)V

    .line 2716
    invoke-interface {v1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/y;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2722
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2718
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2722
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2126
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    invoke-static {p3}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2131
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/y;

    move-result-object v1

    .line 2132
    if-eqz v1, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v5

    .line 2134
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/y;J)Ljava/lang/Object;

    move-result-object v4

    .line 2135
    if-eqz v4, :cond_0

    .line 2136
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/y;J)V

    .line 2137
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/google/common/cache/c;->a(I)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    .line 2138
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/y;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2158
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return-object v0

    .line 2140
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v0

    .line 2141
    invoke-interface {v0}, Lcom/google/common/cache/ah;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2142
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/y;Ljava/lang/Object;Lcom/google/common/cache/ah;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2158
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2148
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2158
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2149
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2150
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2151
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 2152
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2158
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0

    .line 2153
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 2154
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2156
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/util/concurrent/o;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2297
    const/4 v1, 0x0

    .line 2299
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/w;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2300
    if-nez v1, :cond_1

    .line 2301
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 2308
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/w;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    .line 2309
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/w;)Z

    :cond_0
    throw v0

    .line 2303
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/w;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/c;->a(J)V

    .line 2304
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/w;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2307
    if-nez v1, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/w;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    .line 2309
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/w;)Z

    :cond_2
    return-object v1
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/y;
    .locals 3

    .prologue
    .line 2650
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/y;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2651
    invoke-interface {v0}, Lcom/google/common/cache/y;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2650
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v0

    goto :goto_0

    .line 2655
    :cond_1
    invoke-interface {v0}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2656
    if-nez v1, :cond_2

    .line 2657
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 2661
    :cond_2
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2666
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getFirst(I)Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2643
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/y;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2671
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/y;

    move-result-object v1

    .line 2672
    if-nez v1, :cond_0

    .line 2678
    :goto_0
    return-object v0

    .line 2674
    :cond_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2675
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2678
    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/cache/y;J)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2686
    invoke-interface {p1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2687
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2700
    :goto_0
    return-object v0

    .line 2690
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2691
    if-nez v1, :cond_1

    .line 2692
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_0

    .line 2696
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2697
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2700
    goto :goto_0
.end method

.method getNextEvictable()Lcom/google/common/cache/y;
    .locals 3

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    .line 2629
    invoke-interface {v0}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/ah;->a()I

    move-result v2

    .line 2630
    if-lez v2, :cond_0

    .line 2631
    return-object v0

    .line 2634
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4

    .prologue
    .line 2071
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2072
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2074
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2076
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2077
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/w;
    .locals 8

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2361
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v2

    .line 2362
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2364
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2365
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2366
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    move-object v1, v0

    .line 2369
    :goto_0
    if-eqz v1, :cond_3

    .line 2370
    invoke-interface {v1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2371
    invoke-interface {v1}, Lcom/google/common/cache/y;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2375
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v4

    .line 2376
    invoke-interface {v4}, Lcom/google/common/cache/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {v1}, Lcom/google/common/cache/y;->getWriteTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v5, v0, Lcom/google/common/cache/LocalCache;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v5

    if-gez v0, :cond_1

    .line 2381
    :cond_0
    const/4 v0, 0x0

    .line 2400
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2401
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :goto_1
    return-object v0

    .line 2385
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2386
    new-instance v0, Lcom/google/common/cache/w;

    invoke-direct {v0, v4}, Lcom/google/common/cache/w;-><init>(Lcom/google/common/cache/ah;)V

    .line 2388
    invoke-interface {v1, v0}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2400
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2401
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2369
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v1

    goto :goto_0

    .line 2393
    :cond_3
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2394
    new-instance v1, Lcom/google/common/cache/w;

    invoke-direct {v1}, Lcom/google/common/cache/w;-><init>()V

    .line 2395
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 2396
    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V

    .line 2397
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2400
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2401
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_1

    .line 2400
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2401
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/o;
    .locals 6

    .prologue
    .line 2275
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/w;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/o;

    move-result-object v5

    .line 2276
    new-instance v0, Lcom/google/common/cache/z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/z;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/util/concurrent/o;)V

    sget-object v1, Lcom/google/common/cache/LocalCache;->b:Lcom/google/common/util/concurrent/q;

    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2289
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2269
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/w;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    .line 2270
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/util/concurrent/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 2164
    const/4 v7, 0x0

    .line 2165
    const/4 v5, 0x0

    .line 2166
    const/4 v8, 0x1

    .line 2168
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v4}, Lcom/google/common/base/ay;->a()J

    move-result-wide v10

    .line 2172
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2174
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v12, v4, -0x1

    .line 2175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2176
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    .line 2177
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/y;

    move-object v6, v4

    .line 2179
    :goto_0
    if-eqz v6, :cond_7

    .line 2180
    invoke-interface {v6}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 2181
    invoke-interface {v6}, Lcom/google/common/cache/y;->getHash()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v9, v9, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2183
    invoke-interface {v6}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v9

    .line 2184
    invoke-interface {v9}, Lcom/google/common/cache/ah;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2185
    const/4 v7, 0x0

    move-object v8, v9

    .line 2210
    :goto_1
    if-eqz v7, :cond_6

    .line 2211
    new-instance v5, Lcom/google/common/cache/w;

    invoke-direct {v5}, Lcom/google/common/cache/w;-><init>()V

    .line 2213
    if-nez v6, :cond_4

    .line 2214
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v4

    .line 2215
    invoke-interface {v4, v5}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V

    .line 2216
    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 2222
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2226
    if-eqz v7, :cond_5

    .line 2231
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2232
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/c;->b(I)V

    .line 2239
    :goto_3
    return-object v4

    .line 2187
    :cond_0
    :try_start_3
    invoke-interface {v9}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2188
    if-nez v7, :cond_1

    .line 2189
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    .line 2202
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2204
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move v7, v8

    move-object v8, v9

    .line 2206
    goto :goto_1

    .line 2190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;J)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2193
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2222
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4

    .line 2195
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/y;J)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/c;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v4, v7

    goto :goto_3

    .line 2179
    :cond_3
    :try_start_5
    invoke-interface {v6}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v6

    goto/16 :goto_0

    .line 2218
    :cond_4
    invoke-interface {v6, v5}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    .line 2233
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2235
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/c;->b(I)V

    throw v4

    .line 2239
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v8}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/y;Ljava/lang/Object;Lcom/google/common/cache/ah;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_1
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1

    .prologue
    .line 2067
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3366
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3368
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3386
    return-void
.end method

.method preWriteCleanup(J)V
    .locals 0

    .prologue
    .line 3378
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3379
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2775
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2777
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v4

    .line 2778
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2780
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2781
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 2782
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2783
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2786
    :cond_0
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2787
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2788
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    move-object v1, v0

    .line 2791
    :goto_0
    if-eqz v1, :cond_5

    .line 2792
    invoke-interface {v1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2793
    invoke-interface {v1}, Lcom/google/common/cache/y;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2797
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v0

    .line 2798
    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2800
    if-nez v7, :cond_2

    .line 2801
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2802
    invoke-interface {v0}, Lcom/google/common/cache/ah;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2803
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2804
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2805
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2810
    :goto_1
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2811
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2840
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2807
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2808
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2813
    :cond_2
    if-eqz p4, :cond_3

    .line 2817
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/y;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2840
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_2

    .line 2821
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2822
    sget-object v2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2823
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2824
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2840
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_2

    .line 2791
    :cond_4
    :try_start_3
    invoke-interface {v1}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v1

    goto :goto_0

    .line 2831
    :cond_5
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2832
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2833
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2834
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2835
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2836
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2837
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2840
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    goto :goto_2

    .line 2840
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimKey(Lcom/google/common/cache/y;I)Z
    .locals 9

    .prologue
    .line 3242
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3244
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3245
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3246
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3247
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 3249
    :goto_0
    if-eqz v2, :cond_1

    .line 3250
    if-ne v2, p1, :cond_0

    .line 3251
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3252
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3254
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3255
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3256
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3257
    const/4 v0, 0x1

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :goto_1
    return v0

    .line 3249
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3261
    :cond_1
    const/4 v0, 0x0

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3263
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/ah;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 3272
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3274
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3275
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3276
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3277
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 3279
    :goto_0
    if-eqz v2, :cond_3

    .line 3280
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3281
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3283
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v4

    .line 3284
    if-ne v4, p3, :cond_1

    .line 3285
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3286
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3288
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3289
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3290
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3291
    const/4 v0, 0x1

    .line 3299
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3300
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3301
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_0
    :goto_1
    return v0

    .line 3299
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3300
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3301
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3279
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3299
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3300
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3301
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3299
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3300
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3301
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_4
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/y;J)V
    .locals 1

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/y;->setAccessTime(J)V

    .line 2510
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2511
    return-void
.end method

.method recordRead(Lcom/google/common/cache/y;J)V
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2493
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/y;->setAccessTime(J)V

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2496
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/y;IJ)V
    .locals 1

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2521
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2523
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/y;->setAccessTime(J)V

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2527
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/y;->setWriteTime(J)V

    .line 2529
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2530
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2531
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2334
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/w;

    move-result-object v1

    .line 2336
    if-nez v1, :cond_1

    .line 2348
    :cond_0
    :goto_0
    return-object v0

    .line 2340
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/w;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/o;

    move-result-object v1

    .line 2341
    invoke-interface {v1}, Lcom/google/common/util/concurrent/o;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2343
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/w;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 3017
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3019
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v1}, Lcom/google/common/base/ay;->a()J

    move-result-wide v1

    .line 3020
    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3022
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3023
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3024
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3025
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 3027
    :goto_0
    if-eqz v2, :cond_3

    .line 3028
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3029
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3031
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    .line 3032
    invoke-interface {v5}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3035
    if-eqz v7, :cond_0

    .line 3036
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3044
    :goto_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3045
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3047
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3048
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3049
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3057
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_2
    return-object v0

    .line 3037
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/ah;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3038
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3056
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3057
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3027
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3056
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3057
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3056
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3057
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3122
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3124
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v0

    .line 3125
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3127
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3128
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3129
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3130
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 3132
    :goto_0
    if-eqz v2, :cond_4

    .line 3133
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3134
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3136
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    .line 3137
    invoke-interface {v5}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3140
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3141
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3149
    :goto_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3150
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3152
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3153
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3154
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3155
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    .line 3161
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3162
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v7, v0

    :goto_3
    return v7

    .line 3142
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3143
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3161
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3162
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    :cond_2
    move v0, v7

    .line 3155
    goto :goto_2

    .line 3132
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3161
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3162
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 3161
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3162
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 3233
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/y;Lcom/google/common/cache/RemovalCause;)V

    .line 3234
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3235
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3236
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/y;ILcom/google/common/cache/RemovalCause;)Z
    .locals 9

    .prologue
    .line 3340
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3341
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3342
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3343
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 3345
    :goto_0
    if-eqz v2, :cond_1

    .line 3346
    if-ne v2, p1, :cond_0

    .line 3347
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3348
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3350
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3351
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3352
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3353
    const/4 v0, 0x1

    .line 3357
    :goto_1
    return v0

    .line 3345
    :cond_0
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v2

    goto :goto_0

    .line 3357
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeEntryFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 4

    .prologue
    .line 3216
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3217
    invoke-interface {p2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v1

    .line 3218
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3219
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3220
    if-eqz v0, :cond_0

    move v1, v2

    .line 3218
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 3223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/y;)V

    .line 3224
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 3227
    :cond_1
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3228
    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/w;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3307
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3309
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3310
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3311
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    move-object v2, v0

    .line 3313
    :goto_0
    if-eqz v2, :cond_3

    .line 3314
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3315
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3317
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    .line 3318
    if-ne v5, p3, :cond_1

    .line 3319
    invoke-virtual {p3}, Lcom/google/common/cache/w;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3320
    invoke-virtual {p3}, Lcom/google/common/cache/w;->g()Lcom/google/common/cache/ah;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3325
    :goto_1
    const/4 v0, 0x1

    .line 3333
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3334
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :goto_2
    return v0

    .line 3322
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 3323
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3333
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3334
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    .line 3333
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3334
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_2

    .line 3313
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3333
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3334
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_2
.end method

.method removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3201
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    .line 3202
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3203
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3205
    invoke-interface {p5}, Lcom/google/common/cache/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3206
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/google/common/cache/ah;->a(Ljava/lang/Object;)V

    .line 3209
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object p1

    goto :goto_0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 2971
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2973
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v8

    .line 2974
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2976
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2977
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 2978
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 2980
    :goto_0
    if-eqz v2, :cond_3

    .line 2981
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2982
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2984
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    .line 2985
    invoke-interface {v5}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2986
    if-nez v0, :cond_1

    .line 2987
    invoke-interface {v5}, Lcom/google/common/cache/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2990
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2991
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 2993
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2994
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2995
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3011
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_1
    return-object v0

    .line 3000
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3001
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-wide v5, v8

    .line 3002
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3003
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3010
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3011
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2980
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3010
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3011
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_1

    .line 3010
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3011
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2920
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v7

    .line 2921
    invoke-virtual {p0, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2923
    iget-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2924
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    .line 2925
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/y;

    move-object v2, v1

    .line 2927
    :goto_0
    if-eqz v2, :cond_4

    .line 2928
    invoke-interface {v2}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2929
    invoke-interface {v2}, Lcom/google/common/cache/y;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2931
    invoke-interface {v2}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v5

    .line 2932
    invoke-interface {v5}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2933
    if-nez v0, :cond_1

    .line 2934
    invoke-interface {v5}, Lcom/google/common/cache/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2936
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2937
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2938
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/y;Lcom/google/common/cache/y;Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 2940
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2941
    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2942
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    :cond_0
    const/4 v0, 0x0

    .line 2964
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2965
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :goto_1
    return v0

    .line 2947
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2948
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2949
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, v7

    .line 2950
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2951
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2952
    const/4 v0, 0x1

    .line 2964
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2965
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2956
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/y;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2957
    const/4 v0, 0x0

    .line 2964
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2965
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2927
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2962
    :cond_4
    const/4 v0, 0x0

    .line 2964
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2965
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2964
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2965
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runLockedCleanup(J)V
    .locals 2

    .prologue
    .line 3395
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3398
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3399
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3404
    :cond_0
    return-void

    .line 3401
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 3408
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->m()V

    .line 3411
    :cond_0
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/y;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/y;->getWriteTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v2, v2, Lcom/google/common/cache/LocalCache;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_0

    move-object p4, v0

    .line 2323
    :cond_0
    return-object p4
.end method

.method setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    .prologue
    .line 2112
    invoke-interface {p1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v1

    .line 2113
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/bf;

    invoke-interface {v0, p2, p3}, Lcom/google/common/cache/bf;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2114
    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 2116
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/y;Ljava/lang/Object;I)Lcom/google/common/cache/ah;

    move-result-object v0

    .line 2118
    invoke-interface {p1, v0}, Lcom/google/common/cache/y;->setValueReference(Lcom/google/common/cache/ah;)V

    .line 2119
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/y;IJ)V

    .line 2120
    invoke-interface {v1, p3}, Lcom/google/common/cache/ah;->a(Ljava/lang/Object;)V

    .line 2121
    return-void

    .line 2114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/w;Ljava/lang/Object;)Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3063
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3065
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v0}, Lcom/google/common/base/ay;->a()J

    move-result-wide v4

    .line 3066
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3068
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v7, v0, 0x1

    .line 3069
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v7, v0, :cond_0

    .line 3070
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3071
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v7, v0, 0x1

    .line 3074
    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3075
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3076
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/y;

    move-object v1, v0

    .line 3078
    :goto_0
    if-eqz v1, :cond_6

    .line 3079
    invoke-interface {v1}, Lcom/google/common/cache/y;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3080
    invoke-interface {v1}, Lcom/google/common/cache/y;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v10, v10, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3082
    invoke-interface {v1}, Lcom/google/common/cache/y;->getValueReference()Lcom/google/common/cache/ah;

    move-result-object v0

    .line 3083
    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3086
    if-eq p3, v0, :cond_1

    if-nez v3, :cond_4

    sget-object v8, Lcom/google/common/cache/LocalCache;->v:Lcom/google/common/cache/ah;

    if-eq v0, v8, :cond_4

    .line 3088
    :cond_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3089
    invoke-virtual {p3}, Lcom/google/common/cache/w;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3090
    if-nez v3, :cond_3

    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3092
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V

    .line 3093
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3095
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3096
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3097
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3116
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3117
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    :goto_2
    return v0

    .line 3090
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3102
    :cond_4
    new-instance v0, Lcom/google/common/cache/ap;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/google/common/cache/ap;-><init>(Ljava/lang/Object;I)V

    .line 3103
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ah;Lcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3116
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3117
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v2

    goto :goto_2

    .line 3078
    :cond_5
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/cache/y;->getNext()Lcom/google/common/cache/y;

    move-result-object v1

    goto :goto_0

    .line 3108
    :cond_6
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3109
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3110
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/y;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3111
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3112
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3113
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3116
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3117
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    goto :goto_2

    .line 3116
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3117
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2418
    :cond_0
    return-void

    .line 2415
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries(J)V
    .locals 1

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2567
    :cond_0
    return-void

    .line 2563
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/y;Ljava/lang/Object;Lcom/google/common/cache/ah;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2245
    invoke-interface {p3}, Lcom/google/common/cache/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2249
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Recursive load"

    invoke-static {v0, v2}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 2252
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/ah;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2253
    if-nez v0, :cond_2

    .line 2254
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v2, v1}, Lcom/google/common/cache/c;->b(I)V

    throw v0

    .line 2249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2257
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/ay;

    invoke-virtual {v2}, Lcom/google/common/base/ay;->a()J

    move-result-wide v2

    .line 2258
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/y;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2261
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v2, v1}, Lcom/google/common/cache/c;->b(I)V

    return-object v0
.end method
