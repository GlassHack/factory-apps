.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothPairingConfirmationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingBroadcastReceiver"
.end annotation


# instance fields
.field private final pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V
    .locals 3

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .line 345
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .line 342
    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "pairingReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->getInstance()Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->get(Landroid/content/Intent;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    .line 354
    .local v3, "receivedDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 356
    .local v4, "state":I
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v5, v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v3, v5}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Got bond state change intent for %s when we\'re looking for %s, ignoring."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    iget-object v8, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v8, v8, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .end local v3    # "receivedDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v4    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 362
    .restart local v3    # "receivedDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .restart local v4    # "state":I
    :cond_2
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Bonded successfully to %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v8, v8, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v5, v10}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$202(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;Z)Z

    .line 369
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v5, v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$300(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.glass.bluetooth.PAIRING_COMPLETE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "pairedIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v6, v6, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v6}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 376
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v5}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$400(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V

    .line 377
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v5}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$500(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0

    .line 378
    .end local v1    # "pairedIntent":Landroid/content/Intent;
    :cond_3
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 379
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 381
    .local v2, "reason":I
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Bonding to %s failed (reason %s)."

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v8, v8, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    iget-object v5, v5, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$300(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->showPairingFailedDialog()V

    .line 386
    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v5}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$500(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto/16 :goto_0
.end method
