.class final Lcom/google/android/gms/gcm/nts/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/google/android/gms/gcm/nts/r;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private c:Ljava/util/List;

.field private final d:Ljava/util/Map;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GHC_WAKE_UP"

    aput-object v2, v1, v0

    const-string v2, "GCM_UPSTREAM"

    aput-object v2, v1, v4

    const-string v2, "GCM_HEARTBEAT"

    aput-object v2, v1, v5

    const-string v2, "GCM_DOWNSTREAM"

    aput-object v2, v1, v6

    const-string v2, "EXECUTIONS"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "UNIQUE_EXECUTIONS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SCHEDULER_UPTIME_MILLIS"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/gms/gcm/nts/r;->a:[Ljava/lang/String;

    .line 59
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "successes"

    aput-object v2, v1, v0

    const-string v2, "reschedules"

    aput-object v2, v1, v4

    const-string v2, "failures"

    aput-object v2, v1, v5

    const-string v2, "timeouts"

    aput-object v2, v1, v6

    const-string v2, "invalid_service"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "total_runtime_secs"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/gms/gcm/nts/r;->b:[Ljava/lang/String;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/gcm/nts/r;->e:J

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/r;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/gcm/nts/r;->c:Ljava/util/List;

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/r;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/r;->c:Ljava/util/List;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/r;->d:Ljava/util/Map;

    .line 83
    return-void
.end method

.method static a()Lcom/google/android/gms/gcm/nts/r;
    .locals 2

    .prologue
    .line 86
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/nts/r;->f:Lcom/google/android/gms/gcm/nts/r;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/gms/gcm/nts/r;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/nts/r;->f:Lcom/google/android/gms/gcm/nts/r;

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-object v0, Lcom/google/android/gms/gcm/nts/r;->f:Lcom/google/android/gms/gcm/nts/r;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/r;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    if-nez v0, :cond_1

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/r;->b:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/r;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 140
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/r;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 144
    :cond_1
    return-object v0
.end method

.method static a(I)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/nts/r;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 103
    return-void
.end method

.method static a(J)V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/nts/r;->c:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 114
    return-void
.end method

.method static a(Lcom/google/android/gms/gcm/nts/k;I)V
    .locals 3

    .prologue
    .line 127
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/nts/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/gms/gcm/nts/k;)V
    .locals 6

    .prologue
    .line 199
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-wide v2, p1, Lcom/google/android/gms/gcm/nts/k;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 201
    const-string v0, "Not yet run."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    :goto_0
    monitor-exit v1

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Last executed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/gcm/nts/k;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s ago."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 118
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/gcm/nts/r;->a()Lcom/google/android/gms/gcm/nts/r;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 184
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nRunning for the last "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/nts/r;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/r;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/r;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/r;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 166
    sget-object v2, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/r;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v0, "No stats recorded."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :goto_0
    monitor-exit v2

    return-void

    .line 171
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/r;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/r;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method final b()J
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/nts/r;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final c()Ljava/util/List;
    .locals 3

    .prologue
    .line 160
    sget-object v1, Lcom/google/android/gms/gcm/nts/r;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/r;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
