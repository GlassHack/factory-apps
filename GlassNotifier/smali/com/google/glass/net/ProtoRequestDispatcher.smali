.class public Lcom/google/glass/net/ProtoRequestDispatcher;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ProtoRequestDispatcher$Providers;,
        Lcom/google/glass/net/ProtoRequestDispatcher$Request;,
        Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final queueCondition:Ljava/util/concurrent/locks/Condition;

.field private final queueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final requestPriorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private shouldExit:Z

.field private totalQueuedDataSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V
    .locals 1
    .param p1, "httpDispatcher"    # Lcom/google/glass/net/HttpRequestDispatcher;
    .param p2, "closeHttpOnExit"    # Z
    .param p3, "defaultResponseThread"    # Ljava/util/concurrent/Executor;
    .param p4, "authUtils"    # Lcom/google/glass/auth/AuthUtils;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 272
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    .line 275
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    .line 304
    const-string v0, "null httpDispatcher"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/HttpRequestDispatcher;

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 305
    iput-boolean p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    .line 306
    const-string v0, "null defaultResponseThread"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    .line 307
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 308
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private clearQueue()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    .line 644
    return-void
.end method

.method private dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;)Z
    .locals 10
    .param p1, "action"    # Lcom/google/glass/net/ServerConstants$Action;
    .param p2, "requestProto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "isImmediate"    # Z
    .param p6, "responseThread"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 493
    .local p4, "responseParser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    .local p5, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iget-object v1, p1, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    .line 496
    .local v1, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 521
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    :goto_0
    return v0

    .line 505
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

    .line 509
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 512
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "totalQueuedDataSize must be >= 0 [%s]"

    iget-wide v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    invoke-static {v0, v2, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 514
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    invoke-virtual {p2}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    .line 517
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 512
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 521
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    .locals 12
    .param p1, "action"    # Lcom/google/glass/net/ServerConstants$Action;
    .param p2, "requestProto"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p3, "responseParser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    const/4 v3, 0x1

    .line 388
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 394
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 395
    .local v8, "errorCodeReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;>;"
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 398
    .local v11, "responseParserReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 399
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/google/glass/net/ProtoRequestDispatcher$2;

    invoke-direct {v5, p0, v10, v8, v11}, Lcom/google/glass/net/ProtoRequestDispatcher$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 417
    .local v5, "latchedResponseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v9, 0x1

    .line 418
    .local v9, "isImmediate":Z
    new-instance v6, Lcom/google/glass/net/ProtoRequestDispatcher$3;

    invoke-direct {v6, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 440
    invoke-static {}, Lcom/google/glass/net/ProtoResponse;->cancel()Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v7

    .line 434
    .local v7, "e":Ljava/lang/InterruptedException;
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted during blockingDispatch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    throw v7

    .line 441
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->error(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->success(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal proto response state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 6
    .param p1, "action"    # Lcom/google/glass/net/ServerConstants$Action;
    .param p2, "requestProto"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "responseParser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    .local p4, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v2, 0x0

    .line 335
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 338
    const/4 v1, 0x0

    .line 341
    .local v1, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 349
    :goto_0
    if-nez v1, :cond_0

    .line 362
    :goto_1
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Thread interrupted during request -- calling ProtoResponseHandler#onCancel"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 362
    :cond_1
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/google/glass/net/ProtoResponseHandler;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_2

    .line 358
    :cond_3
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_2
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 7
    .param p1, "action"    # Lcom/google/glass/net/ServerConstants$Action;
    .param p2, "requestProto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "isImmediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 469
    .local p4, "responseParser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    .local p5, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
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
    .line 547
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 549
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    .line 550
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    return-void

    .line 552
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 534
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    return-void

    .line 537
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getExplicitFlushForTest()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 750
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 751
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    return v0
.end method

.method getTotalQueuedDataSizeForTest()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 744
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 745
    iget-wide v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    return-wide v0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 635
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 635
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
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 730
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    const-string v2, "queueLock should be held by current thread"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 733
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:J

    const-wide/32 v4, 0x80000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockQueueForTest()Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 757
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 560
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 562
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    .local v2, "servicing":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 567
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 569
    :goto_1
    :try_start_0
    iget-boolean v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 571
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Interrupted while waiting for queue condition."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 604
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 576
    :cond_1
    :try_start_3
    iget-boolean v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v3, :cond_4

    .line 579
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 580
    .local v1, "request":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V

    goto :goto_2

    .line 582
    .end local v1    # "request":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V

    .line 585
    iget-boolean v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    if-eqz v3, :cond_3

    .line 586
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-interface {v3}, Lcom/google/glass/net/HttpRequestDispatcher;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    :cond_3
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    return-void

    .line 592
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 595
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 599
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 601
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 604
    :cond_5
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 608
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 609
    invoke-virtual {p0, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->service(Ljava/util/List;)V

    .line 612
    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 599
    goto :goto_3
.end method

.method service(Ljava/util/List;)V
    .locals 14
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 650
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 652
    const/4 v5, 0x0

    .local v5, "requestIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 656
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 658
    :try_start_0
    iget-boolean v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v7, :cond_2

    .line 659
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 660
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-virtual {v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 666
    :cond_0
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 726
    :cond_1
    :goto_2
    return-void

    .line 666
    :cond_2
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 671
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_5

    .line 672
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 676
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    if-eqz v7, :cond_3

    .line 677
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v7}, Lcom/google/glass/auth/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 678
    .local v0, "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 679
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 682
    .end local v0    # "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v7, "Content-Type"

    const-string v8, "application/protobuf"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v7, "X-Glass-Uptime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 688
    .local v4, "request":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    :try_start_1
    iget-object v7, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v8, v4, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 689
    invoke-static {v8}, Lcom/google/glass/net/ServerConstants;->makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 690
    invoke-static {v9}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v9

    .line 688
    invoke-interface {v7, v8, v2, v9}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 691
    .local v3, "pendingRequest":Lcom/google/glass/net/PendingHttpRequest;
    const/4 v6, 0x0

    .line 694
    .local v6, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_start_2
    invoke-virtual {v3}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 703
    :try_start_3
    iget v7, v6, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_8

    .line 704
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed [request=%s, response=%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    iget v7, v6, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0x193

    if-eq v7, v8, :cond_4

    iget v7, v6, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0x191

    if-ne v7, v8, :cond_6

    .line 708
    :cond_4
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed due to auth failure."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NOT_AUTHORIZED:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 652
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 666
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pendingRequest":Lcom/google/glass/net/PendingHttpRequest;
    .end local v4    # "request":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v6    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 674
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_3

    .line 695
    .restart local v3    # "pendingRequest":Lcom/google/glass/net/PendingHttpRequest;
    .restart local v4    # "request":Lcom/google/glass/net/ProtoRequestDispatcher$Request;, "Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .restart local v6    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed due to network error [message=%s, request=%s]."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 697
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 696
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 721
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pendingRequest":Lcom/google/glass/net/PendingHttpRequest;
    .end local v6    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :catch_1
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error handling request [request=%s]."

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v4, v9, v12

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    throw v1

    .line 710
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "pendingRequest":Lcom/google/glass/net/PendingHttpRequest;
    .restart local v6    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :cond_6
    :try_start_5
    iget v7, v6, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0x194

    if-ne v7, v8, :cond_7

    .line 711
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed due to not-found path."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_4

    .line 715
    :cond_7
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed due to internal server error."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    sget-object v7, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_4

    .line 719
    :cond_8
    iget-object v7, v6, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-virtual {v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onSuccess([B)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4
.end method

.method unlockQueueForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 763
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 764
    return-void
.end method
