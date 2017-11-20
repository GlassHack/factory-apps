.class public Lcom/google/glass/sync/TimelineSyncWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final continuationToken:[B

.field private final startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 24
    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/glass/sync/TimelineSyncWindow;->startTime:J

    .line 36
    iput-object p3, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getContinuationToken()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/glass/sync/TimelineSyncWindow;->startTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimelineSyncWindow"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{startTime="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/sync/TimelineSyncWindow;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", continuationToken="

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncWindow;->continuationToken:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_0
    const-string v0, "0x"

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
