.class public abstract Lcom/google/glass/util/TimedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimedBroadcastReceiver.java"


# static fields
.field static final ON_RECEIVE_SLOW_MILLIS:J = 0x64L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method createTimingEventTuple(Landroid/content/Intent;J)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "elapsedMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    const-string v0, "c"

    .line 41
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

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 40
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/glass/util/TimedBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 69
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/glass/util/TimedBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 26
    .local v0, "clock":Lcom/google/glass/time/Clock;
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 27
    .local v6, "timeBefore":J
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/TimedBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    .line 31
    .local v4, "timeAfter":J
    sub-long v2, v4, v6

    .line 32
    .local v2, "elapsedMillis":J
    const-wide/16 v8, 0x64

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 33
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TIMED_BROADCAST_RECEIVER:Lcom/google/glass/userevent/UserEventAction;

    .line 34
    invoke-virtual {p0, p2, v2, v3}, Lcom/google/glass/util/TimedBroadcastReceiver;->createTimingEventTuple(Landroid/content/Intent;J)Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual {p0, p1, v1, v8}, Lcom/google/glass/util/TimedBroadcastReceiver;->logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method
