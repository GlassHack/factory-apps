.class public Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BluetoothBondStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/BaseSetupActivity$1;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received intent %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 612
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 616
    .local v0, "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 618
    invoke-virtual {v2}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v2

    sget-object v3, Lcom/google/glass/setup/SetupFlowController$State;->IOS_WAIT_FOR_PAIRING:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v2, v3, :cond_0

    .line 620
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v3, Lcom/google/glass/setup/SetupFlowController$State;->IOS_TURN_ON_HOTSPOT:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v4, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 622
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity;->connectivityReceiver:Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 625
    :cond_0
    return-void

    .line 612
    .end local v0    # "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_1
    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 613
    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    goto :goto_0
.end method
