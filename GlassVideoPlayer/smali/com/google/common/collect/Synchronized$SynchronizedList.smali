.class Lcom/google/common/collect/Synchronized$SynchronizedList;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/ns;)V

    .line 289
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 299
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/List;
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 354
    if-ne p1, p0, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
