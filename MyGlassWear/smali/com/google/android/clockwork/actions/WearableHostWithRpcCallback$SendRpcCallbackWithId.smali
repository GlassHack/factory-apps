.class Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;
.super Ljava/lang/Object;
.source "WearableHostWithRpcCallback.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRpcCallbackWithId"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->mId:Ljava/lang/String;

    .line 265
    return-void
.end method


# virtual methods
.method public onSendRpc(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 270
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/wearable/gmsclient/WearableFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HostWithRpcCallback"

    const-string v2, "Failed to send RPC"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    iget-object v2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->mId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->access$000(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;I)V

    goto :goto_0

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v1, "HostWithRpcCallback"

    const-string v2, "Failed to send RPC"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    iget-object v2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;->mId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->access$000(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;I)V

    goto :goto_0
.end method
