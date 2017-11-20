.class Lcom/google/glass/deferredcontent/DeferredInputStream$1;
.super Ljava/io/InputStream;
.source "DeferredInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/DeferredInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    :try_start_0
    new-instance v1, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v1}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 71
    .local v1, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v2

    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$300()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$400(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$300()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v1    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while waiting for content."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v4}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$800(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$702(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 79
    .restart local v1    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Content timed out."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$202(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$800(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$702(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 91
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    .end local v1    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    :cond_2
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    return v2
.end method
