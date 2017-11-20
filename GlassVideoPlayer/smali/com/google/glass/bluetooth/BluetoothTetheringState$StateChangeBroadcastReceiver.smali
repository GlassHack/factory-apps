.class Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V
    .locals 3

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;Lcom/google/glass/bluetooth/BluetoothTetheringState$1;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 158
    :cond_1
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    move v1, v0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 168
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 169
    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_0
.end method
