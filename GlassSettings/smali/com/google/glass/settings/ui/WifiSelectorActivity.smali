.class public Lcom/google/glass/settings/ui/WifiSelectorActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "WifiSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;,
        Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;
    }
.end annotation


# static fields
.field private static final NEW_NETWORK_ID:I = -0x1


# instance fields
.field private apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

.field private attemptedEncryption:Lcom/google/glass/util/WifiHelper$Encryption;

.field private attemptedNetworkId:I

.field private barcodeScanLayout:Landroid/view/ViewGroup;

.field private barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

.field private final barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

.field private connectTimer:Lcom/google/glass/time/Stopwatch;

.field currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private initialResults:Z

.field private isWifiRequestSent:Z

.field private lastWifiSwitch:Landroid/view/MenuItem;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private previousNetworkId:I

.field private proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field selectedAccessPoint:Landroid/net/wifi/ScanResult;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final supplicantStateReceiver:Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

.field private wifiScanner:Lcom/google/glass/wifi/WifiScanner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 74
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 82
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 118
    new-instance v0, Lcom/google/glass/settings/ui/WifiSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$1;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .line 130
    iput v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    .line 134
    iput v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    .line 136
    new-instance v0, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;Lcom/google/glass/settings/ui/WifiSelectorActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->supplicantStateReceiver:Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;

    .line 143
    new-instance v0, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$2;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    .line 817
    return-void
.end method

.method private abortInProgressConnection(IZZ)V
    .locals 7
    .param p1, "networkId"    # I
    .param p2, "removeNetwork"    # Z
    .param p3, "removeOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Aborting in-progress connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    if-eq p1, v5, :cond_3

    .line 330
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 332
    if-eqz p2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Removing network %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 335
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 338
    :cond_0
    if-eqz p3, :cond_1

    .line 339
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cleanup only, not reassociating to previous network id %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iput v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_1
    iget v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    if-eq v0, v5, :cond_2

    .line 345
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempting to restore connection to previous network id %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 351
    :cond_3
    iput v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/wifi/WifiScanner;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/WifiSelectorActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->addNetworks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/settings/ui/WifiCardScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedEncryption:Lcom/google/glass/util/WifiHelper$Encryption;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/settings/ui/WifiSelectorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/WifiSelectorActivity;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->abortInProgressConnection(IZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/WifiSelectorActivity;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectTimer:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/settings/ui/WifiSelectorActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->updateDialog(II)V

    return-void
.end method

.method private addNetworks(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 534
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 535
    .local v0, "current":Landroid/net/wifi/WifiInfo;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 536
    .local v1, "newNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 537
    .local v3, "scanresult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 538
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Skipping currently connected network: %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiNetworks:Ljava/util/Map;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 543
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Scanned new network: %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiNetworks:Ljava/util/Map;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v3    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 550
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No new scan results found."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_3
    :goto_1
    return-void

    .line 555
    :cond_4
    sget-object v4, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 556
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Adding %d scan results..."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 558
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "ScanResult SSID=%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 562
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v4, v1}, Lcom/google/glass/settings/ui/WifiCardScrollView;->addNetworks(Ljava/util/List;)V

    .line 566
    iget-boolean v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->initialResults:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/WifiCardScrollView;->isAddNetworkSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 567
    iput-boolean v9, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->initialResults:Z

    .line 569
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Got first set of scan results, animating to them now."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    sget-object v5, Lcom/google/android/glass/widget/CardScrollView$Animation;->NAVIGATION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v4, v9, v5}, Lcom/google/glass/settings/ui/WifiCardScrollView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    goto :goto_1
.end method

.method private animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "up"    # Z
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 580
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    if-eqz p3, :cond_0

    .line 582
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    .line 586
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 588
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getTransitionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private connectToConfiguredNetwork(I)V
    .locals 7
    .param p1, "networkId"    # I

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 312
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 313
    return-void
.end method

.method private connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "networkId"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "alternativeSsid"    # Ljava/lang/String;
    .param p4, "encryption"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "fallbackAttempt"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Connecting to ssid=%s, encryption=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "\talternative ssid=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :cond_0
    if-nez p6, :cond_3

    .line 364
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 365
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_1

    .line 366
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iput v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    .line 367
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Already connected to network %s, id=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->previousNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v1}, Lcom/google/glass/wifi/WifiScanner;->stopScanning()V

    .line 372
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 375
    :cond_2
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/settings/ui/R$string;->wifi_menu_connecting:I

    .line 376
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_50:I

    .line 377
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 379
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    .line 380
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v7

    .line 391
    .local v7, "connectionDialog":Lcom/google/glass/widget/MessageDialog;
    iput-object v7, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    .line 392
    invoke-virtual {v7}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 393
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 395
    new-instance v1, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v1}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectTimer:Lcom/google/glass/time/Stopwatch;

    .line 396
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectTimer:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 401
    .end local v7    # "connectionDialog":Lcom/google/glass/widget/MessageDialog;
    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    new-instance v0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;Ljava/lang/String;ILcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 451
    .local v0, "callback":Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    move v8, p1

    .line 452
    .local v8, "newNetworkId":I
    if-nez p2, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    .line 453
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/WifiHelper;->connectToNetworkId(ILcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 458
    :goto_1
    iput v8, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    .line 459
    iput-object p4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedEncryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 460
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "attemptedNetworkId=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void

    .line 398
    .end local v0    # "callback":Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    .end local v8    # "newNetworkId":I
    :cond_3
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Skipping reinitialisation due to fallback attempt."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .restart local v0    # "callback":Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    .restart local v8    # "newNetworkId":I
    :cond_4
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1, p2, p4, p5, v0}, Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I

    move-result v8

    goto :goto_1
.end method

.method private connectToOpenNetwork(Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 317
    const/4 v1, -0x1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    sget-object v4, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 318
    return-void
.end method

.method private static getEncryption(Lcom/google/android/libraries/barhopper/Barcode;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1
    .param p0, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    packed-switch v0, :pswitch_data_0

    .line 726
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    :goto_0
    return-object v0

    .line 721
    :pswitch_0
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 723
    :pswitch_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransitionInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 576
    const v0, 0x10a0006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method private hideBarcodeViewfinder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v0, v2}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 615
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 616
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/glass/settings/ui/WifiSelectorActivity$6;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$6;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 622
    return-void
.end method

.method static isTypeWifiPasswordOnCompanionEnabled(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 2
    .param p0, "proxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 809
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->C_W_PW_INPUT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->getCompanionRemoteVersion()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBarcodeViewfinder(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x1

    .line 595
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->selectedAccessPoint:Landroid/net/wifi/ScanResult;

    .line 596
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/WifiSelectorActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$5;-><init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 603
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 604
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 606
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->startScanning()V

    .line 609
    :cond_0
    return-void
.end method

.method private updateDialog(II)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "iconId"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 469
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 470
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getWifiSwitch()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->lastWifiSwitch:Landroid/view/MenuItem;

    return-object v0
.end method

.method handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 16
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 632
    const/16 v1, 0x9

    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    if-eq v1, v2, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not a QR code: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    const/4 v1, 0x0

    .line 715
    :goto_0
    return v1

    .line 635
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    .line 638
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 639
    .local v8, "bundle":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not a Wifi QR code or setup qr code %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    const/4 v1, 0x0

    goto :goto_0

    .line 643
    :cond_1
    const-string v1, "encryption"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 644
    .local v12, "encryptionString":Ljava/lang/String;
    sget-object v11, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 645
    .local v11, "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 647
    :try_start_0
    invoke-static {v12}, Lcom/google/glass/util/WifiHelper$Encryption;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 653
    :cond_2
    const-string v1, "ssid"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 654
    .local v14, "ssid":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No ssid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    const/4 v1, 0x0

    goto :goto_0

    .line 648
    .end local v14    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 649
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not parse encryption value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v10, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    const/4 v1, 0x0

    goto :goto_0

    .line 659
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "ssid":Ljava/lang/String;
    :cond_3
    const-string v1, "psk"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 660
    .local v13, "psk":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-eq v11, v1, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No password"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    const/4 v1, 0x0

    goto :goto_0

    .line 665
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1, v11, v13}, Lcom/google/glass/util/WifiHelper;->shouldDetectEncryption(Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 667
    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lcom/google/glass/util/WifiHelper;->detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v9

    .line 668
    .local v9, "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    if-eqz v9, :cond_6

    .line 669
    move-object v11, v9

    .line 676
    .end local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    :cond_5
    :goto_1
    new-instance v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    invoke-direct {v15, v14, v11, v13}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 677
    .local v15, "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "user setting up wifi from setup qr code"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v12    # "encryptionString":Ljava/lang/String;
    .end local v13    # "psk":Ljava/lang/String;
    .end local v14    # "ssid":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->hideBarcodeViewfinder()V

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setVisibility(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->selectedAccessPoint:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_a

    iget-object v1, v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->selectedAccessPoint:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 704
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Warning, user wanted to join wifi SSID \'%s\' but the barcode scanned was for \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->selectedAccessPoint:Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->selectedAccessPoint:Landroid/net/wifi/ScanResult;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 713
    .local v4, "alternativeSsid":Ljava/lang/String;
    :goto_3
    const/4 v2, -0x1

    iget-object v3, v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    iget-object v5, v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v6, v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 715
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 672
    .end local v4    # "alternativeSsid":Ljava/lang/String;
    .end local v15    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    .restart local v12    # "encryptionString":Ljava/lang/String;
    .restart local v13    # "psk":Ljava/lang/String;
    .restart local v14    # "ssid":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not detect Wifi encryption type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 679
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    .end local v11    # "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    .end local v12    # "encryptionString":Ljava/lang/String;
    .end local v13    # "psk":Ljava/lang/String;
    .end local v14    # "ssid":Ljava/lang/String;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getEncryption(Lcom/google/android/libraries/barhopper/Barcode;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v11

    .line 680
    .restart local v11    # "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v2, v2, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Lcom/google/glass/util/WifiHelper;->shouldDetectEncryption(Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 682
    invoke-virtual {v2}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/WifiHelper;->detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v9

    .line 684
    .restart local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    if-eqz v9, :cond_9

    .line 685
    move-object v11, v9

    .line 692
    .end local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    :cond_8
    :goto_4
    new-instance v15, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v1, v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v2, v2, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    invoke-direct {v15, v1, v11, v2}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .restart local v15    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    goto/16 :goto_2

    .line 688
    .end local v15    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    .restart local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_NOT_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not detect Wifi encryption type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 709
    .end local v9    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    .restart local v15    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "alternativeSsid":Ljava/lang/String;
    goto :goto_3
.end method

.method protected isShowingViewfinder()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 191
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 193
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v4

    .line 192
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)Lcom/google/glass/barcode/BarcodeScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 197
    new-instance v1, Lcom/google/glass/util/WifiHelper;

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 198
    new-instance v1, Lcom/google/glass/wifi/WifiScanner;

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/wifi/WifiScanner;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    .line 200
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->supplicantStateReceiver:Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 202
    sget v1, Lcom/google/glass/settings/ui/R$id;->wifi_aps:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/settings/ui/WifiCardScrollView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    .line 203
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v1, v5}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 205
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->C_W_PW_INPUT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v1, p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v1, p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiNetworks:Ljava/util/Map;

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wifi_setup_string"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scan_results"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    .local v0, "prePopulatedAccessPoints":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v0, :cond_3

    .line 218
    iput-boolean v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->initialResults:Z

    .line 220
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not passed any scan results, starting a new scan."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v1, v5, v5}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZZ)V

    .line 235
    .end local v0    # "prePopulatedAccessPoints":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 236
    return-void

    .line 226
    .restart local v0    # "prePopulatedAccessPoints":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    iput-boolean v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->initialResults:Z

    .line 228
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Passed %d scan results."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->addNetworks(Ljava/util/List;)V

    .line 231
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Starting an ongoing scan."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiScanner:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v1, v5, v5}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZZ)V

    goto :goto_0
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 241
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->supplicantStateReceiver:Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$SupplicantStateReceiver;->unregister(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 243
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->hideBarcodeViewfinder()V

    .line 477
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 481
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 529
    :goto_0
    return-void

    .line 493
    :cond_0
    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 496
    .local v4, "soundId":Lcom/google/glass/sound/SoundManager$SoundId;
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v5}, Lcom/google/glass/settings/ui/WifiCardScrollView;->isAddNetworkSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 497
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->showBarcodeViewfinder(Landroid/net/wifi/ScanResult;)V

    .line 528
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v5}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getSelectedNetwork()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 500
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v5, v3}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne v5, v6, :cond_2

    .line 501
    invoke-direct {p0, v3}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToOpenNetwork(Landroid/net/wifi/ScanResult;)V

    goto :goto_1

    .line 506
    :cond_2
    const/4 v1, 0x0

    .line 507
    .local v1, "configuredNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 508
    .local v2, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_4

    .line 509
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 510
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 511
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Found encrypted configured network: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    move-object v1, v0

    .line 517
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-eqz v1, :cond_5

    .line 518
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToConfiguredNetwork(I)V

    goto :goto_1

    .line 519
    :cond_5
    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isTypeWifiPasswordOnCompanionEnabled(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 522
    invoke-direct {p0, v3}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->showBarcodeViewfinder(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    .line 524
    :cond_6
    new-instance v5, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;-><init>(Landroid/content/Context;Lcom/google/glass/settings/ui/WifiSelectorActivity$1;)V

    invoke-virtual {v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->show()V

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v4}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/WifiCardScrollView;->isAddNetworkSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getSelectedNetwork()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 739
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v4, v2}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v0

    .line 740
    .local v0, "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    sget-object v4, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-eq v0, v4, :cond_0

    .line 741
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isTypeWifiPasswordOnCompanionEnabled(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Send SetupWifiRequest"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    new-instance v3, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v3}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    .line 744
    .local v3, "setupWifiRequest":Lcom/google/glass/companion/Proto$SetupWifiRequest;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->setSsid(Ljava/lang/String;)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 745
    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->setSignalLevel(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 747
    invoke-static {v0}, Lcom/google/glass/companion/CompanionWifiEncryptionUtils;->getProtoValueFromEncryption(Lcom/google/glass/util/WifiHelper$Encryption;)I

    move-result v4

    .line 746
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->setEncryption(I)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 749
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 750
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v1, v3}, Lcom/google/glass/companion/Proto$Envelope;->setSetupWifiRequestG2C(Lcom/google/glass/companion/Proto$SetupWifiRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 751
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v4, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 752
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isWifiRequestSent:Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->setIntent(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPauseInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 255
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->attemptedNetworkId:I

    invoke-direct {p0, v2, v5, v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->abortInProgressConnection(IZZ)V

    .line 257
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isShowingViewfinder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->hideBarcodeViewfinder()V

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v2}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 266
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/barcode/BarcodeScanner;->setViewfinder(Landroid/view/TextureView;)V

    .line 269
    :cond_2
    iget-boolean v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isWifiRequestSent:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isTypeWifiPasswordOnCompanionEnabled(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Send cancelWifiRequest"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    new-instance v1, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    .line 272
    .local v1, "setupWifiRequest":Lcom/google/glass/companion/Proto$SetupWifiRequest;
    invoke-virtual {v1, v5}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->setCancelWifiRequest(Z)Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 274
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 275
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setSetupWifiRequestG2C(Lcom/google/glass/companion/Proto$SetupWifiRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 276
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v2, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 279
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v1    # "setupWifiRequest":Lcom/google/glass/companion/Proto$SetupWifiRequest;
    :cond_3
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v2}, Lcom/google/glass/settings/ui/WifiCardScrollView;->deactivate()V

    .line 280
    return-void
.end method

.method public onResumeInternal()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 284
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 285
    iput-boolean v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->isWifiRequestSent:Z

    .line 286
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_setup_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "companionSetupString":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_setup_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 289
    invoke-static {v7}, Lcom/google/glass/util/SetupHelper;->getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    move-result-object v8

    .line 290
    .local v8, "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    if-nez v8, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Can\'t parse the companion wifi setup string"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .end local v8    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local v8    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 296
    const/4 v1, -0x1

    iget-object v2, v8, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v5, v8, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 300
    .end local v8    # "wifiSetupInfo":Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->apsView:Lcom/google/glass/settings/ui/WifiCardScrollView;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->activate()V

    .line 302
    sget v0, Lcom/google/glass/settings/ui/R$id;->qr_scan:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    .line 303
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/settings/ui/R$id;->label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_qr_scan_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/google/glass/settings/ui/R$id;->viewfinder:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/google/glass/barcode/BarcodeScanner;->setViewfinder(Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/google/glass/settings/ui/R$layout;->wifi_menu_activity:I

    return v0
.end method

.method setBarcodeScannerForTest(Lcom/google/glass/barcode/BarcodeScanner;)V
    .locals 0
    .param p1, "barcodeScanner"    # Lcom/google/glass/barcode/BarcodeScanner;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 178
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    .line 179
    return-void
.end method

.method setWifiHelperForTest(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p1, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 184
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 185
    return-void
.end method
