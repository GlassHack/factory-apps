.class Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceWrapperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->get(Landroid/content/Intent;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    .prologue
    .line 22
    iput-object p2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 3

    .prologue
    .line 25
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;->val$intent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 25
    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider$1;->get()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    return-object v0
.end method
