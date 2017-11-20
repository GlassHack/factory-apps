.class Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ft;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ft;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/jt;Ljava/lang/Object;)V

    .line 649
    return-void
.end method


# virtual methods
.method delegate()Lcom/google/common/collect/ft;
    .locals 1

    .prologue
    .line 653
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ft;

    return-object v0
.end method

.method bridge synthetic delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ft;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ft;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2

    .prologue
    .line 672
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ft;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
