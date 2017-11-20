.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BluetoothPairingConfirmationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SimpleDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    new-instance v1, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;

    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)V

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$002(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;Lcom/google/glass/widget/SimpleDialog;)Lcom/google/glass/widget/SimpleDialog;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-static {v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SimpleDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->currentDialog:Landroid/app/Dialog;

    .line 39
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SimpleDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SimpleDialog;->show()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->finish()V

    .line 46
    return-void
.end method
