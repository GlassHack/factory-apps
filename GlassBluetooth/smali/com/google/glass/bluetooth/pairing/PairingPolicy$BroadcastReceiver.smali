.class Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PairingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/PairingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V
    .locals 3

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.bluetooth.PAIRING_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.action.UUID"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 351
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 352
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    const-string v2, "com.google.glass.bluetooth.PAIRING_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-nez v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1002(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 356
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "scanning newly bonded device: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->fetchUuidsWithSdp()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$600(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0

    .line 362
    :cond_2
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "ACTION_BOND_STATE_CHANGED: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, "bondState":I
    if-ne v0, v8, :cond_0

    .line 368
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$100(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Notified of unbonding, but we\'re not currently bonded."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$100(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$700(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V

    goto :goto_0

    .line 375
    .end local v0    # "bondState":I
    :cond_4
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "ACTION_UUID: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1000(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    if-nez v2, :cond_6

    .line 379
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, " we aren\'t supposed to be scanning..."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :goto_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1000(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1000(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    .line 387
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$600(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 389
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, " reset device scan thing"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1002(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    goto/16 :goto_0

    .line 381
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, " scanning device: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v5}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$1000(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
