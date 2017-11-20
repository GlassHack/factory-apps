.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jt;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;

.field transient entries:Ljava/util/Collection;

.field transient keySet:Ljava/util/Set;

.field transient keys:Lcom/google/common/collect/kp;

.field transient valuesCollection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jt;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4

    .prologue
    .line 601
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 570
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 520
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 514
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jt;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 620
    if-ne p1, p0, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 630
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keys()Lcom/google/common/collect/kp;
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/kp;

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Lcom/google/common/collect/kp;Ljava/lang/Object;)Lcom/google/common/collect/kp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/kp;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/kp;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->putAll(Lcom/google/common/collect/jt;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 550
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
