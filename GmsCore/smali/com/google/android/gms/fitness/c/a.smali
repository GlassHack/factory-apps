.class public final Lcom/google/android/gms/fitness/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static b:Lcom/google/android/gms/analytics/bo;

.field private static final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    .line 314
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/c/a;->c:D

    return-void
.end method

.method private static synthetic a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(IJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "Data store aggregation pass over %d data points in %d ms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/c;

    invoke-direct {v1, v6}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v2, "data_store_aggregator"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/fitness/c/c;->a(I)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/c/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(JIIIIII)V
    .locals 8

    .prologue
    .line 169
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "Sync completed in %d ms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/c/b;-><init>(B)V

    const-string v2, "fitness_sync_adapter"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/b;->d(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/b;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/fitness/c/b;->a(J)Lcom/google/android/gms/analytics/ax;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v6, Lcom/google/android/gms/fitness/c/a;->c:D

    div-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/b;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ax;

    const/4 v2, 0x3

    invoke-static {p2}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/4 v2, 0x4

    invoke-static {p3}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/4 v2, 0x5

    invoke-static {p4}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/4 v2, 0x6

    invoke-static {p5}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/4 v2, 0x7

    invoke-static {p6}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/16 v2, 0x8

    invoke-static {p7}, Lcom/google/android/gms/fitness/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/c/b;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/c/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    .line 189
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v2, "fitness_sync_adapter"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/c/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 39
    const-class v1, Lcom/google/android/gms/fitness/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    monitor-exit v1

    return-void

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ar:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/ap;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/bo;

    move-result-object v2

    .line 44
    sput-object v2, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->as:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/bo;->a(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/google/android/gms/fitness/b/t;JJJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "Transformed %s from %2$tF %2$tT to %3$tF %3$tT in %4$d ms"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/c;

    invoke-direct {v1, v6}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v2, "transformation"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/c/c;->a(JJ)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ba;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSource;JJJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "Read %s from %2$tF %2$tT to %3$tF %3$tT in %4$d ms"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/c;

    invoke-direct {v1, v6}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v2, "data_source_query"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/c/c;->a(JJ)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ba;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 54
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "%s latency is %d ms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    sget-object v0, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v1, Lcom/google/android/gms/fitness/c/c;

    invoke-direct {v1, v6}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v2, "api_latency"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/fitness/c/c;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ba;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 135
    sget-wide v0, Lcom/google/android/gms/fitness/c/a;->a:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_1
    const-string v0, ", "

    new-instance v2, Lcom/google/android/gms/common/internal/af;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/internal/af;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/common/internal/af;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "Read %d data points for data types %s in %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    sget-object v1, Lcom/google/android/gms/fitness/c/a;->b:Lcom/google/android/gms/analytics/bo;

    new-instance v2, Lcom/google/android/gms/fitness/c/c;

    invoke-direct {v2, v6}, Lcom/google/android/gms/fitness/c/c;-><init>(B)V

    const-string v3, "read_bulk_query"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/c/c;->e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/google/android/gms/fitness/c/c;->b(J)Lcom/google/android/gms/fitness/c/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/c/c;->a(I)Lcom/google/android/gms/fitness/c/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/c/c;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ba;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
