.class public Lcom/google/glass/net/ProtoRequestDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final MAX_PENDING_DATA_SIZE_BYTES:I = 0x80000

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final closeHttpOnExit:Z

.field private final defaultResponseThread:Ljava/util/concurrent/Executor;

.field private explicitFlush:Z

.field private final httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/List;

.field private final queueCondition:Ljava/util/concurrent/locks/Condition;

.field private final queueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final requestPriorityComparator:Ljava/util/Comparator;

.field private shouldExit:Z

.field private totalQueuedDataSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 252
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 255
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    .line 258
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    .line 287
    const-string v0, "null httpDispatcher"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/HttpRequestDispatcher;

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 288
    iput-boolean p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    .line 289
    const-string v0, "null defaultResponseThread"

    invoke-static {p3, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    .line 290
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 291
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private clearQueue()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 626
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    .line 627
    return-void
.end method

.method private dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;)Z
    .locals 10

    .prologue
    .line 476
    iget-object v1, p1, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 483
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 506
    :goto_0
    return v0

    .line 488
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const/4 v8, 0x0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;-><init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/ProtoRequestDispatcher$1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 495
    iget-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v1, "totalQueuedDataSize must be >= 0 [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    .line 496
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 495
    invoke-static {v0, v1, v2}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    invoke-virtual {p2}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    .line 500
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 504
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 371
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 377
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 378
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 381
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 382
    new-instance v5, Lcom/google/glass/net/ProtoRequestDispatcher$2;

    invoke-direct {v5, p0, v9, v7, v8}, Lcom/google/glass/net/ProtoRequestDispatcher$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 400
    new-instance v6, Lcom/google/glass/net/ProtoRequestDispatcher$3;

    invoke-direct {v6, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 415
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 423
    invoke-static {}, Lcom/google/glass/net/ProtoResponse;->cancel()Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted during blockingDispatch"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    throw v0

    .line 424
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->error(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->success(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal proto response state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 321
    const/4 v1, 0x0

    .line 324
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :goto_0
    if-nez v1, :cond_0

    .line 345
    :goto_1
    return v0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Thread interrupted during request -- calling ProtoResponseHandler#onCancel"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 345
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/google/glass/net/ProtoResponseHandler;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_2

    .line 341
    :cond_3
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_2
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 7

    .prologue
    .line 452
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 532
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    .line 533
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    return-void

    .line 535
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 517
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getExplicitFlushForTest()Z
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 728
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    return v0
.end method

.method getTotalQueuedDataSizeForTest()J
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 722
    iget-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    return-wide v0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 618
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 616
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 618
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method isFlushConditionMet()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    const-string v2, "queueLock should be held by current thread"

    invoke-static {v1, v2}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 710
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    const-wide/32 v3, 0x80000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockQueueForTest()Z
    .locals 4

    .prologue
    .line 733
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 734
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 543
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 545
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 547
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 550
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 552
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 554
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    :try_start_2
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Interrupted while waiting for queue condition."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 559
    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 563
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V

    goto :goto_2

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V

    .line 568
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-interface {v0}, Lcom/google/glass/net/HttpRequestDispatcher;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 573
    return-void

    .line 575
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 584
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 591
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->service(Ljava/util/List;)V

    .line 595
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 582
    goto :goto_3
.end method

.method service(Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    .line 635
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v0, :cond_2

    .line 642
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 643
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    :cond_1
    :goto_2
    return-void

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_5

    .line 655
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v0

    .line 659
    :goto_3
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_3

    .line 662
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 665
    :cond_3
    const-string v0, "Content-Type"

    const-string v4, "application/protobuf"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v0, "X-Glass-Uptime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 670
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v5, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 671
    invoke-static {v5}, Lcom/google/glass/net/ServerConstants;->makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 672
    invoke-static {v6}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    .line 670
    invoke-interface {v4, v5, v3, v6}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v3

    .line 673
    :try_start_1
    invoke-virtual {v3}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 685
    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_8

    .line 687
    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0x193

    if-eq v4, v5, :cond_4

    iget v4, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0x191

    if-ne v4, v5, :cond_6

    .line 689
    :cond_4
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request failed due to auth failure."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    .line 635
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 649
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 657
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    goto :goto_3

    .line 677
    :catch_0
    move-exception v1

    .line 678
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request failed due to network error [message=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 679
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 678
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto/16 :goto_2

    .line 691
    :cond_6
    iget v3, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v4, 0x194

    if-ne v3, v4, :cond_7

    .line 692
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request failed due to not-found path."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_4

    .line 696
    :cond_7
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request failed due to internal server error."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_4

    .line 700
    :cond_8
    iget-object v3, v3, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onSuccess([B)V

    goto :goto_4
.end method

.method unlockQueueForTest()V
    .locals 1

    .prologue
    .line 739
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 740
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 741
    return-void
.end method
