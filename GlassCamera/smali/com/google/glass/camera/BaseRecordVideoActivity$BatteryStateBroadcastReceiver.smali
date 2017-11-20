.class Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryStateBroadcastReceiver"
.end annotation


# instance fields
.field private final batteryLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 1129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 1126
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "batteryStateReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->batteryLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 1130
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "x1"    # Lcom/google/glass/camera/BaseRecordVideoActivity$1;

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->batteryLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getBatteryState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    .line 1135
    .local v0, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-nez v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->show()V

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->hide()V

    goto :goto_0
.end method
