.class public Lcom/google/glass/async/AsyncThreadExecutorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private serialInstance:Ljava/util/concurrent/Executor;

.field private serialInstanceThread:Ljava/lang/Thread;

.field private threadPoolInstance:Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

.field private volatile userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    const-class v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->TAG:Ljava/lang/String;

    .line 71
    const-string v0, "(.*)@[0-9a-f]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->INSTANCE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/async/AsyncThreadExecutorManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$1;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    .line 96
    invoke-direct {p0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->initThreadPoolInstance()V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/async/AsyncThreadExecutorManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/async/AsyncThreadExecutorManager;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/async/AsyncThreadExecutorManager;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private initThreadPoolInstance()V
    .locals 4

    .prologue
    .line 104
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 109
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 115
    new-instance v3, Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$2;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/util/Set;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Set;)V

    iput-object v3, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    .line 160
    new-instance v3, Lcom/google/glass/async/AsyncThreadExecutorManager$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 219
    return-void
.end method

.method static sanitizeTaskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->INSTANCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSerialExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSerialInstanceThreadForTest()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 255
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    return-object v0
.end method

.method public isOnSerialInstanceThread()Z
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSerialExecutorForTest(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->setSerialExecutorForTest(Ljava/util/concurrent/Executor;Ljava/lang/Thread;)V

    .line 265
    return-void
.end method

.method public setSerialExecutorForTest(Ljava/util/concurrent/Executor;Ljava/lang/Thread;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 274
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    .line 277
    return-void
.end method

.method public setThreadPoolExecutorForTest(Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;)V
    .locals 0

    .prologue
    .line 285
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 286
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    .line 288
    return-void
.end method

.method public setUserEventHelper(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 224
    return-void
.end method
