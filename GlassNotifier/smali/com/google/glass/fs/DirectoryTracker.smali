.class public Lcom/google/glass/fs/DirectoryTracker;
.super Landroid/os/FileObserver;
.source "DirectoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/fs/DirectoryTracker$Callback;,
        Lcom/google/glass/fs/DirectoryTracker$Stats;
    }
.end annotation


# static fields
.field private static final IN_EVENT_IGNORED:I = 0x8000

.field private static final OBSERVER_MASK:I = 0xfc8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final callbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/glass/fs/DirectoryTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final direntCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/fs/DirectoryTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private precacheTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private trackedDir:Ljava/io/File;

.field private tracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    const/16 v0, 0xfc8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->callbacks:Ljava/util/LinkedList;

    .line 76
    iput-boolean v3, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 79
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Path to track doesn\'t exist -- will attempt to create it [path=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t create path ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -- cannot track this directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Path ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a directory!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->start()Z

    .line 94
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/fs/DirectoryTracker;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->cacheNestedDirents(Ljava/io/File;)V

    return-void
.end method

.method private addAndMaybeUpdateCallbacks(Ljava/lang/String;)V
    .locals 2
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->buildStats(Ljava/lang/String;)Lcom/google/glass/fs/DirectoryTracker$Stats;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->maybeUpdateCallbacks(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private buildStats(Ljava/lang/String;)Lcom/google/glass/fs/DirectoryTracker$Stats;
    .locals 4
    .param p1, "absoluteFilename"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/google/glass/fs/DirectoryTracker$Stats;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/glass/fs/DirectoryTracker$Stats;-><init>(J)V

    return-object v1
.end method

.method private cacheNestedDirents(Ljava/io/File;)V
    .locals 4
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 315
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 317
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 318
    .local v2, "direntsToCheck":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 321
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 323
    .local v1, "dirent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 327
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/glass/fs/DirectoryTracker;->addAndMaybeUpdateCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v1    # "dirent":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private maybeLogEarlyQuery(Ljava/lang/String;)V
    .locals 6
    .param p1, "absoluteFilename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying stopped instance on [%s] for filename [%s] -- results will be stale!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 250
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 249
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying instance without complete precache on [%s] for filename [%s] -- results may be inconsistent -- use blockUntilReady!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 254
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 252
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized maybeUpdateCallbacks(Ljava/lang/String;)V
    .locals 3
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/fs/DirectoryTracker$Callback;

    .line 383
    .local v0, "callback":Lcom/google/glass/fs/DirectoryTracker$Callback;
    invoke-interface {v0, p1}, Lcom/google/glass/fs/DirectoryTracker$Callback;->notifyStateChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    .end local v0    # "callback":Lcom/google/glass/fs/DirectoryTracker$Callback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 385
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private removeAndMaybeUpdateCallbacks(Ljava/lang/String;)V
    .locals 1
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->maybeUpdateCallbacks(Ljava/lang/String;)V

    .line 379
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/glass/fs/DirectoryTracker$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/glass/fs/DirectoryTracker$Callback;

    .prologue
    .line 105
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/glass/fs/DirectoryTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/fs/DirectoryTracker$1;-><init>(Lcom/google/glass/fs/DirectoryTracker;Lcom/google/glass/fs/DirectoryTracker$Callback;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 125
    .local v0, "notifier":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 131
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blockUntilReady()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 145
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_0

    .line 146
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "precacheTask is null! BUG!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 151
    .local v0, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 152
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 153
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 155
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker for [%s] ready to go after blocking for %dms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 155
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "absoluteFilename"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->maybeLogEarlyQuery(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getStats(Ljava/lang/String;)Lcom/google/glass/fs/DirectoryTracker$Stats;
    .locals 1
    .param p1, "absoluteFilename"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->maybeLogEarlyQuery(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/fs/DirectoryTracker$Stats;

    return-object v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    return v0
.end method

.method public listFiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 168
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p2, v2, v4

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "absolutePath":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 215
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unhandled event [0x%x] for file [%s] -- BUG!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 174
    :sswitch_0
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File [%s] ADDED to [%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/google/glass/fs/DirectoryTracker;->addAndMaybeUpdateCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :sswitch_1
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File [%s] REMOVED from [%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/google/glass/fs/DirectoryTracker;->removeAndMaybeUpdateCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :sswitch_2
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Monitored directory [%s] was deleted -- monitoring stopped!"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-boolean v5, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    goto :goto_0

    .line 194
    :sswitch_3
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Monitored directory [%s] has moved -- restarting tracking!"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 196
    iput-boolean v5, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 197
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 198
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->start()Z

    goto :goto_0

    .line 202
    :sswitch_4
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File [%s] has been written"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/google/glass/fs/DirectoryTracker;->addAndMaybeUpdateCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :sswitch_5
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "IN_IGNORED event received for dir [%s] -- monitoring stopped! Is there another DirectoryTracker monitoring this path in the same process?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 211
    iput-boolean v5, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
        0x8000 -> :sswitch_5
    .end sparse-switch
.end method

.method public declared-synchronized start()Z
    .locals 5

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to start tracking path [%s], but we\'ve already started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 282
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 281
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return v0

    .line 286
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/glass/fs/DirectoryTracker$2;

    invoke-direct {v1, p0}, Lcom/google/glass/fs/DirectoryTracker$2;-><init>(Lcom/google/glass/fs/DirectoryTracker;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    .line 303
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 304
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 307
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to stop tracking path [%s], but we\'ve already stopped."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 345
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 352
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_2

    .line 353
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PrecacheTask is null for DirectoryTracker [%s]! BUG!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 354
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 353
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "DirectoryTracker for [%s] stopped."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 355
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
