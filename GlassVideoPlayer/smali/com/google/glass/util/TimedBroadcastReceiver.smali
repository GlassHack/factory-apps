.class public abstract Lcom/google/glass/util/TimedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static final ON_RECEIVE_SLOW_MILLIS:J = 0x64L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method createTimingEventTuple(Landroid/content/Intent;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    const-string v0, "c"

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 44
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 41
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/glass/util/TimedBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 70
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/glass/util/TimedBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/TimedBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 29
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    .line 32
    sub-long v0, v3, v1

    .line 33
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 34
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->TIMED_BROADCAST_RECEIVER:Lcom/google/glass/userevent/UserEventAction;

    .line 35
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/glass/util/TimedBroadcastReceiver;->createTimingEventTuple(Landroid/content/Intent;J)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/glass/util/TimedBroadcastReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method
