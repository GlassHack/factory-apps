.class abstract Lcom/google/c/j/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 65
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 66
    if-lez v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/c/a/ah;->a(Z)V

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    new-instance v14, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 81
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 84
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    invoke-virtual {v14, v2}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v4, -0x1

    .line 86
    const/4 v2, 0x1

    move v10, v5

    move-wide/from16 v12, p3

    move v5, v2

    .line 89
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v4

    .line 90
    if-nez v4, :cond_a

    .line 91
    if-lez v10, :cond_2

    .line 92
    add-int/lit8 v8, v10, -0x1

    .line 93
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    invoke-virtual {v14, v2}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    add-int/lit8 v2, v5, 0x1

    move v5, v8

    move-wide v8, v12

    .line 109
    :goto_3
    if-eqz v4, :cond_5

    .line 110
    add-int/lit8 v2, v2, -0x1

    .line 112
    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 126
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 127
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 66
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 95
    :cond_2
    if-eqz v5, :cond_6

    .line 96
    if-eqz p2, :cond_4

    .line 98
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v12, v13, v2}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 99
    if-nez v2, :cond_3

    .line 100
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 127
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    .line 102
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 103
    sub-long v6, v8, v6

    sub-long v6, v12, v6

    move-object v4, v2

    move v2, v5

    move v5, v10

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {v14}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v2

    move-object v4, v2

    move-wide v8, v12

    move v2, v5

    move v5, v10

    goto :goto_3

    .line 113
    :catch_0
    move-exception v3

    move v10, v5

    move-wide v12, v8

    move v5, v2

    .line 117
    goto/16 :goto_2

    .line 115
    :catch_1
    move-exception v4

    .line 116
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    :cond_5
    move v10, v5

    move-wide v12, v8

    move v5, v2

    .line 119
    goto/16 :goto_2

    .line 121
    :cond_6
    if-nez v3, :cond_7

    .line 122
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    :cond_7
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :cond_8
    throw v3

    :cond_9
    return-object v3

    :cond_a
    move v2, v5

    move-wide v8, v12

    move v5, v10

    goto/16 :goto_3
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 156
    invoke-static {v0}, Lcom/google/c/j/a/w;->a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/w;

    move-result-object v0

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/c/j/a/d;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 174
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 160
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 161
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 163
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    goto :goto_2

    .line 175
    :cond_3
    throw v1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 172
    :cond_4
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 10

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 191
    invoke-static {v0}, Lcom/google/c/j/a/w;->a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/w;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 194
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 198
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 199
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/d;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 202
    sub-long v2, v0, v2

    sub-long/2addr v4, v2

    .line 204
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_4

    .line 229
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_3
    move-object v0, v6

    .line 232
    :goto_4
    return-object v0

    :cond_4
    move-wide v2, v0

    .line 207
    goto :goto_2

    .line 209
    :cond_5
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 210
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_b

    .line 211
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gtz v1, :cond_7

    .line 229
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_6
    move-object v0, v6

    .line 232
    goto :goto_4

    .line 215
    :cond_7
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :goto_7
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 222
    sub-long v2, v0, v2

    sub-long v2, v4, v2

    :goto_8
    move-wide v4, v2

    move-wide v2, v0

    .line 225
    goto :goto_5

    .line 219
    :catch_0
    move-exception v0

    .line 229
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9

    :cond_8
    move-object v0, v6

    .line 232
    goto :goto_4

    :cond_9
    move-object v0, v6

    .line 229
    goto :goto_4

    .line 232
    :cond_a
    throw v1

    .line 220
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_b
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_8
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/c/j/a/d;->a(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/c/j/a/d;->a(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/c/j/a/w;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/c/j/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/d;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/google/c/j/a/w;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/c/j/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/d;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Lcom/google/c/j/a/w;->a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/d;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
