.class Lcom/google/glass/deferredcontent/DeferredInputStream$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    :try_start_0
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v1

    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$300()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$400(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$300()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interrupted while waiting for content."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$800(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$702(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 79
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Content timed out."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$202(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$800(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$702(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
