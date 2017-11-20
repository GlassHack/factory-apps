.class Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothAdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V
    .locals 3

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;Lcom/google/glass/bluetooth/BluetoothAdapterState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/BluetoothAdapterState;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/BluetoothAdapterState$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xa

    .line 85
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 89
    :cond_1
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "adapterState":I
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 94
    .local v1, "l":Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    goto :goto_0

    .line 96
    .end local v1    # "l":Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    :cond_2
    if-ne v0, v4, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 98
    .restart local v1    # "l":Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method
