.class public Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeScheduledThreadPoolExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    }
.end annotation


# static fields
.field private static final CORE_THREAD_KEEPALIVE_TIME_SEC:I = 0x3c

.field private static final LOGGING:Z = true

.field private static final LOG_MIN_PERIOD_MS:J = 0x1388L

.field private static final MAX_EXECUTION_TIME_MS:J = 0x493e0L

.field private static final MAX_FINISHED_TASKS_TO_LOG:I = 0x28

.field private static final MAX_QUEUED_TASKS_TO_LOG:I = 0x32

.field private static final MAX_QUEUE_TIME_MS:J = 0x3e8L

.field private static final PERIODIC_TASK:J = -0x1L

.field private static final QUEUE_BASE:I = 0x5

.field private static final QUEUE_ERROR_FACTOR:I = 0xa

.field private static final QUEUE_WARNING_FACTOR:I = 0x2

.field private static final TASK_HEADER:Ljava/lang/String; = " #  queue   exec    age  (queue, execution, age are in milliseconds)"


# instance fields
.field private final mDbgFinishedTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDbgTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastLogTimeLength:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastLogTimeQueueTime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mQueueErrorLength:I

.field private final mQueueWarningLength:I

.field private final mVerboseWarnings:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numThreads"    # I
    .param p3, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p4, "removeIdleThreads"    # Z
    .param p5, "verbose"    # Z

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    .line 289
    if-lez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 291
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    .line 292
    if-nez p5, :cond_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mVerboseWarnings:Z

    .line 294
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    .line 295
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    .line 300
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mQueueWarningLength:I

    .line 301
    mul-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mQueueErrorLength:I

    .line 303
    if-eqz p4, :cond_1

    .line 304
    const-wide/16 v2, 0x3c

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 307
    :cond_1
    return-void

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyOfMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;)",
            "Ljava/util/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 426
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TA;TB;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method private static copyOfTaskQueue(Ljava/util/Queue;)[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    .locals 1
    .param p0    # Ljava/util/Queue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            ">;)[",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 430
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    invoke-interface {p0, v0}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    goto :goto_0
.end method

.method private dbgCheckExecuteTime(Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const-wide/32 v12, 0x493e0

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 546
    .local v1, "now":J
    const/4 v3, 0x0

    .line 547
    .local v3, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    iget-object v7, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 548
    :try_start_0
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 549
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    move-object v3, v0

    .line 550
    iget-wide v8, v3, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    new-instance v8, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    invoke-direct {v8, v3}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;-><init>(Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;)V

    invoke-interface {v6, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_0
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    if-eqz v6, :cond_2

    .line 557
    :goto_0
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    const/16 v8, 0x28

    if-lt v6, v8, :cond_1

    .line 558
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 560
    :cond_1
    if-eqz v3, :cond_2

    .line 561
    :try_start_1
    iput-wide v1, v3, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mFinished:J

    .line 562
    iget-object v6, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-interface {v6, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 565
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    if-eqz v3, :cond_3

    .line 567
    iget-wide v6, v3, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mExecuted:J

    sub-long v4, v1, v6

    .line 568
    .local v4, "timeMs":J
    cmp-long v6, v4, v12

    if-lez v6, :cond_3

    .line 569
    const-string v6, "ConcurrentUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "which is over the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms threshold"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 573
    .end local v4    # "timeMs":J
    :cond_3
    return-void
.end method

.method private dbgCheckQueueLength(I)V
    .locals 14
    .param p1, "queueLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 439
    iget v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mQueueWarningLength:I

    if-le p1, v0, :cond_1

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    const/4 v2, 0x0

    .line 442
    .local v2, "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v3, 0x0

    .line 443
    .local v3, "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    const/4 v9, 0x0

    .line 445
    .local v9, "show":Z
    iget-object v5, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 447
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 448
    .local v7, "now":J
    iget-wide v10, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLastLogTimeLength:J

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    cmp-long v0, v7, v10

    if-lez v0, :cond_0

    .line 449
    const/4 v9, 0x1

    .line 450
    iput-wide v7, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLastLogTimeLength:J

    .line 451
    iget-boolean v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mVerboseWarnings:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 455
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfTaskQueue(Ljava/util/Queue;)[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    move-result-object v3

    .line 458
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    if-eqz v9, :cond_1

    .line 461
    iget v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mQueueErrorLength:I

    if-le p1, v0, :cond_2

    const/4 v6, 0x1

    .line 462
    .local v6, "err":Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queue length for executor "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " with "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getMaxThreads()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " threads is now "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Perhaps some tasks are too long, or the pool is too small."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v6, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 467
    iget-boolean v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mVerboseWarnings:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v5, v4

    .line 468
    invoke-direct/range {v0 .. v6}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgListTasks(Ljava/util/Map;Ljava/util/List;[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 473
    .end local v1    # "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    .end local v2    # "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    .end local v6    # "err":Z
    .end local v7    # "now":J
    .end local v9    # "show":Z
    :cond_1
    return-void

    .line 458
    .restart local v1    # "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    .restart local v2    # "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .restart local v3    # "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    .restart local v9    # "show":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 461
    .restart local v7    # "now":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private dbgListTasks(Ljava/util/Map;Ljava/util/List;[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 20
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "finishedTasks"    # [Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "error"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;[",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "taskInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    .local p2, "queuedTasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .local p4, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 585
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getPoolSize()I

    move-result v14

    .line 586
    .local v14, "currentThreads":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SafeScheduledThreadPoolExecutor: current threads "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", maximum threads "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getMaxThreads()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 590
    if-eqz p1, :cond_0

    .line 591
    const-string v3, "Executing tasks:"

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const v5, 0x7fffffff

    const/4 v6, 0x1

    move-object/from16 v7, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLogRunnables(Ljava/lang/String;Ljava/util/Iterator;IZLjava/util/Map;JLjava/util/List;Ljava/lang/String;Z)V

    .line 596
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 597
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 598
    .local v5, "numToShow":I
    const-string v4, "ConcurrentUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queued tasks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 599
    const-string v3, "Queued tasks:"

    .line 600
    .local v3, "title":Ljava/lang/String;
    const/16 v4, 0x32

    if-le v5, v4, :cond_1

    .line 601
    const-string v3, "First 50 queued tasks:"

    .line 602
    const/16 v5, 0x32

    .line 604
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLogRunnables(Ljava/lang/String;Ljava/util/Iterator;IZLjava/util/Map;JLjava/util/List;Ljava/lang/String;Z)V

    .line 609
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "numToShow":I
    :cond_2
    if-eqz p3, :cond_3

    .line 610
    const-string v3, "Finished tasks:"

    .line 611
    .restart local v3    # "title":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v4, v0

    if-nez v4, :cond_4

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " None"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 624
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    return-void

    .line 614
    .restart local v3    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 616
    .local v18, "prefix2":Ljava/lang/String;
    const-string v4, " #  queue   exec    age  (queue, execution, age are in milliseconds)"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 617
    const/4 v15, 0x0

    .line 618
    .local v15, "i":I
    move-object/from16 v13, p3

    .local v13, "arr$":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v19, v13, v16

    .line 619
    .local v19, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v15, v0, v4, v8, v9}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgTaskDescription(ILcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/lang/Runnable;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 620
    add-int/lit8 v15, v15, 0x1

    .line 618
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private static dbgLogRunnables(Ljava/lang/String;Ljava/util/Iterator;IZLjava/util/Map;JLjava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p2, "numToShow"    # I
    .param p3, "executing"    # Z
    .param p5, "now"    # J
    .param p8, "prefix"    # Ljava/lang/String;
    .param p9, "error"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .local p4, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    .local p7, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "prefix2":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    invoke-static {p7, p8, p9, p0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 647
    const-string v4, " #  queue   exec    age  (queue, execution, age are in milliseconds)"

    invoke-static {p7, v1, p9, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 650
    .local v2, "r":Ljava/lang/Runnable;
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    .line 651
    .local v3, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    invoke-static {v0, v3, v2, p5, p6}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgTaskDescription(ILcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/lang/Runnable;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p7, v1, p9, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v3    # "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " None"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p7, p8, p9, v4}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 656
    :cond_1
    return-void
.end method

.method private static final dbgLong2(J)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # J

    .prologue
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0xa

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const-string v0, " "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static final dbgLong6(JJ)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # J
    .param p2, "finish"    # J

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v0, -0x1

    .line 678
    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 679
    const-string v2, "repeat"

    .line 696
    :goto_0
    return-object v2

    .line 682
    :cond_0
    cmp-long v2, p0, v3

    if-nez v2, :cond_1

    .line 683
    .local v0, "d":J
    :goto_1
    cmp-long v2, v0, v3

    if-gez v2, :cond_2

    .line 684
    const-string v2, "      "

    goto :goto_0

    .line 682
    .end local v0    # "d":J
    :cond_1
    sub-long v0, p2, p0

    goto :goto_1

    .line 685
    .restart local v0    # "d":J
    :cond_2
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 687
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 689
    :cond_4
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 691
    :cond_5
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 693
    :cond_6
    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 696
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private dbgRecordExecuteTimeAndCheckQueueTime(Ljava/lang/Runnable;)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    .locals 14
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 504
    .local v7, "now":J
    const/4 v1, 0x0

    .line 505
    .local v1, "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    const/4 v2, 0x0

    .line 506
    .local v2, "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v3, 0x0

    .line 508
    .local v3, "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    iget-object v5, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    .line 510
    .local v9, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    if-nez v9, :cond_2

    .line 512
    const-string v0, "ConcurrentUtils"

    const-string v10, "Task not decorated on %s executor: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-static {v0, v10, v11}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 513
    new-instance v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    .end local v9    # "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    const-string v0, "unknown: task not decorated"

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;-><init>(Ljava/lang/String;Lcom/google/android/shared/logger/RequestLoggingContext;)V

    .line 514
    .restart local v9    # "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_0
    :goto_0
    iput-wide v7, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mExecuted:J

    .line 527
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    const-string v0, "ConcurrentUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executing: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " on \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v10}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 531
    if-eqz v1, :cond_1

    .line 532
    const-string v0, "ConcurrentUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\" was queued for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    sub-long v10, v7, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "ms before starting on  executor \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v10}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 534
    iget-boolean v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mVerboseWarnings:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v5, v4

    .line 535
    invoke-direct/range {v0 .. v6}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgListTasks(Ljava/util/Map;Ljava/util/List;[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 540
    :cond_1
    return-object v9

    .line 515
    :cond_2
    :try_start_1
    iget-wide v10, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    iget-wide v10, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLastLogTimeQueueTime:J

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    cmp-long v0, v7, v10

    if-lez v0, :cond_0

    iget-wide v10, v9, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v0, v7, v10

    if-lez v0, :cond_0

    .line 518
    iput-wide v7, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLastLogTimeQueueTime:J

    .line 519
    iget-boolean v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mVerboseWarnings:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 521
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 522
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfTaskQueue(Ljava/util/Queue;)[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    move-result-object v3

    goto/16 :goto_0

    .line 527
    .end local v9    # "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dbgRecordQueuedTime(Ljava/lang/Object;Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    new-instance v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/shared/logger/RequestLoggingContext;

    invoke-direct {v0, v2, v1}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;-><init>(Ljava/lang/String;Lcom/google/android/shared/logger/RequestLoggingContext;)V

    .line 482
    .local v0, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    invoke-interface {p2}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    .line 491
    :goto_0
    iget-object v2, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    return-void

    .line 489
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v3}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static dbgTaskDescription(ILcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/lang/Runnable;J)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "ti"    # Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "r"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "now"    # J

    .prologue
    const-wide/16 v5, 0x0

    .line 660
    if-eqz p1, :cond_2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, p0

    invoke-static {v1, v2}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLong2(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    iget-wide v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mExecuted:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mExecuted:J

    :goto_0
    invoke-static {v3, v4, v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLong6(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mExecuted:J

    iget-wide v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mFinished:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mFinished:J

    :goto_1
    invoke-static {v3, v4, v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLong6(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mFinished:J

    invoke-static {v1, v2, p3, p4}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgLong6(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_2
    return-object v0

    :cond_0
    move-wide v0, p3

    .line 661
    goto :goto_0

    :cond_1
    move-wide v0, p3

    goto :goto_1

    .line 667
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown: no task info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private static maybeThrowResultException(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 398
    instance-of v3, p1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 399
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 402
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, p0, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 403
    check-cast v1, Ljava/util/concurrent/Future;

    .line 404
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    :goto_0
    return-void

    .line 411
    .restart local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 413
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 414
    .local v2, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 409
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 384
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgCheckExecuteTime(Ljava/lang/Runnable;)V

    .line 388
    invoke-static {p1, p2}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->maybeThrowResultException(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 389
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 390
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 367
    invoke-direct {p0, p2}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgRecordExecuteTimeAndCheckQueueTime(Ljava/lang/Runnable;)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    move-result-object v1

    .line 370
    .local v1, "ti":Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 372
    .local v0, "requestLoggingContext":Lcom/google/android/shared/logger/RequestLoggingContext;
    :goto_0
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 374
    return-void

    .line 370
    .end local v0    # "requestLoggingContext":Lcom/google/android/shared/logger/RequestLoggingContext;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    const-string v0, "ConcurrentUtils"

    const-string v1, "decorateTask(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgRecordQueuedTime(Ljava/lang/Object;Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgCheckQueueLength(I)V

    .line 342
    return-object p2
.end method

.method protected decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    const-string v0, "ConcurrentUtils"

    const-string v1, "decorateTask(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgRecordQueuedTime(Ljava/lang/Object;Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgCheckQueueLength(I)V

    .line 357
    return-object p2
.end method

.method public dump(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v6, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgTasks:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 322
    .local v1, "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 323
    .local v2, "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->mDbgFinishedTasks:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->copyOfTaskQueue(Ljava/util/Queue;)[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    move-result-object v3

    .line 324
    .local v3, "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->dbgListTasks(Ljava/util/Map;Ljava/util/List;[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 328
    return-void

    .line 324
    .end local v1    # "dbgTasksCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Runnable;Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;>;"
    .end local v2    # "queuedTasksCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "dbgFinishedTasksCopy":[Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getMaxThreads()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    .line 629
    .local v0, "maxThreads":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-string v1, "unbounded"

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
