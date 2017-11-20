.class Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;


# direct methods
.method private constructor <init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V
    .locals 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;->this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;
    .param p2, "x1"    # Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;-><init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;->this$0:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    invoke-static {v0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->access$200(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V

    .line 114
    return-void
.end method
