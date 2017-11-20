.class Lcom/google/android/clockwork/host/ListenerDispatcher;
.super Ljava/lang/Object;
.source "ListenerDispatcher.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;
.implements Lcom/google/android/wearable/util/Dumpable;


# instance fields
.field private mCachedAllListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/wearable/gmsclient/WearableListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/host/WearableHostConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/wearable/gmsclient/WearableListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListenersLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    return-void
.end method

.method private getAllWearableListeners()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/wearable/gmsclient/WearableListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v3, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    .line 165
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 166
    .local v1, "listenersPerFeature":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listenersPerFeature":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method private getConnectionListeners()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/host/WearableHostConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWearableListenersForFeature(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/wearable/gmsclient/WearableListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    .local v0, "newListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/host/WearableHostConnectionListener;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    .line 68
    monitor-exit v2

    .line 69
    return-void

    .line 68
    .end local v0    # "newListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/host/WearableHostConnectionListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V
    .locals 4
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/wearable/gmsclient/WearableListener;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 38
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "newListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 41
    .local v0, "existingListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v3

    .line 47
    return-void

    .line 46
    .end local v0    # "existingListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    .end local v1    # "newListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 6
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 185
    const-string v5, "Feature Listeners"

    invoke-virtual {p1, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 187
    iget-object v5, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/wearable/gmsclient/WearableListener;

    .line 191
    .local v4, "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    invoke-virtual {p1, v4}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 193
    .end local v4    # "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 195
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 196
    const-string v5, "Connection Listeners"

    invoke-virtual {p1, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 198
    iget-object v5, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .line 199
    .local v0, "entry":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    invoke-virtual {p1, v0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 201
    .end local v0    # "entry":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 202
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 203
    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 10
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    const/4 v9, 0x3

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 85
    .local v0, "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/clockwork/host/WearableHost;->getFeatureFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "feature":Ljava/lang/String;
    const-string v6, "WearableHost"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    const-string v6, "WearableHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WearableHost.onDataChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", feature "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getWearableListenersForFeature(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 94
    .local v5, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v5, :cond_3

    .line 95
    const-string v6, "WearableHost"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    const-string v6, "WearableHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with feature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " listeners"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/wearable/gmsclient/WearableListener;

    .line 100
    .local v4, "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    invoke-interface {v4, p1}, Lcom/google/android/wearable/gmsclient/WearableListener;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V

    goto :goto_1

    .line 103
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    :cond_3
    const-string v6, "WearableHost"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const-string v6, "WearableHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to no listeners"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    .end local v0    # "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    .end local v1    # "feature":Ljava/lang/String;
    .end local v5    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    :cond_4
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 7
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/host/WearableHost;->getFeatureFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "feature":Ljava/lang/String;
    const-string v4, "WearableHost"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "WearableHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WearableHost.onMessageReceived: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", feature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    if-nez v0, :cond_2

    .line 127
    :cond_1
    return-void

    .line 121
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getWearableListenersForFeature(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/wearable/gmsclient/WearableListener;

    .line 124
    .local v2, "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    invoke-interface {v2, p1}, Lcom/google/android/wearable/gmsclient/WearableListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    goto :goto_0
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 4
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getAllWearableListeners()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/wearable/gmsclient/WearableListener;

    .line 134
    .local v1, "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    invoke-interface {v1, p1}, Lcom/google/android/wearable/gmsclient/WearableListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_0

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getConnectionListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .line 138
    .local v1, "listener":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    invoke-interface {v1, p1}, Lcom/google/android/clockwork/host/WearableHostConnectionListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_1

    .line 140
    .end local v1    # "listener":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    :cond_1
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 4
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getAllWearableListeners()Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/wearable/gmsclient/WearableListener;

    .line 147
    .local v1, "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    invoke-interface {v1, p1}, Lcom/google/android/wearable/gmsclient/WearableListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/google/android/wearable/gmsclient/WearableListener;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/clockwork/host/ListenerDispatcher;->getConnectionListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .line 151
    .local v1, "listener":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    invoke-interface {v1, p1}, Lcom/google/android/clockwork/host/WearableHostConnectionListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_1

    .line 153
    .end local v1    # "listener":Lcom/google/android/clockwork/host/WearableHostConnectionListener;
    :cond_1
    return-void
.end method

.method public removeConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 75
    .local v0, "newListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/host/WearableHostConnectionListener;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    iput-object v0, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mConnectionListeners:Ljava/util/Set;

    .line 77
    monitor-exit v2

    .line 78
    return-void

    .line 77
    .end local v0    # "newListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/host/WearableHostConnectionListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V
    .locals 4
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/wearable/gmsclient/WearableListener;

    .prologue
    .line 50
    iget-object v3, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 51
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mCachedAllListeners:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "newListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    .local v0, "existingListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/google/android/clockwork/host/ListenerDispatcher;->mFeatureListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v3

    .line 60
    return-void

    .line 59
    .end local v0    # "existingListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    .end local v1    # "newListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/wearable/gmsclient/WearableListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
