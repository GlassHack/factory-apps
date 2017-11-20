.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BluetoothPairingConfirmationActivity.java"


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
    .line 79
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->finish()V

    .line 83
    return-void
.end method
