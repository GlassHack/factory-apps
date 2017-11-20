.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .line 451
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$400()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    return-void
.end method

.method private logAndUpdateDialog(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 541
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$1100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_ENABLE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    .line 542
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 545
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_menu_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 550
    :goto_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 551
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-virtual {v0, v5}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->setKeepScreenOn(Z)V

    .line 552
    return-void

    .line 543
    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_menu_failed:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_no_50:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    goto :goto_1
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$1000()Lcom/google/glass/logging/FormattingLogger;

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

    .line 456
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Got action: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const-string v5, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    const-string v5, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 461
    .local v2, "state":I
    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v5, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$502(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z

    .line 462
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    .line 533
    .end local v2    # "state":I
    :goto_1
    return-void

    .restart local v2    # "state":I
    :cond_0
    move v3, v4

    .line 461
    goto :goto_0

    .line 463
    .end local v2    # "state":I
    :cond_1
    const-string v5, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 464
    invoke-static {v5, v6}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 466
    .local v0, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v0, :cond_2

    .line 467
    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v5, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$602(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z

    .line 470
    new-instance v5, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;

    invoke-direct {v5, p0, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 498
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Void;

    .line 497
    invoke-virtual {v5, v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$602(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z

    .line 501
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$702(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 502
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    goto :goto_1

    .line 505
    .end local v0    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_3
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 506
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xc

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 509
    .local v1, "newState":I
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "New bluetooth adapter state: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v5}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v5}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$900(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 513
    packed-switch v1, :pswitch_data_0

    .line 531
    .end local v1    # "newState":I
    :cond_4
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    goto/16 :goto_1

    .line 516
    .restart local v1    # "newState":I
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->logAndUpdateDialog(Z)V

    goto :goto_2

    .line 521
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->logAndUpdateDialog(Z)V

    goto :goto_2

    .line 513
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
