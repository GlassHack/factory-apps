.class Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffBroadcastReceiver"
.end annotation


# instance fields
.field private lastScreenOnTime:J

.field private final screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 3

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 546
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 543
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->lastScreenOnTime:J

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "x1"    # Lcom/google/glass/home/HomeApplication$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Received intent: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 559
    .local v0, "clock":Lcom/google/glass/time/Clock;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->lastScreenOnTime:J

    .line 562
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v3}, Lcom/google/glass/home/HomeApplication;->access$1200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    iget-wide v3, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->lastScreenOnTime:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 567
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->lastScreenOnTime:J

    sub-long v1, v3, v5

    .line 568
    .local v1, "screenOnDuration":J
    iput-wide v7, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->lastScreenOnTime:J

    .line 569
    iget-object v3, p0, Lcom/google/glass/home/HomeApplication$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v3}, Lcom/google/glass/home/HomeApplication;->access$1300(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method
