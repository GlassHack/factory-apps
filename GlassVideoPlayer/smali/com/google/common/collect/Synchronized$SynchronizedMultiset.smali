.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kp;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;

.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kp;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/ns;)V

    .line 395
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method delegate()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kp;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 452
    if-ne p1, p0, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->remove(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
