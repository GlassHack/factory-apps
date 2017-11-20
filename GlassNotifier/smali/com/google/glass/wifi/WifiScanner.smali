.class public Lcom/google/glass/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;,
        Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;,
        Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;
    }
.end annotation


# static fields
.field public static final SCAN_COUNTS_PER_REFRESH:I = 0x3

.field public static final SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeScan:Z

.field private final context:Landroid/content/Context;

.field private final cumulativeScanResults:Ljava/util/Map;
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

.field private isContinuous:Z

.field private scanCount:I

.field private scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

.field private volatile stopScanning:Z

.field private timer:Lcom/google/glass/time/Stopwatch;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

.field private final wifiManager:Landroid/net/wifi/WifiManager;

.field private final wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 32
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "wifiScanReceiver"

    .line 33
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiScanner;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    new-instance v0, Lcom/google/glass/wifi/WifiScanner$1;

    invoke-direct {v0}, Lcom/google/glass/wifi/WifiScanner$1;-><init>()V

    sput-object v0, Lcom/google/glass/wifi/WifiScanner;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    .line 66
    iput-boolean v1, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 68
    iput v1, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    .line 73
    new-instance v0, Lcom/google/glass/wifi/WifiScanner$2;

    invoke-direct {v0, p0}, Lcom/google/glass/wifi/WifiScanner$2;-><init>(Lcom/google/glass/wifi/WifiScanner;)V

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    .line 118
    iput-object p1, p0, Lcom/google/glass/wifi/WifiScanner;->context:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/google/glass/wifi/WifiScanner;->wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .line 120
    invoke-static {}, Lcom/google/glass/wifi/WifiManagerProvider;->getInstance()Lcom/google/glass/wifi/WifiManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/wifi/WifiManagerProvider;->from(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/wifi/WifiScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/google/glass/wifi/WifiScanner;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/wifi/WifiScanner;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiScanner;->addCumulativeScanResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/wifi/WifiScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->isContinuous:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->activeScan:Z

    return v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private addAndReturnCumulativeScanResults(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiScanner;->addCumulativeScanResults(Ljava/util/List;)V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    return-object v0
.end method

.method private addCumulativeScanResults(Ljava/util/List;)V
    .locals 7
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
    .line 251
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_0

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 255
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    sget-object v2, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Adding scan result [bssid=%s, scanresult=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method private cancelScanReceiver()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    .line 129
    iput-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 130
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    return-void
.end method

.method clearEmptySsids(Ljava/util/List;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .line 273
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez p1, :cond_1

    .line 284
    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 278
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 279
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    sget-object v2, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Removed ScanResult with blank SSID."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 277
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public fetchLastestCumulativeScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiScanner;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Scan results fetched, scanCount=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-direct {p0, v0}, Lcom/google/glass/wifi/WifiScanner;->addAndReturnCumulativeScanResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getScanBroadcastReceiverForTest()Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/wifi/WifiScanner;->clearEmptySsids(Ljava/util/List;)V

    .line 222
    return-object v0
.end method

.method public startScan(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZZ)V

    .line 142
    return-void
.end method

.method public startScan(ZLcom/google/glass/wifi/WifiScanner$WifiScanCallback;)V
    .locals 6
    .param p1, "active"    # Z
    .param p2, "callback"    # Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    .prologue
    const/4 v5, 0x0

    .line 169
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Initiating scan for wifi."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiScanner;->cancelScanReceiver()V

    .line 175
    new-instance v1, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;-><init>(Lcom/google/glass/wifi/WifiScanner;Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;Lcom/google/glass/wifi/WifiScanner$1;)V

    iput-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    .line 176
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->scanReceiver:Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/wifi/WifiScanner;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/wifi/WifiScanner$ScanBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 178
    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "startScanActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Started active wifi scan."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 197
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to start active wifi scan: "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to start active wifi scan: "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to start active wifi scan: "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to start active wifi scan since the api is not found.  sdk version is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 189
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 195
    sget-object v1, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Started passive wifi scan."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startScan(ZZ)V
    .locals 5
    .param p1, "active"    # Z
    .param p2, "continuous"    # Z

    .prologue
    .line 153
    iput-boolean p2, p0, Lcom/google/glass/wifi/WifiScanner;->isContinuous:Z

    .line 154
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiScanner;->clear()V

    .line 155
    iput-boolean p1, p0, Lcom/google/glass/wifi/WifiScanner;->activeScan:Z

    .line 156
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    const-string v1, "Scan time"

    invoke-direct {v0, v1}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    .line 157
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting WifiScan. [continuous=%b]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiScanCallback:Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZLcom/google/glass/wifi/WifiScanner$WifiScanCallback;)V

    .line 159
    return-void
.end method

.method public stopScanning()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    iput-boolean v7, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 205
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_SCANNING_STOPPED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "l"

    iget-object v3, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    .line 208
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 207
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Request to stop Wifi scanning %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method
