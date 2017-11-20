.class Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;
.super Lcom/google/glass/util/TestableAsyncTask;
.source "ConnectivityStatusCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setWifiConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/TestableAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-direct {p0}, Lcom/google/glass/util/TestableAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-static {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$200(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecuteInternal(Landroid/net/wifi/WifiInfo;)V
    .locals 14
    .param p1, "result"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_glass_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_wifi:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_cloud:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_green_left:I

    sget v5, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_green_right:I

    iget-object v6, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 186
    invoke-static {v6}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$300(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/settings/ui/R$string;->connectivity_glass:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 188
    invoke-static {v8}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$300(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$string;->connectivity_internet:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    sget v10, Lcom/google/glass/settings/ui/R$string;->connectivity_connected_wifi:I

    sget v11, Lcom/google/glass/settings/ui/R$string;->connectivity_connected_highlight:I

    sget v12, Lcom/google/glass/settings/ui/R$color;->state_green:I

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    .line 189
    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$500(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 181
    invoke-static/range {v0 .. v9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$600(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecuteInternal(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;->onPostExecuteInternal(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
