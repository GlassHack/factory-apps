.class Lcom/google/android/wearable/gmsclient/NodeManager$1;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/NodeManager;->getLocalNodeAsync(Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
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
        "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/NodeManager;Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1;->this$0:Lcom/google/android/wearable/gmsclient/NodeManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 104
    check-cast p1, Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$1;->onResult(Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/NodeManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/NodeManager$1$1;-><init>(Lcom/google/android/wearable/gmsclient/NodeManager$1;Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;->onGetLocalNodeComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 120
    return-void
.end method
