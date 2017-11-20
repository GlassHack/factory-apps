.class public final Lcom/google/android/gms/fitness/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Z

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(JZJJ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/android/gms/fitness/d/d;->a:J

    .line 35
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/d/d;->b:Z

    .line 36
    iput-wide p4, p0, Lcom/google/android/gms/fitness/d/d;->c:J

    .line 37
    iput-wide p6, p0, Lcom/google/android/gms/fitness/d/d;->d:J

    .line 38
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->c:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->c:J

    .line 76
    iget-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->d:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/d/d;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/d/d;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/d/d;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/d/d;->b:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/d/d;->b:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/d/d;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/d/d;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/android/gms/fitness/d/d;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "isRemote"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/d/d;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "minEnd"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "maxEnd"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/d/d;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
