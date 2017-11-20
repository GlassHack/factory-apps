.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;
.super Ljava/lang/Object;
.source "InitiateBluetoothPairingActivity.java"

# interfaces
.implements Lcom/google/glass/widget/MessageDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;->this$2:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissed()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;->this$2:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$300(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)V

    .line 248
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;->this$2:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->finish()V

    .line 243
    return-void
.end method

.method public onDoneMessageShown()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method
