.class Lcom/google/glass/async/AsyncThreadExecutorManager$1;
.super Lcom/google/glass/async/PriorityThreadFactory;
.source "AsyncThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/AsyncThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;


# direct methods
.method constructor <init>(Lcom/google/glass/async/AsyncThreadExecutorManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/AsyncThreadExecutorManager;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-super {p0, p1}, Lcom/google/glass/async/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$102(Lcom/google/glass/async/AsyncThreadExecutorManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-static {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$100(Lcom/google/glass/async/AsyncThreadExecutorManager;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "serialInstance Executor Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;->this$0:Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-static {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->access$100(Lcom/google/glass/async/AsyncThreadExecutorManager;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
