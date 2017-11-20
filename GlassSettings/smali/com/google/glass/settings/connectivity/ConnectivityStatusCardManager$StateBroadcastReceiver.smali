.class Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ConnectivityStatusCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 389
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$800()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p2, "x1"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Got action: %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const-string v4, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 397
    invoke-static {v3, v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$1002(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 404
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-static {v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$1200(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    .line 405
    return-void

    .line 399
    :cond_1
    const-string v4, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    const-string v4, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 402
    .local v1, "state":I
    iget-object v4, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-static {v4, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$1102(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Z)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
