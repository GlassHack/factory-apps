.class Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothInputDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V
    .locals 3

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "stateExtra":I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 187
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$600(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3, v4}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$602(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Ljava/util/Set;)Ljava/util/Set;

    .line 191
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$600(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_1
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$500(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .line 200
    .local v1, "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    invoke-interface {v1, v2, v0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;->onBluetoothInputDeviceStateChanged(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 194
    .end local v1    # "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    :cond_2
    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$600(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_3
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .line 205
    .restart local v1    # "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    iget-object v4, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v4, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$400(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    goto :goto_3

    .line 208
    .end local v1    # "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    :cond_4
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$500(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v4}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto/16 :goto_0
.end method
