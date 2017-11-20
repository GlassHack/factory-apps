.class Lcom/google/android/wearable/gmsclient/NodeManager$3$1;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/NodeManager$3;->onResult(Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;)V
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
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/NodeManager$3;

.field final synthetic val$result:Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/NodeManager$3;Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$3;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

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
    .line 169
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->getResult()Ljava/util/List;

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
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    const-string v1, "getConnectedNodesAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$3;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/NodeManager$3;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->access$000(Lcom/google/android/wearable/gmsclient/NodeManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$3;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/NodeManager$3;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->access$000(Lcom/google/android/wearable/gmsclient/NodeManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v0
.end method
