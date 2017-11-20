.class Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method private constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 3

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$2000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const-string v0, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 385
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 384
    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1902(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 387
    :cond_0
    return-void
.end method
