.class Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/tethering/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/tethering/Tethering;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/tethering/Tethering;)V
    .locals 3

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/tethering/Tethering;Lcom/google/glass/bluetooth/tethering/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/tethering/Tethering;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/tethering/Tethering$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;-><init>(Lcom/google/glass/bluetooth/tethering/Tethering;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 193
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-static {v2}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$100(Lcom/google/glass/bluetooth/tethering/Tethering;)Lcom/google/glass/bluetooth/GlassBluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 194
    .local v0, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-static {v2}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$200(Lcom/google/glass/bluetooth/tethering/Tethering;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v1, 0x0

    .line 199
    .local v1, "disconnected":I
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-static {v2}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$300(Lcom/google/glass/bluetooth/tethering/Tethering;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-static {v2}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$200(Lcom/google/glass/bluetooth/tethering/Tethering;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/Tethering;

    invoke-static {v2, v0}, Lcom/google/glass/bluetooth/tethering/Tethering;->access$400(Lcom/google/glass/bluetooth/tethering/Tethering;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method
