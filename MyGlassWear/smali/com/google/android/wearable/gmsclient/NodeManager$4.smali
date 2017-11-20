.class Lcom/google/android/wearable/gmsclient/NodeManager$4;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/NodeManager;->getConnectedNodesAsync(Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/wearable/gmsclient/WearableFuture",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/wearable/Node;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

.field final synthetic val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$4;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/NodeManager$4;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/NodeManager$4;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 2
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
    .line 186
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$4;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    .line 187
    .local v0, "result":Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
    const-string v1, "getConnectedNodesAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 188
    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
