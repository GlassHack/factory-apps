.class Lcom/google/glass/settings/ui/details/WifiDetailsCard;
.super Ljava/lang/Object;
.source "WifiDetailsCard.java"

# interfaces
.implements Lcom/google/glass/settings/ui/details/DetailsCard;


# instance fields
.field private final resources:Landroid/content/res/Resources;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "null wifiManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    const-string v0, "null resources"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->resources:Landroid/content/res/Resources;

    .line 25
    return-void
.end method

.method private getIpAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 67
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 72
    .local v1, "ip":I
    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 56
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/details/DetailsCard$Detail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/settings/ui/details/DetailsCard$Detail;>;"
    invoke-direct {p0}, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "ipAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 37
    new-instance v3, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v4, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_wifi_ip_address:I

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "macAddress":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 44
    new-instance v3, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v4, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_wifi_mac_address:I

    .line 45
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/WifiDetailsCard;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_wifi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
