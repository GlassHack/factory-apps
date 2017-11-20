.class Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/WifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanBroadcastReceiver"
.end annotation


# instance fields
.field private final callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 3
    .param p2, "callback"    # Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    .line 560
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 561
    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .line 562
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;Lcom/google/glass/util/WifiHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/util/WifiHelper;
    .param p2, "x1"    # Lcom/google/glass/util/WifiHelper$WifiScanCallback;
    .param p3, "x2"    # Lcom/google/glass/util/WifiHelper$1;

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Wifi scan completed, scan results received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 569
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 571
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    .line 572
    sget-object v1, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 573
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-interface {v1, v0}, Lcom/google/glass/util/WifiHelper$WifiScanCallback;->onScanResultsAvailable(Ljava/util/List;)V

    .line 576
    .end local v0    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method
