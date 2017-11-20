.class Lcom/google/glass/companion/UuidFetcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/UuidFetcher;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/UuidFetcher;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 37
    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    invoke-static {v0}, Lcom/google/glass/companion/UuidFetcher;->access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 40
    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/google/glass/companion/UuidFetcher;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "looking for addresses %s but got null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    invoke-static {v4}, Lcom/google/glass/companion/UuidFetcher;->access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    new-instance v2, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v2, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/UuidFetcher;->onUuidReceived(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method
