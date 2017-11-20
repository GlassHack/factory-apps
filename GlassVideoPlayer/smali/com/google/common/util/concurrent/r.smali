.class final Lcom/google/common/util/concurrent/r;
.super Lcom/google/common/util/concurrent/a;
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

    .line 266
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;-><init>()V

    .line 271
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    .line 274
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/r;->b:Ljava/util/concurrent/locks/Condition;

    .line 283
    iput v1, p0, Lcom/google/common/util/concurrent/r;->c:I

    .line 284
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/r;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/q;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/common/util/concurrent/r;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/r;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 360
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/common/util/concurrent/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/r;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    :try_start_0
    iget v0, p0, Lcom/google/common/util/concurrent/r;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/r;->c:I

    .line 373
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/r;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    return-void

    .line 377
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 331
    iget-object v2, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/r;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return v0

    .line 336
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 339
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/r;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/common/util/concurrent/r;->a()V

    .line 289
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-direct {p0}, Lcom/google/common/util/concurrent/r;->b()V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/r;->b()V

    throw v0
.end method

.method public final isShutdown()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 298
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/r;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/r;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 307
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/r;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    return-void

    .line 309
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/r;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/r;->shutdown()V

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
