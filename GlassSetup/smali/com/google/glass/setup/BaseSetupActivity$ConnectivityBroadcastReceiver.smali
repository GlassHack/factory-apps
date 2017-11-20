.class public Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 638
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/BaseSetupActivity$1;

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 643
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Received intent %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v5, v5, Lcom/google/glass/setup/BaseSetupActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 650
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 651
    .local v1, "isTethered":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "isBluetoothTethered = %s, active network: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v4, v4, Lcom/google/glass/setup/BaseSetupActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 652
    invoke-interface {v4}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    aput-object v4, v7, v3

    .line 651
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 658
    invoke-virtual {v3}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v3

    sget-object v4, Lcom/google/glass/setup/SetupFlowController$State;->IOS_TURN_ON_HOTSPOT:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v3, v4, :cond_0

    .line 660
    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v3}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 661
    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v4, Lcom/google/glass/setup/SetupFlowController$State;->IOS_SUCCESSFUL_TETHERED:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v5, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 665
    .end local v1    # "isTethered":Z
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    return-void

    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    move v1, v4

    .line 650
    goto :goto_0
.end method
