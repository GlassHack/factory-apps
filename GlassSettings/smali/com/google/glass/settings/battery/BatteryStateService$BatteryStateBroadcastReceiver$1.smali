.class Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BatteryStateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

.field final synthetic val$userEventAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->val$userEventAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    iget-object v1, v1, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/battery/BatteryStateService;

    iget-object v2, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->val$userEventAction:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/util/BatteryUserEventUtils;->getActionData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    invoke-virtual {v1}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Reporting the following to use UserEventAction: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver$1;->this$1:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    iget-object v1, v1, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/settings/battery/BatteryStateService;

    invoke-static {v1}, Lcom/google/glass/settings/battery/BatteryStateService;->access$200(Lcom/google/glass/settings/battery/BatteryStateService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 92
    return-void
.end method
