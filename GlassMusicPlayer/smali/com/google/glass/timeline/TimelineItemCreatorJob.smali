.class public abstract Lcom/google/glass/timeline/TimelineItemCreatorJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final USER_ACTION_TYPE_UNSET:I = -0x1


# instance fields
.field private volatile cancelled:Z

.field protected final databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile finalItemReady:Z

.field private final itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private runningOnThread:Ljava/lang/Thread;

.field private volatile temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile temporaryItemCreated:Z

.field private volatile temporaryItemReady:Z

.field private userActionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V
    .locals 2

    .prologue
    .line 60
    .line 61
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 60
    invoke-direct {p0, p2, p3, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 32
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->executor:Ljava/util/concurrent/Executor;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 38
    iput-boolean v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 41
    iput-boolean v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 44
    iput-boolean v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 47
    iput-boolean v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 67
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 68
    iput p2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 69
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private checkCancel()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Processing cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method private deleteTemporaryItem()V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deleting temporary item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method private dispatchCreateFinalItem()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 238
    new-instance v0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V

    .line 276
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 277
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 278
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Final item could not be updated.  Cancelling job"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 283
    return-void

    :cond_1
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method private dispatchCreateTemporaryItem()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Temporary item was null.  Cancelling job"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 209
    :cond_0
    new-instance v3, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 223
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v4, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 224
    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 226
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 227
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Temporary item created"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 233
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 201
    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not create temporary item"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    goto :goto_1
.end method

.method private declared-synchronized waitForFinalItem()V
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForTemporaryItem()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling timeline item creation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 170
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized cancelIfNotFinished()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method protected createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must implement this method if shouldCreateTemporaryItem returns true."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyReadyToCreateTemporaryItem()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyReadyToUpdateToFinalItem()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onPreExecute()V

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForTemporaryItem()V

    .line 94
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 95
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateTemporaryItem()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 99
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForFinalItem()V

    .line 100
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 102
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateFinalItem()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Processing cancellation request"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->deleteTemporaryItem()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted during deletion of temporary item."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserActionType(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 78
    return-void
.end method

.method protected shouldCreateTemporaryItem()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
