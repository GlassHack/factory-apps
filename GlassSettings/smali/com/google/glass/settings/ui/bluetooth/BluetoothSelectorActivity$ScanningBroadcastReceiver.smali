.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .line 203
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Got action: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 213
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 212
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 214
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Found device: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBondState()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 217
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$400(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 239
    .end local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const-string v3, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 223
    invoke-static {v3, v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 225
    .restart local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$500(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-static {}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Paired with %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->finish()V

    goto :goto_0

    .line 229
    .end local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$400(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->discoveryFinished()V

    .line 231
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$600(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Lcom/google/glass/util/PowerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    goto :goto_0

    .line 232
    :cond_3
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 235
    .local v2, "newState":I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->access$700(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V

    goto :goto_0
.end method
