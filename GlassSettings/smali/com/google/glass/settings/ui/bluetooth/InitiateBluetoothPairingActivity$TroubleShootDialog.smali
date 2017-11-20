.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;
.super Lcom/google/glass/widget/SimpleDialog;
.source "InitiateBluetoothPairingActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TroubleShootDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .line 281
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SimpleDialog;-><init>(Landroid/content/Context;)V

    .line 282
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finish()V

    .line 298
    invoke-super {p0}, Lcom/google/glass/widget/SimpleDialog;->dismiss()V

    .line 299
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 286
    sget v0, Lcom/google/glass/settings/ui/R$layout;->troubleshoot_dialog:I

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finish()V

    .line 292
    invoke-super {p0}, Lcom/google/glass/widget/SimpleDialog;->onConfirm()Z

    move-result v0

    return v0
.end method
