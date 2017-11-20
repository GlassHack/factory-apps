.class public final Lcom/google/android/g/a/f;
.super Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/google/android/g/a/f;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/g/a/f;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method protected final getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 17

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    .line 134
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 138
    :cond_0
    const/4 v6, 0x0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/g/a/f;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v10

    .line 144
    const/4 v5, 0x0

    move-object v7, v5

    move-object v5, v6

    .line 146
    :goto_0
    if-nez v5, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/g/a/f;->isShutDown:Z

    if-eqz v5, :cond_2

    .line 149
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Connection pool shut down."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    sub-long v10, v6, v8

    const-wide/16 v12, 0xa

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    .line 230
    const-string v5, "GetEntryBlocking() took %s ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v5, v10}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_1
    throw v4

    .line 165
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/google/android/g/a/f;->getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    .line 166
    if-nez v5, :cond_7

    .line 167
    const-string v6, "Constructed new connection to route=[%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v6, v11}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v10}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    .line 181
    :goto_1
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/g/a/f;->numConnections:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/g/a/f;->maxTotalConnections:I

    if-ge v11, v12, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/google/android/g/a/f;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    goto :goto_0

    .line 173
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 184
    :cond_4
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/g/a/f;->freeConnections:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/g/a/f;->deleteLeastUsedEntry()V

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/google/android/g/a/f;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 196
    :cond_5
    if-nez v7, :cond_9

    .line 197
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/google/android/g/a/f;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v6

    .line 199
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_2
    :try_start_2
    invoke-virtual {v10, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/g/a/f;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v6, v4}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 213
    :try_start_3
    invoke-virtual {v10, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/g/a/f;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v11, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 218
    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-gtz v7, :cond_6

    .line 220
    new-instance v4, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v5, "Timeout waiting for connection"

    invoke-direct {v4, v5}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :catchall_1
    move-exception v4

    invoke-virtual {v10, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v5, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    move-object v7, v6

    .line 224
    goto/16 :goto_0

    :cond_7
    move-object v4, v5

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/a/f;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    sub-long v10, v6, v8

    const-wide/16 v12, 0xa

    cmp-long v5, v10, v12

    if-lez v5, :cond_8

    .line 230
    const-string v5, "GetEntryBlocking() took %s ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v5, v10}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_8
    return-object v4

    :cond_9
    move-object v6, v7

    goto :goto_2
.end method

.method public final requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 108
    new-instance v1, Lcom/google/android/g/a/g;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/g/a/g;-><init>(Lcom/google/android/g/a/f;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method
