.class public Lcom/google/glass/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;
    }
.end annotation


# static fields
.field public static final SCAN_COUNTS_PER_REFRESH:I = 0x3

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeScan:Z

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

.field private volatile stopScanning:Z

.field private timer:Lcom/google/glass/time/Stopwatch;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private final wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;)V
    .locals 1
    .param p1, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "wifiCumulativeScannerCallback"    # Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    .line 36
    iput-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    .line 150
    new-instance v0, Lcom/google/glass/wifi/WifiScanner$1;

    invoke-direct {v0, p0}, Lcom/google/glass/wifi/WifiScanner$1;-><init>(Lcom/google/glass/wifi/WifiScanner;)V

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .line 59
    iput-object p1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 60
    iput-object p2, p0, Lcom/google/glass/wifi/WifiScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 61
    iput-object p3, p0, Lcom/google/glass/wifi/WifiScanner;->wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/wifi/WifiScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/google/glass/wifi/WifiScanner;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/wifi/WifiScanner;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiScanner;->addCumulativeScanResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/wifi/WifiScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->isContinuous:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiCumulativeScannerCallback:Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/wifi/WifiScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->activeScan:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiHelper:Lcom/google/glass/util/WifiHelper;

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
    .line 144
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiScanner;->addCumulativeScanResults(Ljava/util/List;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v1, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    return-object v0
.end method

.method private addCumulativeScanResults(Ljava/util/List;)V
    .locals 4
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
    .line 131
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 135
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/google/glass/wifi/WifiScanner;->scanCount:I

    .line 69
    iput-boolean v0, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 70
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->cumulativeScanResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    return-void
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
    .line 122
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 123
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

    .line 124
    invoke-direct {p0, v0}, Lcom/google/glass/wifi/WifiScanner;->addAndReturnCumulativeScanResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public startScan(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZZ)V

    .line 99
    return-void
.end method

.method public startScan(ZZ)V
    .locals 3
    .param p1, "active"    # Z
    .param p2, "continuous"    # Z

    .prologue
    .line 82
    iput-boolean p2, p0, Lcom/google/glass/wifi/WifiScanner;->isContinuous:Z

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiScanner;->clear()V

    .line 84
    iput-boolean p1, p0, Lcom/google/glass/wifi/WifiScanner;->activeScan:Z

    .line 85
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    const-string v1, "Scan time"

    invoke-direct {v0, v1}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    .line 86
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting WifiScan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/WifiHelper;->startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    .line 88
    return-void
.end method

.method public stopScanning()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    iput-boolean v6, p0, Lcom/google/glass/wifi/WifiScanner;->stopScanning:Z

    .line 107
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/glass/wifi/WifiScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_SCANNING_STOPPED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "l"

    iget-object v3, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    .line 110
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 109
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/google/glass/wifi/WifiScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Request to stop Wifi scanning %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/wifi/WifiScanner;->timer:Lcom/google/glass/time/Stopwatch;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method
