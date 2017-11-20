.class public Lcom/google/android/wearable/gmsclient/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V
    .locals 0
    .param p1, "bindHelper"    # Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public disableConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/wearable/gmsclient/WearableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->ConnectionApi:Lcom/google/android/gms/wearable/ConnectionApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/ConnectionApi;->disableConnection(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 61
    .local v0, "result":Lcom/google/android/gms/common/api/Status;
    const-string v1, "stopConnection"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 65
    return-void

    .line 63
    .end local v0    # "result":Lcom/google/android/gms/common/api/Status;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public enableConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/wearable/gmsclient/WearableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->ConnectionApi:Lcom/google/android/gms/wearable/ConnectionApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/ConnectionApi;->enableConnection(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 51
    .local v0, "result":Lcom/google/android/gms/common/api/Status;
    const-string v1, "startConnection"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 55
    return-void

    .line 53
    .end local v0    # "result":Lcom/google/android/gms/common/api/Status;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public getConfig()Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->ConnectionApi:Lcom/google/android/gms/wearable/ConnectionApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/ConnectionApi;->getConfig(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionApi$GetConfigResult;

    .line 29
    .local v0, "result":Lcom/google/android/gms/wearable/ConnectionApi$GetConfigResult;
    const-string v1, "getConnection"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/wearable/ConnectionApi$GetConfigResult;->getConfig()Lcom/google/android/gms/wearable/ConnectionConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1

    .end local v0    # "result":Lcom/google/android/gms/wearable/ConnectionApi$GetConfigResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public setConfig(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/wearable/gmsclient/WearableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->ConnectionApi:Lcom/google/android/gms/wearable/ConnectionApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/wearable/ConnectionApi;->setConfig(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ConnectionConfiguration;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 41
    .local v0, "result":Lcom/google/android/gms/common/api/Status;
    const-string v1, "setConnection"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 45
    return-void

    .line 43
    .end local v0    # "result":Lcom/google/android/gms/common/api/Status;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/ConnectionManager;->mBindHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method
