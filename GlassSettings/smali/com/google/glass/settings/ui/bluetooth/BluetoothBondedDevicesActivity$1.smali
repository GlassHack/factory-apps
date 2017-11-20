.class Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BluetoothBondedDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->showForgettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->access$102(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Z)Z

    .line 188
    return-void
.end method
