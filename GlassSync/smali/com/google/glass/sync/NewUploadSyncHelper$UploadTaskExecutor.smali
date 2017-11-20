.class public Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "NewUploadSyncHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/NewUploadSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadTaskExecutor"
.end annotation


# instance fields
.field private final helper:Lcom/google/glass/sync/NewUploadSyncHelper;

.field private final runningTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/sync/UploadTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/sync/NewUploadSyncHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/glass/sync/NewUploadSyncHelper;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "this$0"    # Lcom/google/glass/sync/NewUploadSyncHelper;
    .param p2, "helper"    # Lcom/google/glass/sync/NewUploadSyncHelper;
    .param p3, "corePoolSize"    # I
    .param p4, "maximumPoolSize"    # I
    .param p5, "keepalive"    # J
    .param p7, "keepaliveUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    .line 72
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move v1, p3

    move v2, p4

    move-wide v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 74
    iput-object p2, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->helper:Lcom/google/glass/sync/NewUploadSyncHelper;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->runningTasks:Ljava/util/Set;

    .line 76
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lcom/google/glass/sync/UploadTask;

    .line 93
    .local v0, "task":Lcom/google/glass/sync/UploadTask;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->runningTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v1}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "UploadTask completed [taskId=%d]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->helper:Lcom/google/glass/sync/NewUploadSyncHelper;

    check-cast p1, Lcom/google/glass/sync/UploadTask;

    .end local p1    # "r":Ljava/lang/Runnable;
    invoke-virtual {v1, p1, p2}, Lcom/google/glass/sync/NewUploadSyncHelper;->onTaskCompleted(Lcom/google/glass/sync/UploadTask;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    move-object v0, p2

    check-cast v0, Lcom/google/glass/sync/UploadTask;

    .line 81
    .local v0, "task":Lcom/google/glass/sync/UploadTask;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->runningTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v1}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Associating UploadTask with thread [taskId=%d, thread=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/google/glass/sync/UploadTask;->beforeExecute(Ljava/lang/Thread;)V

    .line 88
    return-void
.end method

.method public cancelOpportunisticTasks()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v1}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Cancelling all running opportunistic upload tasks."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->runningTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/UploadTask;

    .line 103
    .local v0, "task":Lcom/google/glass/sync/UploadTask;
    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v2}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Cancelling task [taskId=%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadTask;->cancelIfOpportunistic()Z

    goto :goto_0

    .line 106
    .end local v0    # "task":Lcom/google/glass/sync/UploadTask;
    :cond_0
    return-void
.end method
