.class final Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SerializingExecutor$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .locals 10

    .prologue
    .line 187
    :goto_0
    const/4 v7, 0x0

    .line 188
    .local v7, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 193
    :cond_0
    if-nez v7, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 195
    monitor-exit v2

    return-void

    .line 197
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.SerializingExecutor$QueueWorker"

    const-string v4, "workOnQueue"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x23

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Exception while executing runnable "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->workOnQueue()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2

    .line 176
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 177
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw v0

    .line 177
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
