.class public Lcom/google/glass/settings/ui/CheckinReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CheckinReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/CheckinReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.server.checkin.CHECKIN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.checkin.CHECKIN_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/settings/ui/CheckinReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected onCheckin(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, "timestamp":J
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 42
    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/settings/ui/CheckinReceiver$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/glass/settings/ui/CheckinReceiver$1;-><init>(Lcom/google/glass/settings/ui/CheckinReceiver;Landroid/content/Context;J)V

    invoke-interface {v2, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.server.checkin.CHECKIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.checkin.CHECKIN_COMPLETE"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/CheckinReceiver;->onCheckin(Landroid/content/Context;)V

    .line 36
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    sget-object v1, Lcom/google/glass/settings/ui/CheckinReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Device was plugged in, requesting a checkin immediately."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/CheckinReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received unknown action: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
