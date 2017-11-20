.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 223
    :cond_0
    return-void
.end method
