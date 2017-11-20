.class Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBridger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;->this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;-><init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 961
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.clockwork.INITIAL_NOTIFICATIONS_FETCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;->this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->access$300(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 965
    :cond_0
    return-void
.end method
