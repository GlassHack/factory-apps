.class Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiState"
.end annotation


# instance fields
.field final configuredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

.field final wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Landroid/net/wifi/WifiInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p4, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 505
    iput-object p3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->scanResults:Ljava/util/List;

    .line 506
    iput-object p4, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;->configuredNetworks:Ljava/util/List;

    .line 507
    return-void
.end method
