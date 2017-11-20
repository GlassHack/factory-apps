.class public abstract Lcom/google/glass/sync/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final taskIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

.field private executingThread:Ljava/lang/Thread;

.field private final isOpportunistic:Z

.field protected final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field protected final logger:Lcom/google/glass/logging/FormattingLogger;

.field private result:Lcom/google/glass/sync/UploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final taskId:J

.field private uploadCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/glass/sync/UploadTask;->taskIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .param p1, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p2, "aggregator"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v2, Lcom/google/glass/sync/UploadTask;->taskIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/sync/UploadTask;->taskId:J

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/sync/UploadTask;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    iput-object p2, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    .line 46
    iput-object p3, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 48
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/sync/UploadTask;->isOpportunistic:Z

    .line 49
    new-instance v0, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v0}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    .line 50
    iput-boolean v1, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    .line 52
    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method


# virtual methods
.method public beforeExecute(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "executingThread"    # Ljava/lang/Thread;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    .line 92
    return-void
.end method

.method public cancelIfOpportunistic()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Asked to cancel if opportunistic."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-boolean v2, p0, Lcom/google/glass/sync/UploadTask;->isOpportunistic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    if-nez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cancelling upload task [timelineItemId=%s]."

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Conditions not right to cancel if opportunistic [timelineItemId=%s, isOpportunistic=%s, uploadCompleted=%s, executingThread=%s]."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 156
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/google/glass/sync/UploadTask;->isOpportunistic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-boolean v5, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    aput-object v5, v4, v0

    .line 154
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 157
    goto :goto_0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public getResult()Lcom/google/glass/sync/UploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public getTaskId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/glass/sync/UploadTask;->taskId:J

    return-wide v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "UploadTask starting."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v2}, Lcom/google/glass/sync/DeviceStateAggregator;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "syncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Skipping item due to sync protocol mismatch [timelineItemId=%s, timelineSyncProtocol=%s, syncProtocol=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 102
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, ", "

    .line 103
    invoke-static {v6}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 101
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    iget-object v3, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfSyncItemStart(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/glass/sync/UploadTask;->upload()Lcom/google/glass/sync/UploadResult;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    .line 113
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "%s returned null! BUG!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v2, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v2}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    iput-boolean v8, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    .line 122
    iput-object v9, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    .line 123
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    iget-object v3, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfSyncItemComplete(Ljava/lang/String;Lcom/google/glass/sync/UploadResult;)V

    .line 125
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "UploadTask complete."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted -- aborting upload of item [timelineItemId=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v2, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v2}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/sync/UploadResult$Builder;->build()Lcom/google/glass/sync/UploadResult;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iput-boolean v8, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    .line 122
    iput-object v9, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    .line 123
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    iget-object v3, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfSyncItemComplete(Ljava/lang/String;Lcom/google/glass/sync/UploadResult;)V

    .line 125
    iget-object v2, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "UploadTask complete."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iput-boolean v8, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    .line 122
    iput-object v9, p0, Lcom/google/glass/sync/UploadTask;->executingThread:Ljava/lang/Thread;

    .line 123
    iget-object v3, p0, Lcom/google/glass/sync/UploadTask;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    iget-object v4, p0, Lcom/google/glass/sync/UploadTask;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/sync/UploadTask;->result:Lcom/google/glass/sync/UploadResult;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfSyncItemComplete(Ljava/lang/String;Lcom/google/glass/sync/UploadResult;)V

    .line 125
    iget-object v3, p0, Lcom/google/glass/sync/UploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "UploadTask complete."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method protected abstract upload()Lcom/google/glass/sync/UploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public uploadCompleted()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/glass/sync/UploadTask;->uploadCompleted:Z

    return v0
.end method
