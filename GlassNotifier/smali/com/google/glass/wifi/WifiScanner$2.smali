.class Lcom/google/glass/wifi/WifiScanner$2;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Lcom/google/glass/wifi/WifiScanner$WifiScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/wifi/WifiScanner;


# direct methods
.method constructor <init>(Lcom/google/glass/wifi/WifiScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/wifi/WifiScanner;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResultsAvailable(Ljava/util/List;)V
    .locals 6
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2}, Lcom/google/glass/wifi/WifiScanner;->access$008(Lcom/google/glass/wifi/WifiScanner;)I

    .line 77
    invoke-static {}, Lcom/google/glass/wifi/WifiScanner;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Scan results received, scanCount=%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v5}, Lcom/google/glass/wifi/WifiScanner;->access$000(Lcom/google/glass/wifi/WifiScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v5}, Lcom/google/glass/wifi/WifiScanner;->access$100(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/time/Stopwatch;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2, p1}, Lcom/google/glass/wifi/WifiScanner;->access$300(Lcom/google/glass/wifi/WifiScanner;Ljava/util/List;)V

    .line 80
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2}, Lcom/google/glass/wifi/WifiScanner;->access$400(Lcom/google/glass/wifi/WifiScanner;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-static {}, Lcom/google/glass/wifi/WifiScanner;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "aborting scan"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2, v1}, Lcom/google/glass/wifi/WifiScanner;->access$402(Lcom/google/glass/wifi/WifiScanner;Z)Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2}, Lcom/google/glass/wifi/WifiScanner;->access$500(Lcom/google/glass/wifi/WifiScanner;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2}, Lcom/google/glass/wifi/WifiScanner;->access$000(Lcom/google/glass/wifi/WifiScanner;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 87
    .local v0, "isLastScan":Z
    :goto_1
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v1}, Lcom/google/glass/wifi/WifiScanner;->access$600(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v1}, Lcom/google/glass/wifi/WifiScanner;->access$600(Lcom/google/glass/wifi/WifiScanner;)Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/wifi/WifiScanner$WifiCumulativeScannerCallback;->onCumulativeScanResultsAvailable(Z)V

    .line 90
    :cond_2
    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiScanner$2;->this$0:Lcom/google/glass/wifi/WifiScanner;

    invoke-static {v2}, Lcom/google/glass/wifi/WifiScanner;->access$700(Lcom/google/glass/wifi/WifiScanner;)Z

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/google/glass/wifi/WifiScanner;->startScan(ZLcom/google/glass/wifi/WifiScanner$WifiScanCallback;)V

    goto :goto_0

    .end local v0    # "isLastScan":Z
    :cond_3
    move v0, v1

    .line 86
    goto :goto_1
.end method
