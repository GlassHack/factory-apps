.class Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BluetoothBondedDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->showForgettenDialog(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    iput-object p2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->access$200(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 203
    :cond_0
    return-void
.end method
