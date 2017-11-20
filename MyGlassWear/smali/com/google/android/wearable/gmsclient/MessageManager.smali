.class public Lcom/google/android/wearable/gmsclient/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SEND_MESSAGE_ERROR_NO_CONNECTION:I = -0x1


# instance fields
.field private final mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V
    .locals 0
    .param p1, "clientHelper"    # Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wearable/gmsclient/MessageManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/gmsclient/MessageManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    return-object v0
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/gms/wearable/MessageApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    .line 63
    .local v0, "result":Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/google/android/wearable/gmsclient/WearableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRpc failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/wearable/gmsclient/WearableException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v0    # "result":Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1

    .line 66
    .restart local v0    # "result":Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;->getRequestId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return v1
.end method

.method public sendMessageAsync(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
    .locals 3
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "callback"    # Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;",
            ")",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/MessageManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/gms/wearable/MessageApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 76
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/MessageManager$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/wearable/gmsclient/MessageManager$1;-><init>(Lcom/google/android/wearable/gmsclient/MessageManager;Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 93
    new-instance v1, Lcom/google/android/wearable/gmsclient/MessageManager$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/wearable/gmsclient/MessageManager$2;-><init>(Lcom/google/android/wearable/gmsclient/MessageManager;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method
