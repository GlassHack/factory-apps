.class public Lcom/google/glass/app/TimedInstrumentation;
.super Landroid/app/Instrumentation;
.source "SourceFile"


# static fields
.field private static instance:Lcom/google/glass/app/TimedInstrumentation;


# instance fields
.field private stopwatch:Lcom/google/glass/time/Stopwatch;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 19
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 29
    sput-object p0, Lcom/google/glass/app/TimedInstrumentation;->instance:Lcom/google/glass/app/TimedInstrumentation;

    .line 30
    return-void
.end method

.method public static hasStarted()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/app/TimedInstrumentation;->instance:Lcom/google/glass/app/TimedInstrumentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 89
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 93
    iget-object v2, p0, Lcom/google/glass/app/TimedInstrumentation;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/TimedInstrumentation;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/google/glass/app/TimedInstrumentation;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_ACTIVITY:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "c"

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "m"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const-string v8, "t"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 97
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v2, v3, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 40
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 41
    const-string v0, "create"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 82
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 83
    const-string v0, "destroy"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 69
    const-string v0, "pause"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 55
    const-string v0, "restart"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 62
    const-string v0, "resume"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 48
    const-string v0, "start"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 76
    const-string v0, "stop"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/TimedInstrumentation;->logMethodTiming(Landroid/app/Activity;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected setStopwatchForTest(Lcom/google/glass/time/Stopwatch;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 107
    iput-object p1, p0, Lcom/google/glass/app/TimedInstrumentation;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 108
    return-void
.end method

.method protected setUserEventHelperForTest(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 113
    iput-object p1, p0, Lcom/google/glass/app/TimedInstrumentation;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 114
    return-void
.end method
