.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;
.super Ljava/lang/Object;
.source "BluetoothPairingConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Bluetooth pairing timed out, exiting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->showPairingFailedDialog()V

    .line 76
    return-void
.end method
