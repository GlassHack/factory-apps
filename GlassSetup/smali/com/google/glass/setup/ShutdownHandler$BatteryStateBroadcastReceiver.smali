.class Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ShutdownHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/ShutdownHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/ShutdownHandler;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/ShutdownHandler;)V
    .locals 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/ShutdownHandler;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/ShutdownHandler;Lcom/google/glass/setup/ShutdownHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/ShutdownHandler;
    .param p2, "x1"    # Lcom/google/glass/setup/ShutdownHandler$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/setup/ShutdownHandler;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/google/glass/setup/ShutdownHandler;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Intent received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/ShutdownHandler;

    invoke-static {v1}, Lcom/google/glass/setup/ShutdownHandler;->access$100(Lcom/google/glass/setup/ShutdownHandler;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    .line 176
    .local v0, "level":I
    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/ShutdownHandler;

    invoke-virtual {v1}, Lcom/google/glass/setup/ShutdownHandler;->isPoweredAndDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/ShutdownHandler;

    invoke-static {v1}, Lcom/google/glass/setup/ShutdownHandler;->access$200(Lcom/google/glass/setup/ShutdownHandler;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/setup/ShutdownHandler;

    invoke-static {v1, v0}, Lcom/google/glass/setup/ShutdownHandler;->access$300(Lcom/google/glass/setup/ShutdownHandler;I)V

    goto :goto_0
.end method
