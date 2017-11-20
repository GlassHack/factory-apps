.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "GTalkService.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAndSettingsMonitor"
.end annotation


# instance fields
.field private final mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p2, "service"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 564
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 565
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method private asyncAuditMainConnection()V
    .locals 2

    .prologue
    .line 743
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 757
    return-void
.end method

.method private asyncRemoveObsoleteEndpoints()V
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 736
    return-void
.end method

.method private createEndpointForAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 760
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEndpointForAccount: account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 764
    return-void
.end method

.method private getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 5
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 629
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 631
    .local v1, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrCreateEndpoint: username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 634
    :cond_0
    if-nez v1, :cond_1

    .line 635
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v4, 0x0

    invoke-static {v3, p1, v2, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 638
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    .end local v1    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 640
    .restart local v1    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    if-nez v1, :cond_1

    .line 646
    .end local v0    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    goto :goto_0
.end method

.method private handleBackgroundDataSettingChange()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0
.end method

.method private logNoAccountError()V
    .locals 1

    .prologue
    .line 721
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 722
    return-void
.end method


# virtual methods
.method public accountMissing()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->logNoAccountError()V

    .line 718
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 695
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 697
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 699
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_2

    .line 700
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): failed to create endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 710
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionStateAndError(IIZ)V

    goto :goto_0
.end method

.method public authTokenFetched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 650
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIsOkToConnectToMcs()Z

    move-result v1

    .line 652
    .local v1, "shouldConnect":Z
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authTokenFetched("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ") token is empty!"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldConnect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 658
    :cond_0
    if-eqz v1, :cond_1

    .line 659
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 660
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->createEndpointForAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 662
    .end local v0    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    :cond_1
    return-void

    .line 653
    :cond_2
    const-string v2, ")"

    goto :goto_0
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 669
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fetchAuthTokenLater"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 671
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 673
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_1

    .line 674
    const-string v1, "fetchAuthTokenLater: endpoint is null!"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "action":Ljava/lang/String;
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 573
    :cond_0
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 576
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncRemoveObsoleteEndpoints()V

    goto :goto_0

    .line 577
    :cond_3
    const-string v4, "com.google.glass.action.DON_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 578
    const-string v4, "is_donned"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 581
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 583
    :cond_5
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 584
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->handleBackgroundDataSettingChange()V

    goto :goto_0

    .line 585
    :cond_6
    const-string v4, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 586
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesSettingChanged()V

    goto :goto_0

    .line 587
    :cond_7
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 588
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageLow()V

    goto :goto_0

    .line 589
    :cond_8
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 590
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageOk()V

    goto :goto_0

    .line 591
    :cond_9
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 592
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto :goto_0

    .line 593
    :cond_a
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 594
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto :goto_0

    .line 595
    :cond_b
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 596
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 597
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isPowerNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 598
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V

    goto/16 :goto_0

    .line 600
    :cond_c
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 601
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4, v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 602
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isPowerNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V

    goto/16 :goto_0

    .line 605
    :cond_d
    const-string v4, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 606
    const-string v4, "isActive"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 607
    .local v1, "active":Z
    const-string v4, "deviceType"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 608
    .local v2, "deviceType":I
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received data activity changed intent active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 611
    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isDataActiveNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V

    goto/16 :goto_0

    .line 615
    .end local v1    # "active":Z
    .end local v2    # "deviceType":I
    :cond_e
    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    :cond_f
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v3

    .line 623
    .local v3, "pending":Landroid/content/BroadcastReceiver$PendingResult;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendUserStatus(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    goto/16 :goto_0
.end method
