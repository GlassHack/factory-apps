.class Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimelineSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/TimelineSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final connectivityChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncService;


# direct methods
.method private constructor <init>(Lcom/google/glass/sync/TimelineSyncService;)V
    .locals 3

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    .line 464
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    .line 461
    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncService;->access$400(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "connectivityChangeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->connectivityChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 465
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/sync/TimelineSyncService;Lcom/google/glass/sync/TimelineSyncService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/sync/TimelineSyncService;
    .param p2, "x1"    # Lcom/google/glass/sync/TimelineSyncService$1;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->connectivityChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncService;->access$600(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncService;->access$400(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Caught wifi disconnection, notifying sync adapter to cancel opportunistic upload."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 477
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver$1;-><init>(Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 484
    :cond_0
    return-void
.end method
