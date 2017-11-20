.class Lcom/google/android/wearable/gmsclient/MessageManager$2;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/MessageManager;->sendMessageAsync(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/MessageManager;

.field final synthetic val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/MessageManager;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/MessageManager$2;->this$0:Lcom/google/android/wearable/gmsclient/MessageManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/MessageManager$2;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/MessageManager$2;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    .line 97
    .local v0, "result":Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    const-string v1, "sendRpcAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0}, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;->getRequestId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
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
    .line 93
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/MessageManager$2;->getResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
