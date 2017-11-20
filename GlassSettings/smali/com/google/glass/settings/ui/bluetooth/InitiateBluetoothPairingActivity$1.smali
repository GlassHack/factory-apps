.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "InitiateBluetoothPairingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-direct {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$TroubleShootDialog;->show()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finish()V

    .line 122
    return-void
.end method
