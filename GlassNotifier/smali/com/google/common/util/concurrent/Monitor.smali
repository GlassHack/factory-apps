.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 350
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 359
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 360
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Monitor;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1077
    if-eqz p2, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1080
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1083
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1084
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1088
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "nanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x1

    .line 1114
    .local v0, "firstTime":Z
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    .line 1115
    const/4 v1, 0x0

    .line 1128
    if-nez v0, :cond_1

    .line 1129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1126
    :cond_1
    :goto_0
    return v1

    .line 1117
    :cond_2
    if-eqz v0, :cond_4

    .line 1118
    if-eqz p4, :cond_3

    .line 1119
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1121
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1122
    const/4 v0, 0x0

    .line 1124
    :cond_4
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 1125
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const/4 v1, 0x1

    .line 1128
    if-nez v0, :cond_1

    .line 1129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v1

    if-nez v0, :cond_5

    .line 1129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_5
    throw v1
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1092
    if-eqz p2, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1095
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1098
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1099
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1103
    return-void

    .line 1101
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1039
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1040
    .local v0, "waiters":I
    if-nez v0, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1043
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1045
    :cond_0
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1052
    iget v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v2, v3, -0x1

    iput v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1053
    .local v2, "waiters":I
    if-nez v2, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    const/4 v1, 0x0

    .line 1056
    .local v1, "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-ne v0, p1, :cond_2

    .line 1057
    if-nez v1, :cond_1

    .line 1058
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1062
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1067
    .end local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .end local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_0
    return-void

    .line 1060
    .restart local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .restart local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_1
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_1

    .line 1055
    :cond_2
    move-object v1, v0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0
.end method

.method private static initNanoTime(J)J
    .locals 6
    .param p0, "timeoutNanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 935
    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    move-wide v0, v2

    .line 939
    :cond_0
    :goto_0
    return-wide v0

    .line 938
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 939
    .local v0, "startTime":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1017
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1020
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static remainingNanos(JJ)J
    .locals 4
    .param p0, "startTime"    # J
    .param p2, "timeoutNanos"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 955
    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    goto :goto_0
.end method

.method private signalAllWaiters()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_0

    .line 1030
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1029
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 1032
    :cond_0
    return-void
.end method

.method private signalNextWaiter()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 990
    :cond_0
    return-void

    .line 984
    :cond_1
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .locals 8
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide v4, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    const-wide/16 v2, 0x0

    .line 924
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 925
    .local v0, "timeoutNanos":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    move-wide v0, v2

    .end local v0    # "timeoutNanos":J
    :cond_0
    :goto_0
    return-wide v0

    .line 927
    .restart local v0    # "timeoutNanos":J
    :cond_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    move-wide v0, v4

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 368
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 385
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 386
    .local v8, "timeoutNanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 387
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    const/4 v3, 0x1

    .line 395
    :cond_0
    :goto_0
    return v3

    .line 390
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 392
    .local v1, "interrupted":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 393
    .local v6, "startTime":J
    move-wide v4, v8

    .line 395
    .local v4, "remainingNanos":J
    :goto_1
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 402
    if-eqz v1, :cond_0

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 398
    :try_start_2
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 399
    goto :goto_1

    .line 402
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    .end local v4    # "remainingNanos":J
    .end local v6    # "startTime":J
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v3
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 611
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 612
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 615
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 617
    const/4 v1, 0x0

    .line 619
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 621
    if-nez v1, :cond_1

    .line 622
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 619
    :cond_1
    return v1

    .line 621
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 622
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 658
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v1, p0, :cond_0

    .line 659
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 661
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 662
    const/4 v0, 0x0

    .line 667
    :cond_1
    :goto_0
    return v0

    .line 665
    :cond_2
    const/4 v0, 0x0

    .line 667
    .local v0, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 669
    if-nez v0, :cond_1

    .line 670
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 670
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v1
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 636
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 639
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 641
    const/4 v1, 0x0

    .line 643
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 645
    if-nez v1, :cond_1

    .line 646
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 643
    :cond_1
    return v1

    .line 645
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 646
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 684
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 687
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 688
    const/4 v1, 0x0

    .line 693
    :cond_1
    :goto_0
    return v1

    .line 691
    :cond_2
    const/4 v1, 0x0

    .line 693
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 695
    if-nez v1, :cond_1

    .line 696
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 696
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public enterInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 377
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 436
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 439
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 440
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_1
    const/4 v1, 0x1

    .line 449
    if-nez v1, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 453
    :cond_2
    return-void

    .line 449
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_3
    throw v3
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 489
    .local v6, "timeoutNanos":J
    iget-object v8, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v8, p0, :cond_0

    .line 490
    new-instance v8, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v8}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v8

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 493
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 494
    .local v1, "reentrant":Z
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "startTime":J
    iget-boolean v8, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v8, :cond_6

    .line 500
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 501
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 503
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 513
    :cond_2
    const/4 v2, 0x0

    .line 514
    .local v2, "satisfied":Z
    const/4 v3, 0x1

    .line 517
    .local v3, "threw":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_7

    .line 518
    .end local v6    # "timeoutNanos":J
    :goto_0
    invoke-direct {p0, p1, v6, v7, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    if-eqz v8, :cond_8

    :cond_3
    const/4 v2, 0x1

    .line 522
    :goto_1
    const/4 v3, 0x0

    .line 525
    if-nez v2, :cond_5

    .line 528
    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 529
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    .end local v2    # "satisfied":Z
    .end local v3    # "threw":Z
    :cond_5
    :goto_2
    return v2

    .line 507
    .restart local v6    # "timeoutNanos":J
    :cond_6
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v4

    .line 508
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 509
    const/4 v2, 0x0

    goto :goto_2

    .line 520
    .restart local v2    # "satisfied":Z
    .restart local v3    # "threw":Z
    :cond_7
    :try_start_2
    invoke-static {v4, v5, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    goto :goto_0

    .line 518
    .end local v6    # "timeoutNanos":J
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 532
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 525
    :catchall_1
    move-exception v8

    if-nez v2, :cond_a

    .line 528
    if-eqz v3, :cond_9

    if-nez v1, :cond_9

    .line 529
    :try_start_3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 532
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a
    throw v8

    :catchall_2
    move-exception v8

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 459
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 460
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 463
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 464
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_1
    const/4 v1, 0x1

    .line 473
    if-nez v1, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 477
    :cond_2
    return-void

    .line 473
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_3
    throw v3
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 14
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 545
    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    .line 546
    .local v10, "timeoutNanos":J
    iget-object v7, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v7, p0, :cond_0

    .line 547
    new-instance v7, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v7}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v7

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 550
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const-wide/16 v8, 0x0

    .line 551
    .local v8, "startTime":J
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    .line 552
    .local v6, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 554
    .local v1, "interrupted":Z
    :try_start_0
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-nez v7, :cond_2

    .line 555
    :cond_1
    invoke-static {v10, v11}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 556
    move-wide v4, v10

    .line 558
    .local v4, "remainingNanos":J
    :goto_0
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    .end local v4    # "remainingNanos":J
    :cond_2
    const/4 v3, 0x0

    .line 574
    .local v3, "satisfied":Z
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_6

    .line 575
    const/4 v3, 0x1

    .line 593
    :goto_2
    if-nez v3, :cond_3

    .line 594
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    :cond_3
    if-eqz v1, :cond_4

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 586
    .end local v3    # "satisfied":Z
    :cond_4
    :goto_3
    return v3

    .line 561
    .restart local v4    # "remainingNanos":J
    :cond_5
    const/4 v3, 0x0

    .line 598
    if-eqz v1, :cond_4

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 565
    :try_start_4
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v4

    .line 566
    goto :goto_0

    .line 578
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    .end local v4    # "remainingNanos":J
    .restart local v3    # "satisfied":Z
    :cond_6
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-nez v7, :cond_7

    .line 579
    :try_start_5
    invoke-static {v10, v11}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v8

    .line 580
    move-wide v4, v10

    .line 584
    .restart local v4    # "remainingNanos":J
    :goto_4
    invoke-direct {p0, p1, v4, v5, v6}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v3

    goto :goto_2

    .line 582
    .end local v4    # "remainingNanos":J
    :cond_7
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    .restart local v4    # "remainingNanos":J
    goto :goto_4

    .line 587
    .end local v4    # "remainingNanos":J
    :catch_1
    move-exception v0

    .line 588
    .restart local v0    # "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 589
    const/4 v6, 0x0

    .line 590
    goto :goto_1

    .line 593
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-nez v3, :cond_8

    .line 594
    :try_start_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 598
    .end local v3    # "satisfied":Z
    :catchall_1
    move-exception v7

    if-eqz v1, :cond_9

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v7
.end method

.method public getOccupiedDepth()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 907
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 908
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 912
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 912
    return v0

    .line 914
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 897
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFair()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 821
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 827
    return-void

    .line 825
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public tryEnter()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 710
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 711
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 714
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_2

    .line 715
    const/4 v1, 0x0

    .line 720
    :cond_1
    :goto_0
    return v1

    .line 718
    :cond_2
    const/4 v1, 0x0

    .line 720
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 722
    if-nez v1, :cond_1

    .line 723
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 723
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 735
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 736
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 735
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 739
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 741
    :cond_2
    return-void
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 764
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 765
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v2, p0, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 766
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 765
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    :goto_1
    return v3

    .line 771
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 772
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 774
    :cond_3
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v3

    goto :goto_1
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    const/4 v1, 0x1

    .line 748
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 749
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 748
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 752
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 754
    :cond_2
    return-void
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 784
    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 785
    .local v8, "timeoutNanos":J
    iget-object v5, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v5, p0, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-object v10, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v10

    and-int/2addr v5, v10

    if-nez v5, :cond_1

    .line 786
    new-instance v5, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v5}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v5

    .line 785
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 789
    const/4 v5, 0x1

    .line 801
    :cond_2
    :goto_1
    return v5

    .line 791
    :cond_3
    const/4 v4, 0x1

    .line 792
    .local v4, "signalBeforeWaiting":Z
    invoke-static {v8, v9}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v6

    .line 793
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 795
    .local v1, "interrupted":Z
    move-wide v2, v8

    .line 797
    .local v2, "remainingNanos":J
    :goto_2
    :try_start_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 808
    if-eqz v1, :cond_2

    .line 809
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 800
    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 801
    const/4 v5, 0x1

    .line 808
    if-eqz v1, :cond_2

    .line 809
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 803
    :cond_4
    const/4 v4, 0x0

    .line 804
    :try_start_2
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 805
    goto :goto_2

    .line 808
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 809
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v5
.end method
