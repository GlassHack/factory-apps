.class Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager$2;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    iput-object p2, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    iget-object v0, v0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$queued:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    iget-object v0, v0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$running:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    iget-object v0, v0, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$running:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->this$1:Lcom/google/glass/async/AsyncThreadExecutorManager$2;

    iget-object v1, v1, Lcom/google/glass/async/AsyncThreadExecutorManager$2;->val$running:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$2$1;->val$command:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
