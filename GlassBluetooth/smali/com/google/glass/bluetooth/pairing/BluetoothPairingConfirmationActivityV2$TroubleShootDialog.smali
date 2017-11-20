.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;
.super Lcom/google/glass/widget/SimpleDialog;
.source "BluetoothPairingConfirmationActivityV2.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TroubleShootDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .line 125
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SimpleDialog;-><init>(Landroid/content/Context;)V

    .line 126
    sget v0, Lcom/google/glass/bluetooth/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isIOSDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/google/glass/bluetooth/R$string;->iphone_troubleshoot:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-void

    .line 126
    :cond_0
    sget v1, Lcom/google/glass/bluetooth/R$string;->android_troubleshoot:I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->finish()V

    .line 144
    invoke-super {p0}, Lcom/google/glass/widget/SimpleDialog;->dismiss()V

    .line 145
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/google/glass/bluetooth/R$layout;->troubleshoot_dialog:I

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->finish()V

    .line 138
    invoke-super {p0}, Lcom/google/glass/widget/SimpleDialog;->onConfirm()Z

    move-result v0

    return v0
.end method
