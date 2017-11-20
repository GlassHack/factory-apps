.class public abstract Lcom/google/glass/util/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private volatile bindThread:Ljava/lang/Thread;

.field private final component:Landroid/content/ComponentName;

.field private final isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final runnableWhenConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/SafeServiceConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/SafeServiceConnection;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method private declared-synchronized checkThread()V
    .locals 6

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 256
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 257
    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-eq v0, v2, :cond_0

    .line 260
    const-string v2, "Bind/unbind not invoked from consistent thread. First thread: %s, current thread: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 261
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 260
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "currentThread":Ljava/lang/Thread;
    .end local v1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 266
    .restart local v0    # "currentThread":Ljava/lang/Thread;
    .restart local v1    # "message":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;Z)Lcom/google/glass/util/SafeServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public bind(Landroid/content/Context;Z)Lcom/google/glass/util/SafeServiceConnection;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "throwExceptionOnFailure"    # Z

    .prologue
    .line 122
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->createBindIntent()Landroid/content/Intent;

    move-result-object v4

    .line 129
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v5, 0x0

    .line 131
    .local v5, "successful":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 132
    .local v2, "before":J
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v4, p0, v7}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "after":J
    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Binding to service, time: %sms, UI thread: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v0, v2

    .line 137
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 136
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "successful":Z
    :cond_0
    :goto_0
    return-object p0

    .line 139
    .restart local v0    # "after":J
    .restart local v2    # "before":J
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "successful":Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Binding to service failed, time: %sms, UI thread: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v0, v2

    .line 140
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 139
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 145
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Could not connect to service: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "successful":Z
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "We have already requested binding to this service."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)V

    .line 177
    return-void
.end method

.method public bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "throwExceptionOnFailure"    # Z

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/util/SafeServiceConnection$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/glass/util/SafeServiceConnection$1;-><init>(Lcom/google/glass/util/SafeServiceConnection;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method protected createBindIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
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
    .line 162
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public isBindCalled()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Connected to service"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Expected:%s \nGot:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 60
    .local v1, "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 61
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 63
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 61
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 65
    .restart local v1    # "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_3
    return-void
.end method

.method public abstract onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 72
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 73
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 86
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V

    .line 89
    :cond_1
    return-void
.end method

.method public abstract onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
.end method

.method public runWhenConnected(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->runnableWhenConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStateForTest(ZZ)V
    .locals 1
    .param p1, "isBindCalled"    # Z
    .param p2, "isConnected"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 276
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 277
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    return-void
.end method

.method public unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 195
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 199
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 202
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Unbinding from service."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 206
    .local v2, "before":J
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v6

    invoke-virtual {v6, p1, p0}, Lcom/google/glass/util/IntentSender;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "after":J
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Unbound from service, time: %sms, UI thread: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v0, v2

    .line 209
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 208
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "after":J
    .end local v2    # "before":J
    :goto_0
    const/4 v5, 0x0

    .line 216
    .local v5, "isError":Z
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v12}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 230
    .end local v5    # "isError":Z
    :goto_1
    return-object p0

    .line 210
    :catch_0
    move-exception v4

    .line 211
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Was already unbound."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "isError":Z
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/util/SafeServiceConnection$2;

    invoke-direct {v7, p0}, Lcom/google/glass/util/SafeServiceConnection$2;-><init>(Lcom/google/glass/util/SafeServiceConnection;)V

    invoke-virtual {v6, v7}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 227
    .end local v5    # "isError":Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "We have already requested unbind from this service."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
