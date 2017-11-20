.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "InitiateBluetoothPairingActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$100(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Received intent %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p2, v8, v5

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->getInstance()Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->get(Landroid/content/Intent;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 211
    .local v0, "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "state":I
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v6, v5}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$202(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Z)Z

    .line 213
    const/16 v5, 0xc

    if-ne v3, v5, :cond_0

    .line 215
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isIOSDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v5, v4}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$202(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Z)Z

    .line 217
    iget-object v4, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v9}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->create(I)Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->pushFragment(Landroid/app/Fragment;)V

    .line 269
    .end local v0    # "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v0    # "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .restart local v3    # "state":I
    :cond_1
    iget-object v4, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v4}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$300(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    goto :goto_0

    .line 224
    .end local v0    # "bluetoothDeviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v3    # "state":I
    :cond_2
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    iget-object v6, v6, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 226
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 227
    .local v1, "isTethered":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "isBluetoothTethered = %s, active network: %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    iget-object v5, v5, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 228
    invoke-interface {v5}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    aput-object v5, v8, v4

    .line 227
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    if-eqz v1, :cond_0

    .line 230
    iget-object v4, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    new-instance v5, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$400(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v1    # "isTethered":Z
    :cond_3
    move v1, v5

    .line 226
    goto :goto_1
.end method
