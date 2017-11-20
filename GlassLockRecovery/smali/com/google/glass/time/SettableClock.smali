.class public final Lcom/google/glass/time/SettableClock;
.super Ljava/lang/Object;
.source "SettableClock.java"

# interfaces
.implements Lcom/google/glass/time/Clock;


# instance fields
.field private currentTimeMillis:J

.field private elapsedRealtime:J

.field private uptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/glass/time/SettableClock;-><init>(JJ)V

    .line 21
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "uptimeMillis"    # J
    .param p3, "currentTimeMillis"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/time/SettableClock;->setTime(JJ)V

    .line 17
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->currentTimeMillis:J

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .locals 3

    .prologue
    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementTime(J)V
    .locals 2
    .param p1, "millis"    # J

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->uptimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/time/SettableClock;->uptimeMillis:J

    .line 45
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->currentTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/time/SettableClock;->currentTimeMillis:J

    .line 46
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    .line 47
    return-void
.end method

.method public setElapsedRealtime(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    .line 36
    return-void
.end method

.method public setTime(JJ)V
    .locals 0
    .param p1, "uptimeMillis"    # J
    .param p3, "currentTimeMillis"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/glass/time/SettableClock;->uptimeMillis:J

    .line 31
    iput-wide p3, p0, Lcom/google/glass/time/SettableClock;->currentTimeMillis:J

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->uptimeMillis:J

    iget-wide v2, p0, Lcom/google/glass/time/SettableClock;->currentTimeMillis:J

    iget-wide v4, p0, Lcom/google/glass/time/SettableClock;->elapsedRealtime:J

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x71

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[uptimeMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uptimeMillis()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/glass/time/SettableClock;->uptimeMillis:J

    return-wide v0
.end method
