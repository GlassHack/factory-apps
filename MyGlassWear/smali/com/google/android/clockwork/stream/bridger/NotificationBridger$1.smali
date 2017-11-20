.class Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;
.super Ljava/lang/Object;
.source "NotificationBridger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->onRpcReceived(Lcom/google/android/gms/wearable/MessageEvent;Lcom/google/android/clockwork/actions/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

.field final synthetic val$callback:Lcom/google/android/clockwork/actions/ResultCallback;

.field final synthetic val$data:Lcom/google/android/gms/wearable/DataMap;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/clockwork/actions/ResultCallback;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    iput-object p2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->val$data:Lcom/google/android/gms/wearable/DataMap;

    iput-object p3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->val$callback:Lcom/google/android/clockwork/actions/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 487
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    iget-object v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->val$data:Lcom/google/android/gms/wearable/DataMap;

    invoke-static {v3, v4}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->access$100(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/gms/wearable/DataMap;)I

    move-result v2

    .line 488
    .local v2, "success":I
    new-instance v1, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 489
    .local v1, "result":Lcom/google/android/gms/wearable/DataMap;
    const-string v4, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->val$data:Lcom/google/android/gms/wearable/DataMap;

    invoke-static {v3}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->access$200(Lcom/google/android/gms/wearable/DataMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    const/4 v0, 0x2

    .line 497
    .local v0, "messageId":I
    :goto_1
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.message_id"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 498
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;->val$callback:Lcom/google/android/clockwork/actions/ResultCallback;

    invoke-interface {v3, v1}, Lcom/google/android/clockwork/actions/ResultCallback;->onResult(Lcom/google/android/gms/wearable/DataMap;)V

    .line 499
    return-void

    .line 489
    .end local v0    # "messageId":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 495
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "messageId":I
    goto :goto_1
.end method
