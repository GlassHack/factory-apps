.class public Lcom/google/glass/settings/ui/WifiScanResultsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "WifiScanResultsAdapter.java"


# static fields
.field public static final ADD_NETWORK_MANUALLY:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final scannedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;

.field protected wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "scannedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/settings/ui/WifiLevels;

    invoke-direct {v0}, Lcom/google/glass/settings/ui/WifiLevels;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    .line 37
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method private getManualScanView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "shade"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    sget v2, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, "icon":Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_add_150:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    sget v2, Lcom/google/glass/settings/ui/R$id;->title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/google/glass/settings/ui/R$string;->wifi_add_network:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    sget v2, Lcom/google/glass/settings/ui/R$id;->tip:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, "tip":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    sget v2, Lcom/google/glass/settings/ui/R$string;->wifi_add_network_via_myglass:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :goto_0
    return-object p2

    .line 101
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$string;->wifi_add_network_via_qr_code:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private getWifiApView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "shade"    # Landroid/widget/LinearLayout;

    .prologue
    .line 107
    const/16 v4, 0x8

    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 111
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 112
    .local v2, "level":I
    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v4, v3}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v1

    .line 113
    .local v1, "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    sget v4, Lcom/google/glass/settings/ui/R$id;->title:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, "apName":Landroid/widget/TextView;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sget v4, Lcom/google/glass/settings/ui/R$id;->tip:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget-object v4, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne v1, v4, :cond_0

    .line 118
    sget v4, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    .line 119
    invoke-virtual {v5, v2}, Lcom/google/glass/settings/ui/WifiLevels;->getImageResourceForStrength(I)I

    move-result v5

    .line 118
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_0
    return-object p2

    .line 121
    :cond_0
    sget v4, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    .line 122
    invoke-virtual {v5, v2}, Lcom/google/glass/settings/ui/WifiLevels;->getImageResourceForStrengthSecured(I)I

    move-result v5

    .line 121
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isLastView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 57
    sget-object v0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->scannedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/glass/settings/ui/R$layout;->wifi_settings_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    sget-object v1, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Instantiating a new view for position %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    sget v1, Lcom/google/glass/settings/ui/R$id;->barcode_shade:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 82
    .local v0, "shade":Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->isLastView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->getManualScanView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v1

    .line 85
    :goto_1
    return-object v1

    .line 78
    .end local v0    # "shade":Landroid/widget/LinearLayout;
    :cond_0
    sget-object v1, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Reusing a view for position %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .restart local v0    # "shade":Landroid/widget/LinearLayout;
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WifiScanResultsAdapter;->getWifiApView(ILandroid/view/View;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
