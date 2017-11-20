.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;
.super Lcom/google/common/collect/Synchronized$SynchronizedSet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 809
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 857
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 871
    if-ne p1, p0, :cond_0

    .line 872
    const/4 v0, 0x1

    .line 875
    :goto_0
    return v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 814
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 815
    new-instance v1, Lcom/google/common/collect/nt;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/nt;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 881
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 888
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 895
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 896
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 843
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/kx;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 850
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/kx;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
