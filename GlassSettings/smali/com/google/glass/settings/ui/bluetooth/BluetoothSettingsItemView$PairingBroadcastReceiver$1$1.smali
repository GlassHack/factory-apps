.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;
.super Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$toStringValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;
    .param p2, "arg0"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;->this$2:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1;

    iput-object p3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;->val$toStringValue:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$PairingBroadcastReceiver$1$1;->val$toStringValue:Ljava/lang/String;

    return-object v0
.end method
