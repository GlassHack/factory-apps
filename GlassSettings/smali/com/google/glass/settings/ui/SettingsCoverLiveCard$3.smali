.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateConnectivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    iput-object p2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .line 180
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 181
    .local v6, "connManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 182
    .local v2, "wifiInfo":Landroid/net/NetworkInfo;
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 183
    .local v3, "btInfo":Landroid/net/NetworkInfo;
    const/16 v0, 0xf

    .line 184
    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 185
    .local v4, "proxyInfo":Landroid/net/NetworkInfo;
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$400(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v5

    .line 187
    .local v5, "isConnected":Z
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3$1;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
