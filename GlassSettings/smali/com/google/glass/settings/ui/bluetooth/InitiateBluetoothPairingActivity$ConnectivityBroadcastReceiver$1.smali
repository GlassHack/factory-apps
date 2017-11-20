.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "InitiateBluetoothPairingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;

    iget-object v2, v2, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v2}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 235
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->hotspot_connected:I

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_150:I

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$ConnectivityBroadcastReceiver$1;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 265
    return-void
.end method
