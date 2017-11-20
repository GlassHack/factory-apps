.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final intentFilter:Landroid/content/IntentFilter;

.field private final isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final permission:Ljava/lang/String;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->createIntentFilter(Ljava/lang/Iterable;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    const-string v0, "null IntentFilter"

    invoke-static {p2, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 76
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/glass/util/ArrayUtils;->iterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/Iterable;)V

    .line 58
    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 7

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Register/unregister not invoked from consistent thread. First thread: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    .line 231
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createIntentFilter(Ljava/lang/Iterable;)Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 251
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring %s because unregister is pending."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/util/TimedBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Not registering receiver, because it is already registered."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 104
    new-instance v1, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v1}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    :goto_1
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 113
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Registered receiver, time: %sms, UI thread: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v8

    .line 113
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    .line 110
    invoke-interface {p1, p0, v2, v3, v0}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 127
    return-void
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$1;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 152
    return-void
.end method

.method public unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 161
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not unregistering receiver, because it is not registered."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    .line 171
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unregistered receiver, time: %sms, UI thread: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    .line 180
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 193
    return-void
.end method

.method public unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$2;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
