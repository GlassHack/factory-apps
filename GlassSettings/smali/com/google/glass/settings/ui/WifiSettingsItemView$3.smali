.class Lcom/google/glass/settings/ui/WifiSettingsItemView$3;
.super Landroid/os/AsyncTask;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    iput-object p2, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 184
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$300(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/wifi/WifiScanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/wifi/WifiScanner;->fetchLastestCumulativeScanResults()Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v3, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Landroid/net/wifi/WifiInfo;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->doInBackground([Ljava/lang/Void;)Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V
    .locals 1
    .param p1, "wifiState"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$400(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$500(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$600(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V

    .line 200
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$3;->onPostExecute(Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiState;)V

    return-void
.end method
