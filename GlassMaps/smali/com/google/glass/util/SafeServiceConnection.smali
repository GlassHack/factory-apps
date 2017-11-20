.class public abstract Lcom/google/glass/util/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private volatile bindThread:Ljava/lang/Thread;

.field private final component:Landroid/content/ComponentName;

.field private final isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final runnableWhenConnected:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/SafeServiceConnection;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method private declared-synchronized checkThread()V
    .locals 5

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 259
    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 262
    const-string v1, "Bind/unbind not invoked from consistent thread. First thread: %s, current thread: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 263
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 262
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;Z)Lcom/google/glass/util/SafeServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public bind(Landroid/content/Context;Z)Lcom/google/glass/util/SafeServiceConnection;
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->createBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 134
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p0, v9}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 137
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Binding to service, time: %sms, UI thread: %s"

    new-array v6, v7, [Ljava/lang/Object;

    sub-long v1, v4, v1

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v9

    .line 138
    invoke-interface {v0, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-object p0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v6, "Binding to service failed, time: %sms, UI thread: %s"

    new-array v7, v7, [Ljava/lang/Object;

    sub-long v1, v4, v1

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v9

    .line 141
    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 147
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    if-eqz p2, :cond_0

    .line 149
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not connect to service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "We have already requested binding to this service."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)V

    .line 179
    return-void
.end method

.method public bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/glass/util/SafeServiceConnection$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/glass/util/SafeServiceConnection$1;-><init>(Lcom/google/glass/util/SafeServiceConnection;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method protected createBindIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public isBindCalled()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to service"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Expected:%s \nGot:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_3
    return-void
.end method

.method public abstract onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 74
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 75
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V

    .line 91
    :cond_1
    return-void
.end method

.method public abstract onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
.end method

.method public runWhenConnected(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStateForTest(ZZ)V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 278
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    return-void
.end method

.method public unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 197
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 204
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unbinding from service."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/google/glass/util/IntentSender;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Unbound from service, time: %sms, UI thread: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-long v0, v2, v0

    .line 211
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    .line 210
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v8}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 232
    :goto_1
    return-object p0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Was already unbound."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/SafeServiceConnection$2;

    invoke-direct {v1, p0}, Lcom/google/glass/util/SafeServiceConnection$2;-><init>(Lcom/google/glass/util/SafeServiceConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "We have already requested unbind from this service."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
