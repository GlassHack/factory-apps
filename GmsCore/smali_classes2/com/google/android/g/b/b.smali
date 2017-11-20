.class final Lcom/google/android/g/b/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/g/b/a;


# direct methods
.method public constructor <init>(Lcom/google/android/g/b/a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    .line 41
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 12

    .prologue
    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v2}, Lcom/google/android/g/b/a;->a(Lcom/google/android/g/b/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v2}, Lcom/google/android/g/b/a;->b(Lcom/google/android/g/b/a;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 51
    iget-object v4, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v4}, Lcom/google/android/g/b/a;->b(Lcom/google/android/g/b/a;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 53
    const v6, 0xcb21

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v9}, Lcom/google/android/g/b/a;->c(Lcom/google/android/g/b/a;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v9}, Lcom/google/android/g/b/a;->d(Lcom/google/android/g/b/a;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v1}, Lcom/google/android/g/b/a;->e(Lcom/google/android/g/b/a;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v1}, Lcom/google/android/g/b/a;->f(Lcom/google/android/g/b/a;)J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 55
    return-void

    .line 49
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v1}, Lcom/google/android/g/b/a;->a(Lcom/google/android/g/b/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 50
    iget-object v1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v1}, Lcom/google/android/g/b/a;->b(Lcom/google/android/g/b/a;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 51
    iget-object v1, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v1}, Lcom/google/android/g/b/a;->b(Lcom/google/android/g/b/a;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 53
    const v1, 0xcb21

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v10}, Lcom/google/android/g/b/a;->c(Lcom/google/android/g/b/a;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v10}, Lcom/google/android/g/b/a;->d(Lcom/google/android/g/b/a;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v3}, Lcom/google/android/g/b/a;->e(Lcom/google/android/g/b/a;)J

    move-result-wide v10

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/g/b/b;->a:Lcom/google/android/g/b/a;

    invoke-static {v3}, Lcom/google/android/g/b/a;->f(Lcom/google/android/g/b/a;)J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v1, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 55
    throw v0
.end method
