.class public final Lcom/google/c/j/a/at;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/c/j/a/as;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/c/j/a/aq;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/c/j/a/as;->a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/aq;

    move-result-object v0

    new-instance v1, Lcom/google/c/j/a/au;

    invoke-direct {v1, p2, v0}, Lcom/google/c/j/a/au;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/c/j/a/aq;)V

    invoke-static {}, Lcom/google/c/j/a/at;->a()Lcom/google/c/j/a/as;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/c/j/a/aq;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static a()Lcom/google/c/j/a/as;
    .locals 2

    new-instance v0, Lcom/google/c/j/a/av;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/c/j/a/av;-><init>(B)V

    return-object v0
.end method

.method static a(Lcom/google/c/j/a/as;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 19

    invoke-static/range {p0 .. p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/c/a/cj;->a(Z)V

    invoke-static {v3}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v13}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/google/c/j/a/at;->a(Lcom/google/c/j/a/as;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/c/j/a/aq;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x1

    const/4 v2, 0x1

    move v3, v5

    move-wide/from16 v10, p3

    move v5, v2

    :goto_2
    invoke-interface {v13}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    if-nez v2, :cond_a

    if-lez v3, :cond_2

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13}, Lcom/google/c/j/a/at;->a(Lcom/google/c/j/a/as;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/c/j/a/aq;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v5, 0x1

    move v5, v8

    move-wide v8, v10

    move-object v15, v2

    move v2, v3

    move-object v3, v15

    :goto_3
    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, -0x1

    :try_start_1
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_5

    if-eqz p2, :cond_4

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v10, v11, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v8, v6

    sub-long v6, v10, v6

    move-object v15, v2

    move v2, v5

    move v5, v3

    move-object v3, v15

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    goto :goto_3

    :cond_4
    invoke-interface {v13}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    move-wide v8, v10

    move v15, v5

    move v5, v3

    move-object v3, v2

    move v2, v15

    goto :goto_3

    :catch_0
    move-exception v4

    move v3, v5

    move-wide v10, v8

    move v5, v2

    goto/16 :goto_2

    :catch_1
    move-exception v4

    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    move-object v4, v3

    move-wide v10, v8

    move v3, v5

    move v5, v2

    goto/16 :goto_2

    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Ljava/util/concurrent/ExecutionException;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    throw v3

    :cond_8
    return-object v3

    :cond_9
    move-object v3, v4

    goto :goto_6

    :cond_a
    move-wide v8, v10

    move v15, v5

    move v5, v3

    move-object v3, v2

    move v2, v15

    goto/16 :goto_3
.end method
