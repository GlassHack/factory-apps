.class public Lcom/google/glass/settings/ui/WifiSettingsItemView;
.super Lcom/google/glass/settings/ui/WifiApView;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;,
        Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;,
        Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final statusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private connManager:Landroid/net/ConnectivityManager;

.field private connected:Z

.field private final connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

.field private enableWifiDialog:Lcom/google/glass/widget/MessageDialog;

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private final statusReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private final wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

.field private wifiScanner:Lcom/google/glass/wifi/WifiScanner;

.field private final wifiStateBroadcastReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;

.field private wifiStateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    sget-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "statusReceiver"

    .line 52
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->statusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Lcom/google/glass/settings/ui/WifiSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .line 82
    new-instance v0, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;

    .line 84
    new-instance v0, Lcom/google/glass/settings/ui/WifiSettingsItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .line 94
    new-instance v0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateBroadcastReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->forgetCurrentNetwork()V

    return-void
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->statusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/widget/MessageDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->enableWifiDialog:Lcom/google/glass/widget/MessageDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/wifi/WifiScanner;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->updateCurrentNetwork(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->updateOtherNetworks(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateBroadcastReceiver:Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cancelWifiInfoTask()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateTask:Landroid/os/AsyncTask;

    .line 406
    :cond_0
    return-void
.end method

.method static enforceNoQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "^\"(.*)\"$"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static enforceQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    const-string v0, "\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->enforceNoQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private forgetCurrentNetwork()V
    .locals 7

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 490
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 491
    .local v0, "currentId":I
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 492
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 493
    sget-object v2, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Forgot network %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method private turnOnWifi()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 473
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 474
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 475
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_menu_turning_on:I

    .line 476
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 477
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 478
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 479
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->enableWifiDialog:Lcom/google/glass/widget/MessageDialog;

    .line 483
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->enableWifiDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 484
    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->setKeepScreenOn(Z)V

    .line 485
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 486
    return-void
.end method

.method private update()V
    .locals 14

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 125
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->cancelWifiInfoTask()V

    .line 127
    iget-object v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connManager:Landroid/net/ConnectivityManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 129
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "networkNameLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "dataStateLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "connectionStateLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "otherNetworksLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->wifi_security:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, "securityLabel":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    .line 136
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 137
    .local v8, "wifiState":I
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "update(), wifiState=%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 139
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Wifi is disabled.  Has someone been mucking around in legacy Settings?"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 143
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 144
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi_turning_on:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    sget v9, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 154
    .local v6, "signalStrengthImage":Landroid/widget/ImageView;
    sget v9, Lcom/google/glass/settings/ui/R$drawable;->wifi_disconnected:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    .end local v6    # "signalStrengthImage":Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 146
    :cond_0
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi_disabled:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Connected."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    .line 180
    :goto_2
    new-instance v9, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;

    invoke-direct {v9, p0, v7}, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Landroid/net/wifi/WifiManager;)V

    iput-object v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateTask:Landroid/os/AsyncTask;

    .line 202
    iget-object v10, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiStateTask:Landroid/os/AsyncTask;

    .line 203
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v9}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v9

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    .line 202
    invoke-virtual {v10, v9, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 162
    :cond_2
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Disconnected."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    .line 165
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 168
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi_disconnected:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    sget v9, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 174
    .restart local v6    # "signalStrengthImage":Landroid/widget/ImageView;
    sget v9, Lcom/google/glass/settings/ui/R$drawable;->wifi_disconnected:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateCurrentNetwork(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V
    .locals 14
    .param p1, "wifiState"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 207
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 208
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Updating current network UI."

    new-array v11, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 211
    .local v4, "networkNameLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 212
    .local v2, "dataStateLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 213
    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .local v1, "connectionStateLabel":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/settings/ui/R$id;->wifi_security:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 218
    .local v6, "securityLabel":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->enforceNoQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "fixedSSID":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 220
    sget-object v9, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "SSID is blank. This is not good."

    new-array v11, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :goto_0
    const/4 v5, 0x0

    .line 228
    .local v5, "security":Ljava/lang/String;
    iget-object v9, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->configuredNetworks:Ljava/util/List;

    if-eqz v9, :cond_5

    .line 229
    iget-object v9, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->configuredNetworks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 230
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 235
    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v10, :cond_1

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 236
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 237
    :cond_1
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    .line 238
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 239
    :cond_2
    const-string v5, "WPA"

    goto :goto_1

    .line 223
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "security":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "security":Ljava/lang/String;
    :cond_4
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 241
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v10, v10, v12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 242
    const-string v5, "WEP"

    goto :goto_1

    .line 249
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 250
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_2
    sget v9, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v9}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 258
    .local v7, "signalStrengthImage":Landroid/widget/ImageView;
    iget-object v9, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    iget-object v10, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    .line 259
    invoke-virtual {v10}, Lcom/google/glass/settings/ui/WifiLevels;->getNumWifiLevels()I

    move-result v10

    .line 258
    invoke-static {v9, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    .line 262
    .local v8, "strength":I
    sget v9, Lcom/google/glass/settings/ui/R$string;->wifi_connected:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 263
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v9}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 266
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :goto_3
    iget-object v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    invoke-virtual {v9, v8}, Lcom/google/glass/settings/ui/WifiLevels;->getImageResourceForStrength(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    return-void

    .line 253
    .end local v7    # "signalStrengthImage":Landroid/widget/ImageView;
    .end local v8    # "strength":I
    :cond_6
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 268
    .restart local v7    # "signalStrengthImage":Landroid/widget/ImageView;
    .restart local v8    # "strength":I
    :cond_7
    iget-object v9, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    invoke-virtual {v9}, Lcom/google/glass/settings/ui/WifiLevels;->getNumWifiLevels()I

    move-result v9

    add-int/2addr v8, v9

    .line 269
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateOtherNetworks(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V
    .locals 11
    .param p1, "wifiState"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 276
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 277
    sget-object v4, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Updating other networks UI."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    sget v4, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, "otherNetworksLabel":Landroid/widget/TextView;
    iget-object v4, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->scanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    sget-object v4, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No networks available, hiding other networks."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->scanResults:Ljava/util/List;

    .line 291
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 292
    .local v3, "scannedNetworks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    .line 293
    .local v0, "foundOpenWifi":Z
    iget-object v4, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->scanResults:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 294
    iget-object v4, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->scanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 297
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 302
    iget-object v5, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 303
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 304
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 309
    :cond_2
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v5, v2}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne v5, v6, :cond_3

    .line 310
    const/4 v0, 0x1

    .line 311
    sget-object v5, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Found open network: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_3
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 319
    sget-object v4, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No networks available, hiding other networks."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_5
    if-eqz v0, :cond_6

    .line 323
    sget-object v4, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Open networks available."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sget v4, Lcom/google/glass/settings/ui/R$string;->wifi_open_networks_available:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 329
    :goto_2
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 326
    :cond_6
    sget-object v4, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Networks available."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    sget v4, Lcom/google/glass/settings/ui/R$string;->wifi_networks_available:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method protected initialize()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/glass/settings/ui/WifiApView;->initialize()V

    .line 114
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 115
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 116
    new-instance v0, Lcom/google/glass/wifi/WifiScanner;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/wifi/WifiScanner;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 117
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connManager:Landroid/net/ConnectivityManager;

    .line 119
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 361
    invoke-super {p0}, Lcom/google/glass/settings/ui/WifiApView;->onAttachedToWindow()V

    .line 364
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 365
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/WifiSettingsItemView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$4;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 373
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 374
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->update()V

    .line 376
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/wifi/WifiScanner;->startScan(Z)V

    .line 377
    sget-object v0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Started wifi scan."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/google/glass/settings/ui/WifiApView;->onDetachedFromWindow()V

    .line 384
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 385
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 388
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 389
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 398
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->cancelWifiInfoTask()V

    .line 399
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 432
    .local v1, "itemResId":I
    sget v3, Lcom/google/glass/settings/ui/R$id;->join_network:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/google/glass/settings/ui/R$id;->switch_network:I

    if-ne v1, v3, :cond_1

    .line 434
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.SETUP_WIFI"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 436
    invoke-virtual {v3}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 437
    .local v2, "scanResults":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    sget-object v3, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Attaching %d scan results"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    const-string v3, "scan_results"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v3, v4

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "scanResults":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    :goto_0
    return v3

    .line 441
    :cond_1
    sget v3, Lcom/google/glass/settings/ui/R$id;->forget_network:I

    if-ne v1, v3, :cond_2

    .line 442
    new-instance v6, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v6, v7, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v3, Lcom/google/glass/settings/ui/R$string;->wifi_menu_forgetting:I

    .line 443
    invoke-virtual {v6, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_delete_50:I

    .line 444
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v6, Lcom/google/glass/settings/ui/R$string;->wifi_menu_forgotten:I

    .line 445
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 446
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 447
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 448
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/google/glass/settings/ui/WifiSettingsItemView$6;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$6;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    .line 449
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 461
    invoke-virtual {v3}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v3

    .line 462
    invoke-virtual {v3}, Lcom/google/glass/widget/MessageDialog;->show()V

    move v3, v4

    .line 463
    goto :goto_0

    .line 464
    :cond_2
    sget v3, Lcom/google/glass/settings/ui/R$id;->turn_on_wifi:I

    if-ne v1, v3, :cond_3

    .line 465
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->turnOnWifi()V

    move v3, v4

    .line 466
    goto :goto_0

    :cond_3
    move v3, v5

    .line 469
    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 9
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 411
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    sget v3, Lcom/google/glass/settings/ui/R$menu;->wifi_settings_menu:I

    invoke-virtual {p1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 412
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 413
    .local v2, "wifiState":I
    sget-object v3, Lcom/google/glass/settings/ui/WifiSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "onPrepareOptionsMenu(), wifiState=%d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v4, v5

    .line 426
    :goto_0
    return v4

    .line 421
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 422
    .local v0, "wifiEnabled":Z
    sget v3, Lcom/google/glass/settings/ui/R$id;->switch_network:I

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    sget v3, Lcom/google/glass/settings/ui/R$id;->forget_network:I

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    sget v3, Lcom/google/glass/settings/ui/R$id;->join_network:I

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView;->connected:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    sget v3, Lcom/google/glass/settings/ui/R$id;->turn_on_wifi:I

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    move v5, v4

    :cond_2
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v3, v5

    .line 422
    goto :goto_1

    :cond_4
    move v3, v5

    .line 423
    goto :goto_2

    :cond_5
    move v3, v5

    .line 424
    goto :goto_3
.end method
