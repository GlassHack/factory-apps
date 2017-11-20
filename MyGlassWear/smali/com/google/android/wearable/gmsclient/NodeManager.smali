.class public Lcom/google/android/wearable/gmsclient/NodeManager;
.super Ljava/lang/Object;
.source "NodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;,
        Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V
    .locals 0
    .param p1, "clientHelper"    # Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wearable/gmsclient/NodeManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/gmsclient/NodeManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    return-object v0
.end method


# virtual methods
.method public getConnectedNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    .line 141
    .local v0, "result":Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
    const-string v1, "getConnectedNodes"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 142
    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1

    .end local v0    # "result":Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public getConnectedNodesAsync(Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
    .locals 3
    .param p1, "callback"    # Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;",
            ")",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 165
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$3;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 183
    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/wearable/gmsclient/NodeManager$4;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getLocalNode()Lcom/google/android/gms/wearable/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->getLocalNode(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    .line 82
    .local v0, "result":Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
    const-string v1, "getLocalNode"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;->getNode()Lcom/google/android/gms/wearable/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1

    .end local v0    # "result":Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public getLocalNodeAsync(Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
    .locals 3
    .param p1, "callback"    # Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;",
            ")",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/NodeManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->getLocalNode(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 104
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$1;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 121
    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/wearable/gmsclient/NodeManager$2;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method
