.class Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HIDSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/HIDSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .line 398
    invoke-static {}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$500()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;Lcom/google/glass/settings/ui/HIDSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/HIDSettingsItemView$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Got action: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v4, 0xc

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 409
    .local v2, "newState":I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 410
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 411
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$600(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$600(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$700(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    .line 413
    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$602(Lcom/google/glass/settings/ui/HIDSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 417
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "newState":I
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$400(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    .line 418
    return-void
.end method
