.class public final Lcom/google/glass/sync/MockUploadTask;
.super Lcom/google/glass/sync/UploadTask;
.source "MockUploadTask.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MockUploadTask"


# instance fields
.field private final result:Lcom/google/glass/sync/UploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final timeToWaitDuringUpload:J

.field private volatile uploadCalled:Z

.field private volatile wasInterrupted:Z


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/UploadResult;J)V
    .locals 1
    .param p1, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .param p2, "aggregator"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p5, "timeToWaitDuringUpload"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/logging/FormattingLogger;",
            "Lcom/google/glass/sync/DeviceStateAggregator;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/sync/UploadResult",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p4, "result":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/sync/UploadTask;-><init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 27
    iput-object p4, p0, Lcom/google/glass/sync/MockUploadTask;->result:Lcom/google/glass/sync/UploadResult;

    .line 28
    iput-wide p5, p0, Lcom/google/glass/sync/MockUploadTask;->timeToWaitDuringUpload:J

    .line 30
    iput-boolean v0, p0, Lcom/google/glass/sync/MockUploadTask;->wasInterrupted:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/glass/sync/MockUploadTask;->uploadCalled:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    const-string v0, "MockUploadTask["

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/sync/MockUploadTask;->getTaskId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected upload()Lcom/google/glass/sync/UploadResult;
    .locals 5
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

    .prologue
    const/4 v4, 0x1

    .line 36
    iput-boolean v4, p0, Lcom/google/glass/sync/MockUploadTask;->uploadCalled:Z

    .line 39
    :try_start_0
    iget-wide v1, p0, Lcom/google/glass/sync/MockUploadTask;->timeToWaitDuringUpload:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v1, p0, Lcom/google/glass/sync/MockUploadTask;->result:Lcom/google/glass/sync/UploadResult;

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/glass/sync/MockUploadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Caught interrupted exception."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-boolean v4, p0, Lcom/google/glass/sync/MockUploadTask;->wasInterrupted:Z

    .line 43
    throw v0
.end method

.method public wasInterrupted()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/glass/sync/MockUploadTask;->wasInterrupted:Z

    return v0
.end method

.method public wasUploadCalled()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/glass/sync/MockUploadTask;->uploadCalled:Z

    return v0
.end method
