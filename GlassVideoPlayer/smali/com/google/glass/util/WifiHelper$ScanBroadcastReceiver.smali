.class Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 3

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    .line 559
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 560
    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .line 561
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;Lcom/google/glass/util/WifiHelper$1;)V
    .locals 0

    .prologue
    .line 555
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
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Wifi scan completed, scan results received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 569
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    sget-object v1, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 573
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;->callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-interface {v1, v0}, Lcom/google/glass/util/WifiHelper$WifiScanCallback;->onScanResultsAvailable(Ljava/util/List;)V

    .line 576
    :cond_0
    return-void
.end method
