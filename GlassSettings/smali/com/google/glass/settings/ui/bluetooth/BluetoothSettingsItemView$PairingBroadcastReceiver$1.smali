.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;
.super Landroid/os/AsyncTask;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

.field final synthetic val$device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->val$device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 470
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 473
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->val$device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->val$device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "toStringValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    iget-object v2, v2, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;

    iget-object v4, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->val$device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$702(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 486
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 470
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$600(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$702(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    .line 496
    return-void
.end method
