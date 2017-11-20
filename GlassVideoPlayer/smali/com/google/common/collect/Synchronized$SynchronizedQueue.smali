.class Lcom/google/common/collect/Synchronized$SynchronizedQueue;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Queue;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/ns;)V

    .line 1208
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 1212
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1223
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1235
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1241
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
