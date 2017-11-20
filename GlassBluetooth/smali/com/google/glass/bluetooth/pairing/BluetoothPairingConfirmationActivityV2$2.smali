.class Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;
.super Ljava/lang/Object;
.source "BluetoothPairingConfirmationActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->updateUi()V
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
    .line 74
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$102(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 78
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$200(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 79
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->access$300(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;->this$0:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->startPairingSequence()V

    .line 81
    return-void
.end method
