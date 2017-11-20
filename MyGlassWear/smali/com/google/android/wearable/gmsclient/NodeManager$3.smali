.class Lcom/google/android/wearable/gmsclient/NodeManager$3;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


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
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3;->val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 165
    check-cast p1, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$3;->onResult(Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$3;->val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$3$1;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager$3;Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;->onGetConnectedNodesComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 182
    return-void
.end method
