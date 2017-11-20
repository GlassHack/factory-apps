.class public Lcom/google/android/clockwork/host/WearableServiceRegistry;
.super Ljava/lang/Object;
.source "WearableServiceRegistry.java"

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableServiceRegistry"

.field private static sInstance:Lcom/google/android/clockwork/host/WearableServiceRegistry;


# instance fields
.field private final mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    invoke-static {p1}, Lcom/google/android/clockwork/host/WearableHost;->acquireApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 58
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v1, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/wearable/DataApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/clockwork/host/WearableServiceRegistry;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/host/WearableServiceRegistry;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private formatPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service path must not be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service path must not start with a double slash."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "pathBuilder":Ljava/lang/StringBuilder;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/google/android/clockwork/host/WearableServiceRegistry;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->sInstance:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    return-object v0
.end method

.method public static setInstance(Lcom/google/android/clockwork/host/WearableServiceRegistry;)V
    .locals 2
    .param p0, "instance"    # Lcom/google/android/clockwork/host/WearableServiceRegistry;

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->sInstance:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set ClockworkHost instance twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    sput-object p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->sInstance:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    .line 70
    return-void
.end method


# virtual methods
.method public getNodesWithService(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-object v1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 81
    .local v0, "nodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter v0

    .line 82
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 6
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 161
    .local v0, "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 162
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 164
    .local v2, "nodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 165
    monitor-enter v2

    .line 166
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 168
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 169
    monitor-enter v2

    .line 170
    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 175
    .end local v0    # "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    .end local v2    # "nodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public registerService(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "servicePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gms/wearable/PutDataRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v0

    .line 94
    .local v0, "putDataRequest":Lcom/google/android/gms/wearable/PutDataRequest;
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/wearable/DataApi;->putDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    new-instance v3, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;-><init>(Lcom/google/android/clockwork/host/WearableServiceRegistry;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 109
    return-void
.end method

.method public watchService(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "servicePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mWatchedServices:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "wear"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "getUri":Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    new-instance v3, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;-><init>(Lcom/google/android/clockwork/host/WearableServiceRegistry;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method
