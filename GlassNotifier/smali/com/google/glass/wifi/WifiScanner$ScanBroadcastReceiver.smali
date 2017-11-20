.class Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanBroadcastReceiver"
.end annotation


# instance fields
.field private final callback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

.field final synthetic this$0:Lcom/google/glass/wifi/WifiScanner;


# direct methods
.method private constructor <init>(Lcom/google/glass/wifi/WifiScanner;Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p2, "callback"    # Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiScanner;

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 299
    iput-object p2, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/wifi/WifiScanner;Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;Lcom/google/glass/wifi/WifiScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p2, "x1"    # Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;
    .param p3, "x2"    # Lcom/google/glass/wifi/WifiScanner$1;

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;-><init>(Lcom/google/glass/wifi/WifiScanner;Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/google/glass/wifi/WifiScanner;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method getWifiScanCallbackForTest()Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Wifi scan completed, scan results received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 307
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-virtual {v1}, Lcom/google/glass/wifi/WifiScanner;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    .line 310
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->callback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    invoke-interface {v1, v0}, Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;->onScanResultsAvailable(Ljava/util/List;)V

    .line 314
    .end local v0    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method
