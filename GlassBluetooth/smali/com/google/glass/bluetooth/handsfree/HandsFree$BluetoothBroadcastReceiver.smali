.class Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HandsFree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V
    .locals 3

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 488
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.CONNECT_HEADSET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.action.CONNECT_HEADSET_SCO"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;Lcom/google/glass/bluetooth/handsfree/HandsFree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/handsfree/HandsFree$1;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    const-string v0, "com.google.glass.action.CONNECT_HEADSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connect()V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v0, "com.google.glass.action.CONNECT_HEADSET_SCO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    move-result-object v0

    if-nez v0, :cond_2

    .line 499
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Cannot connect SCO socket without a ScoConnection object."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method
