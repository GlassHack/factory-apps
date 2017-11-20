.class Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 3

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    .line 606
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 607
    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .line 608
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;Lcom/google/glass/util/WifiHelper$1;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connectivity receiver received %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "WifiManager claims we are connected to wifi."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$500(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ConnectivityManager agrees with WifiManager, progressing..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$600(Lcom/google/glass/util/WifiHelper;)V

    .line 625
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$300(Lcom/google/glass/util/WifiHelper;)V

    .line 626
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-interface {v0}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnected()V

    .line 629
    :cond_0
    return-void
.end method
