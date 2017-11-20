.class public Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/glass/setup/SetupFlowController$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetupFlowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method protected constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)V
    .locals 2
    .param p1, "setupMethod"    # Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->access$1002(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity$7;->$SwitchMap$com$google$glass$setup$SetupFlowController$SetupMethod:[I

    invoke-virtual {p1}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 745
    :goto_0
    return-void

    .line 727
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothBondStateListener:Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 728
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->connectivityReceiver:Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 731
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->glassSetupRequestReceiver:Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 732
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 733
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$2;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$2;-><init>(Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 742
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->stopWifiScanner()V

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/BaseSetupActivity;->access$1100(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z
    .locals 4
    .param p1, "setupMethod"    # Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 679
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iput-boolean v0, v2, Lcom/google/glass/setup/BaseSetupActivity;->setupStarted:Z

    .line 680
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/setup/BaseSetupActivity;->access$1002(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 681
    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$7;->$SwitchMap$com$google$glass$setup$SetupFlowController$SetupMethod:[I

    invoke-virtual {p1}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 713
    :goto_0
    return v0

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothBondStateListener:Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/BaseSetupActivity$BluetoothBondStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 686
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->glassSetupRequestReceiver:Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 688
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 689
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;

    invoke-direct {v2, p0}, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;-><init>(Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 704
    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    sget-object v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    if-ne p1, v0, :cond_0

    const-string v0, "a"

    :goto_1
    iput-object v0, v2, Lcom/google/glass/setup/BaseSetupActivity;->setupMethodToLog:Ljava/lang/String;

    move v0, v1

    .line 706
    goto :goto_0

    .line 704
    :cond_0
    const-string v0, "i"

    goto :goto_1

    .line 708
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->startBarcodeScanner()V

    .line 709
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->startWifiScanner()V

    .line 710
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const-string v2, "c"

    iput-object v2, v0, Lcom/google/glass/setup/BaseSetupActivity;->setupMethodToLog:Ljava/lang/String;

    move v0, v1

    .line 711
    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBarcodeScanner()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->startBarcodeScanner()V

    .line 719
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->startWifiScanner()V

    .line 720
    return-void
.end method
