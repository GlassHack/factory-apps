.class Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HidProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/input/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/input/HidProfile;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/input/HidProfile;)V
    .locals 3

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/input/HidProfile;Lcom/google/glass/bluetooth/input/HidProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/input/HidProfile;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/input/HidProfile$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/input/HidProfile;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/google/glass/bluetooth/input/HidProfile;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/bluetooth/input/HidProfile;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Got action: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v3, 0x0

    .line 187
    .local v3, "shouldRegisterService":Z
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SCREEN_ON"

    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-static {v4}, Lcom/google/glass/bluetooth/input/HidProfile;->access$200(Lcom/google/glass/bluetooth/input/HidProfile;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 190
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 192
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-static {v5, v1}, Lcom/google/glass/bluetooth/input/HidProfile;->access$300(Lcom/google/glass/bluetooth/input/HidProfile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const/4 v3, 0x1

    .line 199
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 200
    iget-object v4, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-static {v4}, Lcom/google/glass/bluetooth/input/HidProfile;->access$400(Lcom/google/glass/bluetooth/input/HidProfile;)V

    .line 201
    iget-object v4, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-static {v4}, Lcom/google/glass/bluetooth/input/HidProfile;->access$500(Lcom/google/glass/bluetooth/input/HidProfile;)Lcom/google/glass/bluetooth/GlassBluetoothService;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-virtual {v4, v5}, Lcom/google/glass/bluetooth/GlassBluetoothService;->registerTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_3
    iget-object v4, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-static {v4}, Lcom/google/glass/bluetooth/input/HidProfile;->access$500(Lcom/google/glass/bluetooth/input/HidProfile;)Lcom/google/glass/bluetooth/GlassBluetoothService;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/input/HidProfile;

    invoke-virtual {v4, v5}, Lcom/google/glass/bluetooth/GlassBluetoothService;->unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    goto :goto_0
.end method
