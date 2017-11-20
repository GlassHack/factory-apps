.class final Lcom/google/android/d/c/f;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/d/c/e;


# direct methods
.method public constructor <init>(Lcom/google/android/d/c/e;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    .line 37
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 12

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v2}, Lcom/google/android/d/c/e;->a(Lcom/google/android/d/c/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 46
    iget-object v2, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v2}, Lcom/google/android/d/c/e;->b(Lcom/google/android/d/c/e;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 47
    iget-object v4, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v4}, Lcom/google/android/d/c/e;->b(Lcom/google/android/d/c/e;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 49
    const v6, 0xcb21

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v9}, Lcom/google/android/d/c/e;->c(Lcom/google/android/d/c/e;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v9}, Lcom/google/android/d/c/e;->d(Lcom/google/android/d/c/e;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v1}, Lcom/google/android/d/c/e;->e(Lcom/google/android/d/c/e;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v1}, Lcom/google/android/d/c/e;->f(Lcom/google/android/d/c/e;)J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 51
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v1}, Lcom/google/android/d/c/e;->a(Lcom/google/android/d/c/e;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 46
    iget-object v1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v1}, Lcom/google/android/d/c/e;->b(Lcom/google/android/d/c/e;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 47
    iget-object v1, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v1}, Lcom/google/android/d/c/e;->b(Lcom/google/android/d/c/e;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 49
    const v1, 0xcb21

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v10}, Lcom/google/android/d/c/e;->c(Lcom/google/android/d/c/e;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v10}, Lcom/google/android/d/c/e;->d(Lcom/google/android/d/c/e;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v3}, Lcom/google/android/d/c/e;->e(Lcom/google/android/d/c/e;)J

    move-result-wide v10

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/d/c/f;->a:Lcom/google/android/d/c/e;

    invoke-static {v3}, Lcom/google/android/d/c/e;->f(Lcom/google/android/d/c/e;)J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v1, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 51
    throw v0
.end method
