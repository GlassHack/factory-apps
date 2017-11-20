.class Lcom/google/glass/async/AsyncThreadExecutorManager$2;
.super Ljava/lang/Object;
.source "AsyncThreadExecutorManager.java"

# interfaces
.implements Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/AsyncThreadExecutorManager;->initThreadPoolInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

.field final synthetic val$queued:Ljava/util/Set;

.field final synthetic val$running:Ljava/util/Set;

.field final synthetic val$threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/util/Set;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/AsyncThreadExecutorManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    iput-object p2, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$queued:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p4, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$running:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$queued:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager$2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public declared-synchronized executeIfNotQueued(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->isQueued(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    monitor-exit p0

    return v0

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isQueued(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$queued:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
