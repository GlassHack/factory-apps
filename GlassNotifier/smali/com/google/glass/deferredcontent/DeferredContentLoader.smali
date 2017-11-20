.class public Lcom/google/glass/deferredcontent/DeferredContentLoader;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;
    }
.end annotation


# static fields
.field private static final IO_TASK_THREAD_COUNT:I = 0xa

.field private static final NEXT_TASK_DELAY_MS:J = 0x19L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final executePendingRunnable:Ljava/lang/Runnable;

.field private inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

.field private ioTaskExecutor:Ljava/util/concurrent/Executor;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0xa

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    sget-object v2, Lcom/google/glass/deferredcontent/DeferredContentLoader;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_io"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    .line 62
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    sget-object v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_mem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/deferredcontent/DeferredContentLoader$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredContentLoader;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingTasks()V

    return-void
.end method

.method private executePendingTasks()V
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 87
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 93
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 94
    .local v1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 100
    .end local v1    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_3
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->startBestTask(Ljava/util/List;)V

    .line 111
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 210
    return-void
.end method

.method public cancel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {p0, v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public getIoTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public load(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 163
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->prepareContent()V

    .line 174
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->setTimeAddedToPendingList(J)V

    .line 182
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public load(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 150
    .local v0, "loadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0

    .line 152
    .end local v0    # "loadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_0
    return-void
.end method

.method public postLoadToUiThread(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 194
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;Lcom/google/glass/deferredcontent/LoadingTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public setInMemoryTaskExecutorForTest(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 241
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 242
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    .line 243
    .local v0, "previous":Ljava/util/concurrent/Executor;
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    .line 244
    return-object v0
.end method

.method public setIoTaskExecutorForTest(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 233
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 234
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    .line 235
    .local v0, "previous":Ljava/util/concurrent/Executor;
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    .line 236
    return-object v0
.end method

.method startBestTask(Ljava/util/List;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "pendingTasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    const/4 v1, -0x1

    .line 121
    .local v1, "bestTaskIndex":I
    const/4 v0, 0x0

    .line 122
    .local v0, "bestIsInMemoryTask":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 124
    .local v3, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    if-ltz v1, :cond_0

    .line 125
    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 126
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v0

    .line 127
    move v1, v2

    .line 122
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_2
    if-ltz v1, :cond_3

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 134
    .restart local v3    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    iget-object v4, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4}, Lcom/google/glass/deferredcontent/LoadingTask;->start(Ljava/util/concurrent/Executor;)V

    .line 139
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    .end local v3    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_3
    return-void

    .line 137
    .restart local v3    # "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_4
    iget-object v4, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4}, Lcom/google/glass/deferredcontent/LoadingTask;->start(Ljava/util/concurrent/Executor;)V

    goto :goto_1
.end method
