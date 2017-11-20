.class Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wifi/WifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private final callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

.field final synthetic this$0:Lcom/google/glass/wifi/WifiNetwork;


# direct methods
.method private constructor <init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
    .locals 3
    .param p2, "callback"    # Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    .line 638
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 639
    iput-object p2, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;Lcom/google/glass/wifi/WifiNetwork$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/wifi/WifiNetwork;
    .param p2, "x1"    # Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;
    .param p3, "x2"    # Lcom/google/glass/wifi/WifiNetwork$1;

    .prologue
    .line 634
    invoke-direct {p0, p1, p2}, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 665
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 644
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Connectivity receiver received %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 646
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "WifiManager claims we are connected to wifi."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-static {v1}, Lcom/google/glass/wifi/WifiNetwork;->access$400(Lcom/google/glass/wifi/WifiNetwork;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "ConnectivityManager agrees with WifiManager, progressing..."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-static {v1}, Lcom/google/glass/wifi/WifiNetwork;->access$500(Lcom/google/glass/wifi/WifiNetwork;)V

    .line 657
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiNetwork;

    invoke-static {v1}, Lcom/google/glass/wifi/WifiNetwork;->access$200(Lcom/google/glass/wifi/WifiNetwork;)V

    .line 658
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    invoke-interface {v1}, Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;->onConnected()V

    .line 661
    :cond_0
    return-void
.end method
