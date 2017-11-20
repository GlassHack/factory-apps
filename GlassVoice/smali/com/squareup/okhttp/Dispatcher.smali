.class final Lcom/squareup/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Dispatcher$RealResponseBody;
    }
.end annotation


# instance fields
.field private final enqueuedJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Job;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    if-nez v2, :cond_1

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Job;

    .line 51
    .local v1, "job":Lcom/squareup/okhttp/Job;
    iget-object v3, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "job":Lcom/squareup/okhttp/Job;
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized enqueue(Ljava/net/HttpURLConnection;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response$Receiver;)V
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "responseReceiver"    # Lcom/squareup/okhttp/Response$Receiver;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/squareup/okhttp/Job;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/okhttp/Job;-><init>(Lcom/squareup/okhttp/Dispatcher;Ljava/net/HttpURLConnection;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response$Receiver;)V

    .line 38
    .local v0, "job":Lcom/squareup/okhttp/Job;
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 39
    .local v1, "jobsForTag":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "jobsForTag":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .restart local v1    # "jobsForTag":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 37
    .end local v0    # "job":Lcom/squareup/okhttp/Job;
    .end local v1    # "jobsForTag":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized finished(Lcom/squareup/okhttp/Job;)V
    .locals 3
    .param p1, "job"    # Lcom/squareup/okhttp/Job;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Dispatcher;->enqueuedJobs:Ljava/util/Map;

    iget-object v2, p1, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Job;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
