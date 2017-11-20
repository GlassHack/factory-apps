.class public Lcom/google/glass/deferredcontent/DeferredContentLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IO_TASK_THREAD_COUNT:I = 0xa

.field private static final NEXT_TASK_DELAY_MS:J = 0x19L

.field public static final SCROLL_ITEMS_PER_SECOND_FAST:F = 4.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final executePendingRunnable:Ljava/lang/Runnable;

.field private inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

.field private ioTaskExecutor:Ljava/util/concurrent/Executor;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final pendingTasks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
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

    .line 67
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

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingTasks()V

    return-void
.end method

.method private executePendingTasks()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x19

    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 95
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 102
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->prepareForScrollPrioritization()V

    .line 103
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v3, 0x0

    move v1, v2

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 117
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->getScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->getScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    move-object v1, v0

    .line 126
    :goto_3
    if-eqz v1, :cond_6

    .line 128
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getScrollVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    const/4 v2, 0x1

    .line 129
    :cond_4
    if-eqz v2, :cond_6

    .line 130
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 115
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 137
    :cond_6
    const/4 v0, -0x1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getAnticipatedSettlePosition()I

    move-result v0

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->startBestTask(Ljava/util/List;I)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    move-object v1, v3

    goto :goto_3
.end method


# virtual methods
.method public cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 285
    return-void
.end method

.method public cancel(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public getIoTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public load(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 210
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->prepareForScrollPrioritization()V

    .line 219
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->getScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->getScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getScrollVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 219
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->prepareContent(F)V

    .line 223
    invoke-virtual {p1}, Lcom/google/glass/deferredcontent/LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->setTimeAddedToPendingList(J)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public load(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 0

    .prologue
    .line 258
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 259
    invoke-virtual {p2, p1}, Lcom/google/glass/deferredcontent/LoadingTask;->enableScrollPrioritization(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0, p2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 261
    return-void
.end method

.method public loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 271
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 272
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public postLoadToUiThread(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 243
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;Lcom/google/glass/deferredcontent/LoadingTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public setInMemoryTaskExecutorForTest(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 317
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    .line 318
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    .line 319
    return-object v0
.end method

.method public setIoTaskExecutorForTest(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 309
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    .line 310
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    .line 311
    return-object v0
.end method

.method startBestTask(Ljava/util/List;I)V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x0

    .line 156
    const/4 v1, -0x1

    move v2, v0

    move v3, v4

    move v5, v1

    move v1, v0

    .line 159
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 160
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 164
    iget v6, v0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemPosition:I

    if-ltz v6, :cond_5

    .line 165
    iget v6, v0, Lcom/google/glass/deferredcontent/LoadingTask;->scrollItemPosition:I

    sub-int/2addr v6, p2

    .line 166
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 169
    :goto_1
    if-ltz v5, :cond_0

    if-lt v6, v3, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v2

    move v3, v6

    move v5, v1

    .line 159
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_2
    if-ltz v5, :cond_3

    .line 180
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    .line 181
    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->isInMemoryTask()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->inMemoryTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->start(Ljava/util/concurrent/Executor;)V

    .line 186
    :goto_2
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_3
    return-void

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader;->ioTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->start(Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_5
    move v6, v4

    goto :goto_1
.end method
