.class public abstract Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/sync/SyncStatusReporter;


# instance fields
.field private final numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method public handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sync failed [errorCode=%s, numFailures=%s, numServerFailures=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public handleSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    return-void
.end method

.method public hasFailures()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerFailures()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;->numServerFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
