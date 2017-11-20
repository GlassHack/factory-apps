.class public Lcom/google/glass/fs/DirectoryTracker;
.super Landroid/os/FileObserver;
.source "DirectoryTracker.java"


# static fields
.field private static final IN_EVENT_IGNORED:I = 0x8000

.field private static final OBSERVER_MASK:I = 0xfc0

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final direntCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
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
    .line 41
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

    .line 76
    const/16 v0, 0xfc0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-boolean v3, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 80
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Path to track doesn\'t exist -- will attempt to create it [path=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t create path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -- cannot track this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a directory!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->start()Z

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/fs/DirectoryTracker;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/fs/DirectoryTracker;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/fs/DirectoryTracker;->cacheNestedDirents(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cacheNestedDirents(Ljava/io/File;)V
    .locals 5
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 252
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 254
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v1, "direntsToCheck":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 258
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 260
    .local v0, "dirent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    monitor-enter v3

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 268
    .end local v0    # "dirent":Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public blockUntilReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 108
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_0

    .line 109
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "precacheTask is null! BUG!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 114
    .local v0, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 115
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 116
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 118
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker for [%s] ready to go after blocking for %dms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying stopped instance on [%s] for filename [%s] -- results will be stale!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 185
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying instance without complete precache on [%s] for filename [%s] -- results may be inconsistent -- use blockUntilReady!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 188
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    return v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 131
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    .line 131
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "absolutePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    monitor-enter v2

    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 169
    :try_start_0
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unhandled event [0x%x] for file [%s] -- BUG!"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :goto_0
    monitor-exit v2

    .line 173
    return-void

    .line 138
    :sswitch_0
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "File [%s] ADDED to [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 144
    :sswitch_1
    :try_start_1
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "File [%s] REMOVED from [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :sswitch_2
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Monitored directory [%s] was deleted -- monitoring stopped!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    goto :goto_0

    .line 156
    :sswitch_3
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Monitored directory [%s] has moved -- file paths will be different!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    goto :goto_0

    .line 162
    :sswitch_4
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "IN_IGNORED event received for dir [%s] -- monitoring stopped! Is there another DirectoryTracker monitoring this path in the same process?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
        0x8000 -> :sswitch_4
    .end sparse-switch
.end method

.method public declared-synchronized start()Z
    .locals 5

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to start tracking path [%s], but we\'ve already started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 216
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_0
    monitor-exit p0

    return v0

    .line 221
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/glass/fs/DirectoryTracker$1;

    invoke-direct {v1, p0}, Lcom/google/glass/fs/DirectoryTracker$1;-><init>(Lcom/google/glass/fs/DirectoryTracker;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    .line 240
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 241
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 244
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to stop tracking path [%s], but we\'ve already stopped."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 284
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 290
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_2

    .line 291
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PrecacheTask is null for DirectoryTracker [%s]! BUG!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 291
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
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

    .line 298
    monitor-exit p0

    return-void

    .line 293
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->precacheTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
