.class final Lcom/google/common/util/concurrent/SerializingExecutor;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private isWorkerRunning:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private suspensions:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    .line 56
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 59
    iput v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    .line 62
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->worker:Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;

    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    return v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private startQueueWorker()V
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x1

    .line 152
    .local v0, "executionRejected":Z
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->worker:Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    const/4 v0, 0x0

    .line 155
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v2

    .line 159
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 160
    monitor-exit v2

    .line 163
    :cond_0
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 155
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 158
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v2

    .line 159
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 160
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    if-lez v0, :cond_1

    .line 80
    :cond_0
    monitor-exit v1

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor;->startQueueWorker()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public executeFirst(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 94
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    if-lez v0, :cond_1

    .line 95
    :cond_0
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor;->startQueueWorker()V

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v1

    .line 129
    :try_start_0
    iget v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    if-lez v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 130
    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    .line 131
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    :cond_0
    monitor-exit v1

    .line 137
    :goto_1
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor;->startQueueWorker()V

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;

    monitor-enter v1

    .line 112
    :try_start_0
    iget v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
