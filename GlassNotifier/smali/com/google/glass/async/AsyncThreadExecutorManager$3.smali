.class Lcom/google/glass/async/AsyncThreadExecutorManager$3;
.super Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;
.source "AsyncThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/AsyncThreadExecutorManager;->initThreadPoolInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$queued:Ljava/util/Set;

.field final synthetic val$running:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/AsyncThreadExecutorManager;

    .prologue
    .line 171
    iput-object p2, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$queued:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$running:Ljava/util/Set;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    return-void
.end method

.method private countName(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 225
    .restart local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 228
    return-void
.end method

.method private logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p2, "logPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 213
    .local v0, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 214
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->sanitizeTaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->countName(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 215
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_1
    return-object v0
.end method

.method private logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V
    .locals 10
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "running"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/userevent/UserEventHelper;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    .local v0, "count":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->ASYNC_THREAD_POOL_CLOG:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "c"

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/Object;

    const-string v1, "n"

    aput-object v1, v8, v3

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    const-string v9, "r"

    aput-object v9, v8, v1

    const/4 v9, 0x3

    if-eqz p3, :cond_0

    move v1, v2

    .line 207
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    .line 201
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p1, v5, v1}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 207
    goto :goto_1

    .line 209
    .end local v0    # "count":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 9
    .param p1, "rejected"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    const/4 v8, 0x0

    .line 175
    iget-object v5, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$queued:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$running:Ljava/util/Set;

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 178
    .local v2, "runningCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, "queueCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Execution of task rejected. Tasks:"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const-string v5, "Running: "

    invoke-direct {p0, v2, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 182
    .local v3, "runningCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const-string v5, "Queued: "

    invoke-direct {p0, v0, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 186
    .local v1, "queuedCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-static {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$300(Lcom/google/glass/async/AsyncThreadExecutorManager;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    .line 187
    .local v4, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    if-eqz v4, :cond_0

    .line 188
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Logging user events."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V

    .line 190
    invoke-direct {p0, v4, v1, v8}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 194
    return-void
.end method
