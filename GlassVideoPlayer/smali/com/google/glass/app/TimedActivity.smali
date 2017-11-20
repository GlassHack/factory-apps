.class public abstract Lcom/google/glass/app/TimedActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final TIME_SLOW_MILLIS:J = 0x64L


# instance fields
.field private stopwatch:Lcom/google/glass/time/Stopwatch;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    return-void
.end method

.method private logMethodTiming(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 148
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 152
    iget-object v2, p0, Lcom/google/glass/app/TimedActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-nez v2, :cond_1

    .line 153
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/TimedActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/google/glass/app/TimedActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMED_ACTIVITY:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "c"

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "m"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string v8, "t"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 156
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v2, v3, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/glass/app/TimedActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onDestroyInternal()V

    .line 137
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected final onPause()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onPauseInternal()V

    .line 103
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected final onRestart()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onRestartInternal()V

    .line 69
    const-string v0, "restart"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onRestartInternal()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 75
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 85
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onResumeInternal()V

    .line 86
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onResumeInternal()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    return-void
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 51
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onStartInternal()V

    .line 52
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected onStartInternal()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/app/TimedActivity;->onStopInternal()V

    .line 120
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/google/glass/app/TimedActivity;->logMethodTiming(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected onStopInternal()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    return-void
.end method

.method protected setStopwatchForTest(Lcom/google/glass/time/Stopwatch;)V
    .locals 0

    .prologue
    .line 165
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 166
    iput-object p1, p0, Lcom/google/glass/app/TimedActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 167
    return-void
.end method

.method protected setUserEventHelperForTest(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 171
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 172
    iput-object p1, p0, Lcom/google/glass/app/TimedActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 173
    return-void
.end method
