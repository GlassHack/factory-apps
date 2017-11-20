.class Lcom/google/android/wearable/gmsclient/MessageManager$1;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


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
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/MessageManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/MessageManager;Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/MessageManager$1;->this$0:Lcom/google/android/wearable/gmsclient/MessageManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/MessageManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 76
    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/MessageManager$1;->onResult(Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/MessageManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/MessageManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/MessageManager$1$1;-><init>(Lcom/google/android/wearable/gmsclient/MessageManager$1;Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;->onSendRpc(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 92
    return-void
.end method
