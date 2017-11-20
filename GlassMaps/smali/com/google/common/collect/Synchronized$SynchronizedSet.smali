.class Lcom/google/common/collect/Synchronized$SynchronizedSet;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/ns;)V

    .line 201
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 210
    if-ne p1, p0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
