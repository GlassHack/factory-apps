.class Lcom/google/glass/bluetooth/companion/PingRequester$1;
.super Landroid/os/Handler;
.source "PingRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/PingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/PingRequester;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/PingRequester;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/PingRequester;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$000(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 38
    .local v0, "deviceToPing":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 40
    invoke-static {}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Pinging device %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$200(Lcom/google/glass/bluetooth/companion/PingRequester;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$300(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/android/glass/hidden/HiddenWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/hidden/HiddenWifiManager;->getBtcCtsMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$202(Lcom/google/glass/bluetooth/companion/PingRequester;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$300(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/android/glass/hidden/HiddenWifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Z)V

    .line 47
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/PingRequester$1;->this$0:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$400(Lcom/google/glass/bluetooth/companion/PingRequester;)Lcom/google/glass/companion/UuidFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/companion/UuidFetcher;->fetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/companion/PingRequester;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Skip pinging device %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
