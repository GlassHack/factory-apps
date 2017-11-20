.class Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/SetupActivity;)V
    .locals 3

    .prologue
    .line 721
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 722
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/setup/SetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/SetupActivity$1;

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;)V

    return-void
.end method

.method private hasRegionCode()Z
    .locals 3

    .prologue
    .line 766
    const-string v1, "ro.region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "regionCode":Ljava/lang/String;
    const-string v1, "GB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 727
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v2}, Lcom/google/glass/setup/SetupActivity;->access$1400(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    new-instance v3, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/google/glass/setup/SetupActivity;->access$1402(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/util/BatteryHelper;)Lcom/google/glass/util/BatteryHelper;

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v2}, Lcom/google/glass/setup/SetupActivity;->access$1400(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v1

    .line 731
    .local v1, "level":I
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v2}, Lcom/google/glass/setup/SetupActivity;->access$1400(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v0

    .line 732
    .local v0, "isPowered":Z
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Battery level: %d, is powered: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_7

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v2

    sget-object v3, Lcom/google/glass/setup/SetupFlowController$State;->LOW_BATTERY:Lcom/google/glass/setup/SetupFlowController$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 741
    invoke-virtual {v2}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v2

    if-nez v2, :cond_4

    .line 742
    :cond_2
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v3, v2, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LS:Lcom/google/glass/util/Labs$Feature;

    .line 743
    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->hasRegionCode()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    :goto_0
    sget-object v4, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 742
    invoke-virtual {v3, v2, v4}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 748
    :cond_4
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v2}, Lcom/google/glass/setup/SetupActivity;->access$1500(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-virtual {v2, v3}, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 756
    :cond_5
    :goto_1
    return-void

    .line 743
    :cond_6
    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    goto :goto_0

    .line 751
    :cond_7
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v2

    if-nez v2, :cond_5

    .line 752
    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$BatteryBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/SetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v3, Lcom/google/glass/setup/SetupFlowController$State;->LOW_BATTERY:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v4, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_1
.end method
