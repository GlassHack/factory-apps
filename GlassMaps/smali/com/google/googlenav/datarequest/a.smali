.class public abstract Lcom/google/googlenav/datarequest/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/d;


# static fields
.field public static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private firstRetryTime:Ljava/lang/Long;

.field private volatile isCancelled:Z

.field private queueTimeMs:Ljava/lang/Long;

.field private retryTimeOut:Ljava/lang/Long;

.field private serverFailureCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/a;->isCancelled:Z

    .line 19
    iput v0, p0, Lcom/google/googlenav/datarequest/a;->serverFailureCount:I

    .line 28
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->queueTimeMs:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getQueueTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/datarequest/a;->queueTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method protected getServerFailureCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/googlenav/datarequest/a;->serverFailureCount:I

    return v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/a;->isCancelled:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isSubmission()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onPermanentFailure()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onServerFailure()V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/googlenav/datarequest/a;->serverFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/a;->serverFailureCount:I

    .line 132
    return-void
.end method

.method public retryOnFailure()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/google/googlenav/datarequest/a;->serverFailureCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 120
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/a;->retryTimeOut:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 112
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v1

    .line 113
    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->firstRetryTime:Ljava/lang/Long;

    if-nez v3, :cond_2

    .line 114
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->firstRetryTime:Ljava/lang/Long;

    .line 120
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->firstRetryTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->retryTimeOut:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0
.end method

.method public setCancelled()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/a;->isCancellable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/a;->isCancelled:Z

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/a;->getRequestType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not cancellable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueueTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/googlenav/datarequest/a;->queueTimeMs:Ljava/lang/Long;

    .line 151
    return-void
.end method

.method public setRetryTimeOut(J)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->retryTimeOut:Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public shouldBypassUiUpdate()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public usesShortbreadToken()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
