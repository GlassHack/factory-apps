.class public Lcom/google/glass/settings/ui/WifiCardScrollView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "WifiCardScrollView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private scannedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/WifiCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/WifiCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WifiCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiCardScrollView;->scannedNetworks:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiCardScrollView;->scannedNetworks:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addNetworks(Ljava/util/List;)V
    .locals 5
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
    .line 67
    .local p1, "scannedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v0, Lcom/google/glass/settings/ui/WifiCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Adding %s new scan results."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiCardScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public getSelectedNetwork()Landroid/net/wifi/ScanResult;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiCardScrollView;->scannedNetworks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public isAddNetworkSelected()Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompanionConnectionStatusChanged(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public setNetworks(Ljava/util/List;)V
    .locals 5
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
    .line 57
    .local p1, "scannedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-object v0, Lcom/google/glass/settings/ui/WifiCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting %s scan results."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiCardScrollView;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WifiCardScrollView;->addNetworks(Ljava/util/List;)V

    .line 60
    return-void
.end method
