.class Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V
    .locals 3

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;Lcom/google/glass/bluetooth/BluetoothAdapterState$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 86
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 90
    :cond_1
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 95
    invoke-interface {v0}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    goto :goto_0

    .line 97
    :cond_2
    if-ne v0, v2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 99
    invoke-interface {v0}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method
