.class Lcom/google/glass/async/AsyncThreadExecutorManager$3;
.super Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

.field final synthetic val$queued:Ljava/util/Set;

.field final synthetic val$running:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    iput-object p2, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$queued:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$running:Ljava/util/Set;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    return-void
.end method

.method private countName(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 211
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 214
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 217
    return-void
.end method

.method private logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .prologue
    .line 201
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->sanitizeTaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-direct {p0, v3, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->countName(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_1
    return-object v1
.end method

.method private logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->ASYNC_THREAD_POOL_CLOG:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "c"

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "n"

    aput-object v8, v7, v2

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    const-string v8, "r"

    aput-object v8, v7, v0

    const/4 v8, 0x3

    if-eqz p3, :cond_0

    move v0, v1

    .line 196
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    .line 190
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v4, v0}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 194
    goto :goto_1

    .line 198
    :cond_1
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$queued:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->val$running:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Execution of task rejected. Tasks:"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v2, "Running: "

    invoke-direct {p0, v0, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 171
    const-string v0, "Queued: "

    invoke-direct {p0, v1, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logAndCount(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-static {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$300(Lcom/google/glass/async/AsyncThreadExecutorManager;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Logging user events."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V

    .line 179
    invoke-direct {p0, v0, v1, v6}, Lcom/google/glass/async/AsyncThreadExecutorManager$3;->logUserEvents(Lcom/google/glass/userevent/UserEventHelper;Ljava/util/Map;Z)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 183
    return-void
.end method
