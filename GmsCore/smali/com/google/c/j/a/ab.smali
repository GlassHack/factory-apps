.class final Lcom/google/c/j/a/ab;
.super Lcom/google/c/j/a/d;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Ljava/util/concurrent/locks/Condition;

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/google/c/j/a/d;-><init>()V

    .line 234
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    .line 237
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/j/a/ab;->b:Ljava/util/concurrent/locks/Condition;

    .line 246
    iput v1, p0, Lcom/google/c/j/a/ab;->c:I

    .line 247
    iput-boolean v1, p0, Lcom/google/c/j/a/ab;->d:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/c/j/a/ab;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 341
    :try_start_0
    iget v0, p0, Lcom/google/c/j/a/ab;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/j/a/ab;->c:I

    .line 342
    invoke-virtual {p0}, Lcom/google/c/j/a/ab;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/c/j/a/ab;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 300
    iget-object v2, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 303
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/j/a/ab;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    .line 306
    :goto_1
    return v0

    .line 305
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    .line 308
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/c/j/a/ab;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/j/a/ab;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/c/j/a/ab;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/j/a/ab;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 253
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    invoke-direct {p0}, Lcom/google/c/j/a/ab;->a()V

    .line 256
    return-void

    .line 255
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/c/j/a/ab;->a()V

    throw v0
.end method

.method public final isShutdown()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    :try_start_0
    iget-boolean v0, p0, Lcom/google/c/j/a/ab;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/google/c/j/a/ab;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/c/j/a/ab;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 273
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/c/j/a/ab;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object v0, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/ab;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/c/j/a/ab;->shutdown()V

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
