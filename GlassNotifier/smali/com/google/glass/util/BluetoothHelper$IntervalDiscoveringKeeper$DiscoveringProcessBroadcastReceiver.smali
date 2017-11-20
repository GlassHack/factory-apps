.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveringProcessBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;


# direct methods
.method private constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V
    .locals 3

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;Lcom/google/glass/util/BluetoothHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
    .param p2, "x1"    # Lcom/google/glass/util/BluetoothHelper$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "receive %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$300(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$300(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;)V

    const-wide/32 v4, 0xe290

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
