.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/google/common/collect/az;

.field private transient valueSet:Ljava/util/Set;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/az;Ljava/lang/Object;Lcom/google/common/collect/az;)V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1094
    iput-object p3, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/az;

    .line 1095
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/az;Ljava/lang/Object;Lcom/google/common/collect/az;Lcom/google/common/collect/ns;)V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/az;Ljava/lang/Object;Lcom/google/common/collect/az;)V

    return-void
.end method


# virtual methods
.method delegate()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1099
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/az;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/az;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/az;
    .locals 4

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/az;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/az;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/az;->inverse()Lcom/google/common/collect/az;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/az;Ljava/lang/Object;Lcom/google/common/collect/az;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/az;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/az;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/az;->values()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
