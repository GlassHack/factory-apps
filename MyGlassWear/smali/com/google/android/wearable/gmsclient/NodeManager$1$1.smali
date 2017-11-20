.class Lcom/google/android/wearable/gmsclient/NodeManager$1$1;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/NodeManager$1;->onResult(Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;)V
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
        "Lcom/google/android/gms/wearable/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/NodeManager$1;

.field final synthetic val$result:Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/NodeManager$1;Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$1;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/google/android/gms/wearable/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    const-string v1, "getLocalNodeAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->val$result:Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;->getNode()Lcom/google/android/gms/wearable/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$1;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/NodeManager$1;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->access$000(Lcom/google/android/wearable/gmsclient/NodeManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/NodeManager$1;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/NodeManager$1;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->access$000(Lcom/google/android/wearable/gmsclient/NodeManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;->getResult()Lcom/google/android/gms/wearable/Node;

    move-result-object v0

    return-object v0
.end method
