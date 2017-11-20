.class Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lw;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/jt;Ljava/lang/Object;)V

    .line 693
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lcom/google/common/collect/lw;
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/lw;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3

    .prologue
    .line 723
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/lw;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 702
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lw;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 709
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/lw;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 716
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/lw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/lw;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
