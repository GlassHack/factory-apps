.class public final Lcom/google/android/gms/fitness/h/e;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/h/e;->c:Ljava/util/concurrent/locks/Condition;

    .line 66
    iput v1, p0, Lcom/google/android/gms/fitness/h/e;->d:I

    .line 68
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/h/e;->e:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/fitness/h/e;->a:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/h/e;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/h/e;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/e;->isShutdown()Z

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

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/fitness/h/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/h/e;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/h/e;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/h/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/h/e;->d:I

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/e;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5

    .prologue
    .line 115
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 119
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/e;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    .line 122
    :goto_1
    return v0

    .line 121
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/h/e;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/h/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/h/f;-><init>(Lcom/google/android/gms/fitness/h/e;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public final isShutdown()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/h/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/h/e;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/h/e;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/h/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/e;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/e;->shutdown()V

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
