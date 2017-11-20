.class Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/connectivity/InetConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/connectivity/InetConnectionState;


# direct methods
.method private constructor <init>(Lcom/google/glass/connectivity/InetConnectionState;)V
    .locals 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/connectivity/InetConnectionState;Lcom/google/glass/connectivity/InetConnectionState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/connectivity/InetConnectionState;
    .param p2, "x1"    # Lcom/google/glass/connectivity/InetConnectionState$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/connectivity/InetConnectionState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionState;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    new-instance v1, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;-><init>(Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;)V

    .line 149
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 148
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method
