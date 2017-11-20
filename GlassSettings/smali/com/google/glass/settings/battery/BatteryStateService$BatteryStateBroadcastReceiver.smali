.class Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BatteryStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/battery/BatteryStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/battery/BatteryStateService;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/battery/BatteryStateService;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/battery/BatteryStateService;

    .line 63
    invoke-static {}, Lcom/google/glass/settings/battery/BatteryStateService;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/battery/BatteryStateService;Lcom/google/glass/settings/battery/BatteryStateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/battery/BatteryStateService;
    .param p2, "x1"    # Lcom/google/glass/settings/battery/BatteryStateService$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/settings/battery/BatteryStateService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/settings/battery/BatteryStateService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v1, "low"

    .line 84
    .local v1, "userEventAction":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 85
    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;-><init>(Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    .end local v1    # "userEventAction":Ljava/lang/String;
    :goto_1
    return-void

    .line 73
    :cond_0
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v1, "ok"

    .restart local v1    # "userEventAction":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v1    # "userEventAction":Ljava/lang/String;
    :cond_1
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string v1, "plugged"

    .restart local v1    # "userEventAction":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v1    # "userEventAction":Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const-string v1, "unplugged"

    .restart local v1    # "userEventAction":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v1    # "userEventAction":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unknown action received: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
