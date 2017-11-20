.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# instance fields
.field private final intentFilter:Landroid/content/IntentFilter;

.field private final isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final permission:Ljava/lang/String;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "actions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->createIntentFilter(Ljava/lang/Iterable;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    const-string v0, "null IntentFilter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 61
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/glass/util/ArrayUtils;->iterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/Iterable;)V

    .line 43
    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x58

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Register/unregister not invoked from consistent thread. First thread: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", current thread: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static createIntentFilter(Ljava/lang/Iterable;)Landroid/content/IntentFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "actions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;
    .locals 9
    .param p1, "registrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 69
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not registering receiver, because it is already registered."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 78
    new-instance v2, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v2}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    .line 80
    .local v1, "stopwatch":Lcom/google/glass/time/Stopwatch;
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-interface {p1, p0, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "stickyIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Registered receiver, time: %sms"

    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 87
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    .end local v0    # "stickyIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    .line 84
    invoke-interface {p1, p0, v2, v3, v0}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "stickyIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 9
    .param p1, "registrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .prologue
    const/4 v8, 0x0

    .line 101
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not unregistering receiver, because it is not registered."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 109
    new-instance v2, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v2}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    .line 114
    .local v1, "stopwatch":Lcom/google/glass/time/Stopwatch;
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrar;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unregistered receiver, time: %sms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 121
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
